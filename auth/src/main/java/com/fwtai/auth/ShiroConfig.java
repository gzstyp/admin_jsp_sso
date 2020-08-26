package com.fwtai.auth;

import com.fwtai.config.ConfigFile;
import com.fwtai.service.web.UserService;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * 安全管理器Shiro权限配置,主要是初始化Realm，注册Filter，定义filterChain
 * @作者 田应平
 * @版本 v1.0
 * @创建时间 2020-02-16 2:01
 * @QQ号码 444141300
 * @Email service@yinlz.com
 * @官网 <url>http://www.yinlz.com</url>
*/
@SpringBootConfiguration
public class ShiroConfig{

    @Resource
    private UserService userService;

    //1.创建 Realm 对象
    @Bean
    public AuthRealm getAuthRealm(){
        return new AuthRealm();
    }

    //2.创建安全管理器
    @Bean
    public SecurityManager getSecurityManager(final AuthRealm authRealm){
        final DefaultWebSecurityManager manager = new DefaultWebSecurityManager(authRealm);// 或 manager.setRealm(authRealm);
        manager.setSessionManager(getDefaultWebSessionManager());
        return manager;
    }

    //3.配置shiro的过滤器工厂,功能:shiro在进行权限控制时是通过一组过滤器集合进行控制的,拦截及页面跳转
    @Bean
    public ShiroFilterFactoryBean getShiroFilterFactoryBean(final SecurityManager manager){
        //(1).创建过滤工厂
        final ShiroFilterFactoryBean filter = new ShiroFilterFactoryBean();
        //(2).设置安全管理器,必须设置 SecurityManager
        filter.setSecurityManager(manager);
        //(3).通用配置(拦截及登录页面跳转的url)
        filter.setLoginUrl(ConfigFile.LOGIN_PAGE);// setLoginUrl 如果不设置值，默认会自动寻找Web工程根目录下的"src\main\webapp\login.jsp"页面
        filter.setSuccessUrl("/main");//登录成功执行的url
        //(4).设置过滤集合,必须是有顺序的map,其中 key 就是拦截的url地址,value就是过滤器类型{类型有:anon;authc;logout;user;perms[用户名];roles[角色名]}
        final Map<String,String> maps = new LinkedHashMap<>();
        final List<HashMap<String,String>> permissions = userService.queryPermissions();
        final Iterator<HashMap<String,String>> iterator = permissions.iterator();
        while(iterator.hasNext()){
            final HashMap<String,String> permission = iterator.next();
            maps.put(permission.get("url"),permission.get("permission"));
        }
        filter.setFilterChainDefinitionMap(maps);
        return filter;
    }

    //4.开启对shiro注解的支持,开启Shiro的注解(如@RequiresRoles,@RequiresPermissions),需借助SpringAOP扫描使用Shiro注解的类,并在必要时进行安全逻辑验证
    @Bean
    public AuthorizationAttributeSourceAdvisor getAuthorization(final SecurityManager manager){
        final AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
        advisor.setSecurityManager(manager);
        return advisor;
    }

    @Bean
    public DefaultWebSessionManager getDefaultWebSessionManager(){
        final DefaultWebSessionManager defaultWebSessionManager = new DefaultWebSessionManager();
        defaultWebSessionManager.setGlobalSessionTimeout(60 * 1000 * 45);//45分钟过期时间,默认是 60 * 1000 * 30
        defaultWebSessionManager.setSessionIdCookieEnabled(true);//否允许将sessionId 放到 cookie 中
        defaultWebSessionManager.setSessionIdUrlRewritingEnabled(false);//是否允许将 sessionId 放到 Url 地址拦中
        return defaultWebSessionManager;
    }
}