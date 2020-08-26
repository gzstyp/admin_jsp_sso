<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>服务管理平台</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <!--[if !IE]> -->
    <link rel="stylesheet" href="/css/pace.css"/>
    <script data-pace-options='{ "ajax": true, "document": true, "eventLag": false, "elements": false }' src="/js/pace.js"></script>
    <!-- <![endif]-->
    <link rel="stylesheet" href="/css/bootstrap.css"/>
    <link rel="stylesheet" href="/css/font-awesome.min.css"/>
    <!-- text fonts -->
    <link rel="stylesheet" href="/css/ace-fonts.css"/>
    <!-- ace styles -->
    <link rel="stylesheet" href="/css/ace.css" class="ace-main-stylesheet" id="main-ace-style"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/css/ace-part2.css" class="ace-main-stylesheet"/>
    <![endif]-->
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/css/ace-ie.css"/>
    <![endif]-->
    <script src="/js/ace-extra.js"></script>
    <!--[if lte IE 8]>
    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="/js/checkbox/checkbox-radio.css" />
    <link rel="stylesheet" type="text/css" href="/js/zTree/css/bootstrapztree.css"/>
</head>
<body class="no-skin">
<div id="navbar" class="navbar navbar-default ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" title="显示导航菜单" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">显示导航菜单</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="navbar-header pull-left">
            <a href="javascript:;" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    云学府智慧校园
                </small>
            </a>
        </div>
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue2">
                    <a data-toggle="dropdown" href="javascript:;" class="dropdown-toggle">
                        <img class="nav-user-photo light-blue" src="/avatars/avatar.png" alt="欢迎登录"/>
                        <span class="user-info"><small>欢迎</small>${login_user}</span>
                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>
                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="javascript:;">
                                <i class="ace-icon fa fa-cog"></i>
                                设置
                            </a>
                        </li>
                        <li>
                            <a data-url="profile.html" href="#profile.html">
                                <i class="ace-icon fa fa-user"></i>
                                配置
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="login.html">
                                <i class="ace-icon fa fa-power-off"></i>
                                退出
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="main-container" id="main-container">
    <div id="sidebar" class="sidebar responsive ace-save-state">
        <ul class="nav nav-list" id="ulMenus">
            <li class=""><a data-url="welcome.html" href="#welcome.html"><i class="menu-icon glyphicon glyphicon-home"></i><span class="menu-text">欢迎使用</span></a><b class="arrow"></b></li>
            ${menuData}
        </ul>
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse" title="展开收缩">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">欢迎使用</ul>
            </div>
            <div class="page-content">
                <div class="page-content-area" data-ajax-content="true"></div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
                <span class="bigger-120">
                    <span class="blue">2018-2028 © 版权所有</span>
                    贵州富翁泰科技有限责任公司
                </span>
                &nbsp; &nbsp;
                <span class="action-buttons">
                    <a href="https://wpa.qq.com/msgrd?v=3&uin=444141300&site=www.yinlz.com&menu=yes" target="_blank" title="联系我们">
                        <i class="fa fa-comment light-blue bigger-150"></i>
                    </a>
                    <a href="javascript:;" title="云端服务">
                        <i class="fa fa-cloud text-primary bigger-150"></i>
                    </a>
                    <a href="mailto:444141300@qq.com" target="_blank" title="电子邮箱">
                        <i class="fa fa-envelope-o orange bigger-150"></i>
                    </a>
                </span>
            </div>
        </div>
    </div>
    <a href="javascript:;" title="返回顶部" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div>
<!--[if !IE]> -->
<script src="/js/jquery.js"></script>
<!-- <![endif]-->
<!--[if IE]>
<script src="/js/jquery-1.12.4.min.js"></script>
<![endif]-->
<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='/js/jquery.mobile.custom.js'>" + "<" + "/script>");
</script>
<script src="/js/jquery.placeholder.min.js"></script>
<script src="/js/bootstrap.js"></script>
<!-- ace scripts -->
<script src="/js/ace/elements.scroller.js"></script>
<script src="/js/ace/elements.fileinput.js"></script>
<script src="/js/ace/elements.typeahead.js"></script>
<script src="/js/ace/elements.wysiwyg.js"></script>
<%--<script src="/js/ace/elements.spinner.js"></script>--%>
<script src="/js/ace/elements.wizard.js"></script>
<script src="/js/ace/elements.aside.js"></script>
<script src="/js/ace/ace.js"></script>
<script src="/js/ace/ace.ajax-content.js"></script>
<script src="/js/ace/ace.touch-drag.js"></script>
<script src="/js/ace/ace.sidebar.js"></script>
<script src="/js/ace/ace.sidebar-scroll-1.js"></script>
<script src="/js/ace/ace.submenu-hover.js"></script>
<script src="/js/ace/ace.widget-box.js"></script>
<%--<script src="/js/ace/ace.settings.js"></script>
<script src="/js/ace/ace.settings-rtl.js"></script>
<script src="/js/ace/ace.settings-skin.js"></script>--%>
<script src="/js/ace/ace.widget-on-reload.js"></script>
<script src="/js/zTree/js/jquery.ztree.core.js"></script>
<script src="/js/zTree/js/jquery.ztree.excheck.js"></script>

<script src="/js/dataTables/jquery.dataTables.js"></script>
<script src="/js/dataTables/jquery.dataTables.bootstrap.js"></script>
<script src="/js/dataTables/extensions/Buttons/js/dataTables.buttons.js"></script>
<script src="/js/dataTables/extensions/Buttons/js/buttons.flash.js"></script>
<script src="/js/dataTables/extensions/Buttons/js/buttons.html5.js"></script>
<script src="/js/dataTables/extensions/Buttons/js/buttons.print.js"></script>
<script src="/js/dataTables/extensions/Select/js/dataTables.select.js"></script>
<script src="/js/checkbox/jquery-checkbox-radio.js"></script>

<script src="/js/ace/ace.searchbox-autocomplete.js"></script>
<script src="/js/layer/layer.js"></script>
<script src="/js/page.common.js"></script>
<script src="/js/main.js"></script>
<script src="/js/dataTables/datatable.lib.js"></script>
</body>
</html>