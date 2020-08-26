package com.fwtai.web;

import com.fwtai.config.ConfigFile;
import com.fwtai.service.web.MenuService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 页面跳转,方法上或类上不能还有final关键字
 * @作者 田应平
 * @版本 v1.0
 * @创建时间 2020-02-28 1:46
 * @QQ号码 444141300
 * @Email service@yinlz.com
 * @官网 <url>http://www.yinlz.com</url>
*/
@Controller
public class PageController{

    @Resource
    private MenuService menuService;

    @RequiresPermissions("page:main")
    @GetMapping(value = "main",name = "page:main")
    public ModelAndView main(final HttpServletRequest request){
        final ModelAndView modeView = new ModelAndView();
        final String userId = (String) request.getSession().getAttribute(ConfigFile.LOGIN_KEY);
        final String data = menuService.getMenuData(userId);
        modeView.addObject("menuData",data);
        modeView.setViewName("main");
        return modeView;
    }

    @RequiresPermissions("page:sys_menu")
    @GetMapping(value = "sys_menu",name = "page:sys_menu")
    public String sysMenu(){
        return "sys_menu";
    }

    @RequiresPermissions("page:sys_user")
    @GetMapping(value = "sys_user",name = "page:sys_user")
    public String sysUser(){
        return "sys_user";
    }

    @RequiresPermissions("page:sys_role")
    @GetMapping(value = "sys_role",name = "page:sys_role")
    public String sysRole(){
        return "sys_role";
    }
}