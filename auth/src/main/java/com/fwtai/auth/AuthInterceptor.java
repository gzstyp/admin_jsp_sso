package com.fwtai.auth;

import com.fwtai.config.ConfigFile;
import com.fwtai.tool.ToolClient;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.resource.ResourceHttpRequestHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/**
 * 菜单|权限拦截器[认证和权限拦截应该分开,各执其职]
 * @作者 田应平
 * @版本 v1.0
 * @创建时间 2020-02-23 18:22
 * @QQ号码 444141300
 * @Email service@yinlz.com
 * @官网 <url>http://www.yinlz.com</url>
*/
public final class AuthInterceptor implements HandlerInterceptor{

    @Override
    public boolean preHandle(final HttpServletRequest request,final HttpServletResponse response,final Object handler) throws Exception{
        if(handler instanceof ResourceHttpRequestHandler){return true;}
        final String userId = (String)request.getSession().getAttribute(ConfigFile.LOGIN_KEY);
        if(userId == null){
            response.sendRedirect(request.getContextPath() + "/"+ConfigFile.LOGIN_PAGE);
            return false;
        }
        final String uri = request.getRequestURI().substring(1);
        if(uri.contains("notAuthorized")){
            return true;
        }
        if(handler instanceof HandlerMethod){
            final RequestMapping annotation = ((HandlerMethod)handler).getMethodAnnotation(RequestMapping.class);
            final String name = annotation.name();
            if(name.contains("notAuthorized")){
                return true;
            }
            final Subject subject = SecurityUtils.getSubject();
            final HashMap<String,Object> permissionRoles = (HashMap<String,Object>) subject.getPrincipals().getPrimaryPrincipal();
            final List<HashMap<String,String>> listPermission = (List<HashMap<String,String>>) permissionRoles.get(ConfigFile.PERMISSIONS);
            final Iterator<HashMap<String,String>> iterator = listPermission.iterator();
            boolean bl = false;
            while(iterator.hasNext()){
                final HashMap<String,String> map = iterator.next();
                if(map != null && map.size() > 0){
                    final String url = map.get("url");
                    if(url.equals(uri)){
                        bl = true;
                        break;
                    }
                }
            }
            if(!bl){
                if(uri.equals("main")){
                    main(response);
                    return bl;
                }else{
                    response(response);
                    return bl;
                }
            }
            return bl;
        }else{
            response(response);
            return false;
        }
    }

    @Override
    public void afterCompletion(final HttpServletRequest request,final HttpServletResponse response,final Object handler,final Exception exception) throws Exception{
    }

    private final void response(final HttpServletResponse response){
        ToolClient.responseJson(ToolClient.notAuthorized(),response);
    }

    private final void main(final HttpServletResponse response){
        final String html = "<!doctype html><html><head><meta charset=\"UTF-8\"><title>云学府智慧校园管理平台</title><meta name=\"keywords\" content=\"引路者,引领者,404,网址服务,短网址,找不到网页对象,url网址,URL引路服务,URL服务,网址跳转,uri,链接\"/><meta name=\"description\" content=\"引路者，仅为url网址指引道路服务,为个人、商家、企业打造一款网址云服务产品。一个可编辑可管理永久免费使用的url网址引路服务平台。让url网址永不出现404永无找不到网页对象永无找不到服务器\"/><meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0\"><style type=\"text/css\">*{margin:0;padding:0;font-family:\"微软雅黑\", Arial, Helvetica, sans-serif;font-size:14px;}.foot{background:#eee;color:#a5a4a4;height:60px;line-height:60px;text-align:center;vertical-align:center;width:100%;}.container{min-height:891px;padding:3px 0px;}.row{width:100%;height:40px;line-height:40px;text-align:center;background-color:#eee;}.middle{margin:2px 0px;}a{text-decoration:none;outline:none;color:#1e9fff;}</style><script type=\"text/javascript\"> var time = 8;function count(){var fun = setTimeout('count()', 1000);rest.innerHTML = time;time--;if(time == 0){window.clearInterval(fun);window.location.href = '/login.html';}}</script></head><body onLoad=\"window.setTimeout('count()',1);\"><div class=\"container\"><div class=\"row\">无操作权限</div><div class=\"row middle\">你可以免费使用<a href='http://www.yinlz.com' target='_blank' title='立即跳转'>URL引路者服务平台</a></div><div class=\"row\"><img src='data:image/gif;base64,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' style='border:none;vertical-align:middle;' height='16' width='16' alt='正在加载……'/>系统将在<span id='rest' style='color:#F00'></span>秒后自动返回<a href='/login.html' title='立即跳转'>登录</a></div></div><div class=\"foot\"><p>版权 引路者服务平台 黔ICP备14005277号-3</p></div></body></html>";
        ToolClient.responseObj(html,response);
    }
}