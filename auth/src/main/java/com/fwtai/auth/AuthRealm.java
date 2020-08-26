package com.fwtai.auth;

import com.fwtai.config.ConfigFile;
import com.fwtai.entity.User;
import com.fwtai.service.web.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/**
 * 自定义shiro框架Realm对象,此处的类不需要任何注解,若想在拦截器里修改权限的话可以使用更新权限动态更新功能???
 * @作者 田应平
 * @版本 v1.0
 * @创建时间 2020-02-15 23:15
 * @QQ号码 444141300
 * @Email service@yinlz.com
 * @官网 <url>http://www.yinlz.com</url>
*/
public class AuthRealm extends AuthorizingRealm{

    @Resource
    private UserService userService;

    /**
     * 认证登录
     * @param
     * @作者 田应平
     * @QQ 444141300
     * @创建时间 2020/3/1 4:05
    */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(final AuthenticationToken authenticationToken) throws AuthenticationException{
        final UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        final String username = token.getUsername();
        final String password = new String(token.getPassword());
        final HashMap<String,String> params = new HashMap<>(2);
        params.put("username",username);
        params.put("password",password);
        final User user = userService.queryLogin(params);
        if(user == null){
            userService.updateErrors(username);
            final User inexistence = userService.queryUser(username);
            if(inexistence != null){
                if(inexistence.getError() < 0){
                    throw new ExcessiveAttemptsException("当前帐号的密码连续错误3次<br/>已被系统临时锁定<br/>请在"+inexistence.getErrorTime()+"后重新登录");
                }
                if (inexistence.getErrorCount() >= 3){
                    userService.updateLoginTime(username);/*当错误3次时更新错误的时刻就锁定*/
                    throw new ExcessiveAttemptsException("当前帐号的密码连续错误3次<br/>已被系统临时锁定,请30分钟后重试");
                }
            }
            throw new UnknownAccountException("用户名或密码错误");
        }
        if(user.getError() < 0){
            throw new ExcessiveAttemptsException("当前帐号的密码连续错误3次<br/>已被系统临时锁定<br/>请在"+user.getErrorTime()+"后重新登录");
        }
        if(user.getEnabled() == 1){
            throw new UnknownAccountException("账号已被禁用冻结");
        }
        final HashMap<String,Object> map = new HashMap<String,Object>(3);
        final String userId = user.getKid();
        map.put(ConfigFile.LOGIN_KEY,userId);
        map.put(ConfigFile.PERMISSIONS,userService.getPermissions(userId));
        map.put(ConfigFile.ROLES,userService.getRoles(userId));
        //map 是安全身份信息数据
        return new SimpleAuthenticationInfo(map,password,"authRealm");//如果报错 AuthenticationException 请注意 password 是否需要加密
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(final PrincipalCollection principal){
        final HashMap<String,Object> permissionRoles = (HashMap<String,Object>)principal.getPrimaryPrincipal();//principal 是安全身份信息数据,就是SimpleAuthenticationInfo的第一个参数的数据
        final List<String> primarys = new ArrayList<>();
        final List<HashMap<String,String>> listPermission = (List<HashMap<String,String>>) permissionRoles.get(ConfigFile.PERMISSIONS);
        final List<String> listRole = (List<String>) permissionRoles.get(ConfigFile.ROLES);
        final Iterator<HashMap<String,String>> iterator = listPermission.iterator();
        while(iterator.hasNext()){
            final HashMap<String,String> map = iterator.next();
            if(map != null && map.size() > 0){
                primarys.add(map.get("permission"));
            }
        }
        final SimpleAuthorizationInfo infos = new SimpleAuthorizationInfo();
        infos.addStringPermissions(primarys);
        infos.addRoles(listRole);
        return infos;
    }
}