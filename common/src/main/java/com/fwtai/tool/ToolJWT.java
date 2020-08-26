package com.fwtai.tool;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import sun.misc.BASE64Decoder;

import java.io.Serializable;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Date;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 * jwt(JSON Web Token)令牌工具类,非对称作为密钥
 * @作者 田应平
 * @版本 v1.0
 * @创建时间 2020-02-12 23:53
 * @QQ号码 444141300
 * @Email service@yinlz.com
 * @官网 <url>http://www.yinlz.com</url>
*/
public final class ToolJWT implements Serializable{

    //如设置Token过期时间15分钟，建议更换时间设置为Token前5分钟,通过try catch 获取过期
    private final static long access_token = 1000 * 60 * 45;//当 refresh_token 已过期了，再判断 access_token 是否已过期,

    /**一般更换新的access_token小于5分钟则提示需要更换新的access_token*/
    private final static long refresh_token = 1000 * 60 * 40;//仅做token的是否需要更换新的access_token标识,小于5分钟则提示需要更换新的access_token

    private final static String issuer = "贵州富翁泰科技有限责任公司";//jwt签发者

    /**2048的密钥位的公钥*/
    private final static String publicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkWsnQxAeD8VNI1YsHnCCO1BlN1a9NBY/OybHr87zrlkm1aLjYIwWJHNqanGNY2ltKLNjdsgR9jseLIwUFR97PkXSwsOkn1ruSRTgDU7csvXukGrouQ+UX5eHZmoajRdHdbc1s91f3TZK3SFGpWpdqutcZaq3WhiPvluH0gjoIrK89VHzYUVVzwSUCLTZViEsBTZKL8q46GyBvr0WwFmY80LRS99wr5BsLhfYew8C5koKXWeX9sYVxRpg7V2ZdrXOWaJb8y00VmeQAieKEGVRY0CVWKRxodVQqEA0PPLU1kZnG4mwMHMwa1B9X+aAfHVD2tX0f9P1NjowD0/GZf84qQIDAQAB";
    /**2048的密钥位的私钥*/
    private final static String privateKey = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCRaydDEB4PxU0jViwecII7UGU3Vr00Fj87JsevzvOuWSbVouNgjBYkc2pqcY1jaW0os2N2yBH2Ox4sjBQVH3s+RdLCw6SfWu5JFOANTtyy9e6Qaui5D5Rfl4dmahqNF0d1tzWz3V/dNkrdIUalal2q61xlqrdaGI++W4fSCOgisrz1UfNhRVXPBJQItNlWISwFNkovyrjobIG+vRbAWZjzQtFL33CvkGwuF9h7DwLmSgpdZ5f2xhXFGmDtXZl2tc5ZolvzLTRWZ5ACJ4oQZVFjQJVYpHGh1VCoQDQ88tTWRmcbibAwczBrUH1f5oB8dUPa1fR/0/U2OjAPT8Zl/zipAgMBAAECggEAeQPuQY4JJmCwSAbvYkmI52mJQdtKSy10Y3prVXBpNB93BPSwOml6B82QspJa8m8K64MV9ASdhgc+nh3YnJd9TZ53vaNovUDD6keYCRsm6Ttm1AJUN6WyeTa19FG6VM4ZpunXpB5HJ+WFua52hzQUTSfe1bCTM0QbY3PyfKTy4eQRWtvmPQVWwHrndxb+J+PlRlUranujnaBkCwf70okPdJLc7xTeUvAslF6Nhli8gRPV2sylz/04tO8dT9kJyd9UEomCT4qI3fba7Gicw4C7kLfjrRYu9KaNd3vrb+9IR7Cs3dR0lRfoHZLrlMBS1LPG0cL8qJjiaGzLoYjDqEQ7nQKBgQDMOmCAkctMgbPi5JL2C/e1yUvAmR2QtQOEdza47jXKeqXxTxeyvfDvp4AgSm08TTWfK8kg0Wa4MJvLP8VSo6PUiLlQfvsM4ZNIpr0oXp8SZpJomGK4MSdc326QEUzSNnClQICc8v+aAJpP8kyCLhLtpQUEkTaXoFlZZjVKtLoG9wKBgQC2SEP8QKmU8PzvOPiZaI8xFSWyGmj97lzsRX4GsMHqX5L37TAlb4P0T62gWaVabGk/O4oehbp/sv8G7+dcarN4JxeTcx8qWaOJtWsZVmye4FnCEE/JfUVUY6K4t2HVz9qK2t1t7/7P4I5lYX3jai7k3BMZrnX12VyCFaNtLca1XwKBgQDJ+/6PiiJIY4s3HxveLw3qA9FhBc6A3RZCf+lmU2pt/Il8tN3aURMm40HMLfAFkNM0vohoZdIy3xhml4af6epRfHvTihLftYYGd6pjb9nhyAKLYhNY2nx01SIzaHjS+zbDqZzKHWcAuBHmedyDb/AWi3v//WLB6bwUuAqC/WVzFwKBgA2g8ZRWsVc1fXPVaqDttGcTEbJzTw5NWB1CRN3zMUx4wOBQl5z07YTCwFSQ31AXcvcLWJRXo04Q8Ahwv3elcq21HoojvVzJPvT4330RfSWT2KIt3glOmHRqzqvI6kO2OrzPCGdD3mVkgMELvQHX2pG58qOk66TqD4SaYZG0Lns5AoGACzIVew8t0+TH34RMbcdd9WWIDX7+DWJyVKLgI5OHPIA7TV1EhLJjjMW1un5/EzBU4IoNCUncZzcMC6JpMApshvVgsbN4a06EaFyxE5QLjZhnU2TJ8V0lzQuugTv8paSNyXZ7/sqt36mVsWy7b8h/LrF8+RaXJCFt2eV9zXQy07c=";

    /**java生成的私钥是pkcs8格式的公钥是x.509格式*/
    private final static PublicKey getPublicKey(){
        try {
            final byte[] keyBytes = (new BASE64Decoder()).decodeBuffer(publicKey);
            final X509EncodedKeySpec keySpec = new X509EncodedKeySpec(keyBytes);
            final KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            final PublicKey publicKey = keyFactory.generatePublic(keySpec);
            return publicKey;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private final static PrivateKey getPrivateKey(){
        try {
            final byte[] keyBytes = (new BASE64Decoder()).decodeBuffer(privateKey);
            final PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(keyBytes);
            final KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            final PrivateKey privateKey = keyFactory.generatePrivate(keySpec);
            return privateKey;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    // setSubject 不能和s etClaims() 同时使用,如果用不到 userId() 的话可以把setId的值设为 userName !!!
    private final static String createToken(final String userId,final Object value,final long expiryDate){
        final ExecutorService threadPool = Executors.newCachedThreadPool();
        final Future<String> future = threadPool.submit(new Callable<String>(){
            @Override
            public String call() throws Exception{
                final Date date = new Date();
                final JwtBuilder builder = Jwts.builder().setIssuer(issuer).signWith(SignatureAlgorithm.RS384,getPrivateKey()).setId(userId).setIssuedAt(date).claim(userId,value).setExpiration(new Date(date.getTime() + expiryDate));
                return builder.compact();
            }
        });
        try {
            return future.get();
        } catch (Exception e) {
            threadPool.shutdown();
            return null;
        }
    }

    public final static Claims parser(final String token){
        return Jwts.parser().requireIssuer(issuer).setSigningKey(getPublicKey()).parseClaimsJws(token).getBody();
    }

    /**
     * 验证token是否已失效,返回true已失效,否则有效
     * @param token
     * @作者 田应平
     * @QQ 444141300
     * @创建时间 2020年2月24日 16:19:00
    */
    public final static boolean tokenExpired(final String token) {
        try {
            return parser(token).getExpiration().before(new Date());
        } catch (final ExpiredJwtException exp) {
            return true;
        }
    }

    /**仅作为是否需要刷新的access_token标识,不做任何业务处理*/
    public final static String expireRefreshToken(final String userId){
        return createToken(userId,null,refresh_token);
    }

    /**生成带认证实体且有权限的token,最后个参数是含List<String>的角色信息,*/
    public final static String expireAccessToken(final String userId,final Object value){
        return createToken(userId,value,access_token);
    }
}