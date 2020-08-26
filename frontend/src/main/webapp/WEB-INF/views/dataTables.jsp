<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->
        <div class="row">
            <div class="col-xs-12">
                <div class="clearfix">
                    <table class="no-border" style="display:inline">
                        <tr>
                            <td style="padding: 0px 6px;">菜单类型</td>
                            <td>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle">
                                        <span id="menuShow">选择类型</span>
                                        <i class="ace-icon fa fa-angle-down"></i>
                                    </button>
                                    <ul class="dropdown-menu" style="width:99px;min-width:90px;">
                                        <li>
                                            <a href="javascript:;" id="choiceType">选择类型</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" id="choiceNav">导航菜单</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" id="choiceBtn">普通按钮</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" id="choiceRow">行内按钮</a>
                                        </li>
                                    </ul>
                                    <input id="type" type="hidden">
                                </div>
                            </td>
                            <td style="padding: 0px 6px;">
                                菜单名称
                            </td>
                            <td>
                                <div class="input-group">
                                    <input type="text" id="name" class="form-control search-query" placeholder="菜单名称" />
                                    <shiro:hasPermission name="menu:getList">
                                        <%--页面显示控制及js控制--%>
                                    </shiro:hasPermission>
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-inverse btn-white" id="btnSearch">
                                            <span class="ace-icon fa fa-search bigger-110"></span>
                                            搜索
                                        </button>
                                    </span>
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                    <shiro:hasPermission name="menu:btnAdd">
                                        <%--页面显示控制及js控制--%>
                                    </shiro:hasPermission>
                                        <span class="input-group-btn">
                                        <button type="button" class="btn btn-inverse btn-white" id="btnAdd">
                                            <span class="ace-icon glyphicon glyphicon-plus bigger-110"></span>
                                            添加
                                        </button>
                                    </span>
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-inverse btn-white" id="btnDel">
                                            <span class="ace-icon glyphicon glyphicon-remove bigger-110"></span>
                                            删除
                                        </button>
                                    </span>
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-inverse btn-white" id="btnEdit">
                                            <span class="ace-icon fa fa-pencil-square-o bigger-110"></span>
                                            编辑
                                        </button>
                                    </span>
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-inverse btn-white" id="btnHide">
                                            <span class="ace-icon fa fa-pencil-square-o bigger-110"></span>
                                            隐藏
                                        </button>
                                    </span>
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-inverse btn-white" id="btnHideRow">
                                            <span class="ace-icon fa fa-pencil-square-o bigger-110"></span>
                                            隐藏某列
                                        </button>
                                    </span>
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-inverse btn-white" id="btnShowRow">
                                            <span class="ace-icon fa fa-pencil-square-o bigger-110"></span>
                                            显示某列
                                        </button>
                                    </span>
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-inverse btn-white" id="btnColumns">
                                            <span class="fa fa-random bigger-110"></span>
                                            显示列
                                        </button>
                                    </span>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="pull-right tableTools-container"></div>
                </div>
                <table id="dynamic-table" class="table table-striped table-bordered table-hover"></table>
            </div>
        </div>
        <!-- PAGE CONTENT ENDS -->
    </div>
</div>
<div id="div_menu_edit" style="display:none;padding-top:6px;">
    <form class="form-horizontal" role="form">
        <label class="col-sm-3 control-label no-padding-right" for="userName">登录账号</label>
        <div class="col-sm-7">
            <input type="text" id="userName" placeholder="登录账号" class="form-control" />
        </div>
        <label class="col-sm-3 control-label no-padding-right" for="password">登录密码</label>
        <div class="col-sm-7">
            <input type="text" id="password" placeholder="登录密码" class="form-control" />
        </div>
        <label class="col-sm-3 control-label no-padding-right" for="password">重复密码</label>
        <div class="col-sm-7">
            <input type="text" id="repassword" placeholder="重复密码" class="form-control" />
        </div>
        <label class="col-sm-3 control-label no-padding-right">选择菜单</label>
        <div class="col-sm-7">
            <ul id="treeDom" class="ztree"></ul>
        </div>
        <label class="col-sm-3 control-label no-padding-right">菜单类型</label>
        <div class="col-sm-7">
            <button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle">
                <span id="menudShow">选择类型</span>
                <i class="ace-icon fa fa-angle-down"></i>
            </button>
            <ul class="dropdown-menu" style="width:99px;min-width:90px;margin-left:4px">
                <li>
                    <a href="javascript:;">选择类型</a>
                </li>
                <li>
                    <a href="javascript:;">导航菜单</a>
                </li>
                <li>
                    <a href="javascript:;">普通按钮</a>
                </li>
                <li>
                    <a href="javascript:;">行内按钮</a>
                </li>
            </ul>
        </div>
    </form>
</div>
<div id="divKeyMenuField" style="display:none;padding:1px 0px;"></div>
<div id="divKeyColumns" style="display:none;padding:1px 0px;"></div>
<script type="text/javascript">
    var scripts = [null,null];
    $('.page-content-area').ace_ajax('loadScripts',scripts,function(){
        var tableDom = '#dynamic-table';
        jQuery(function($){
            var urlRoute = '/menu/';/*请求controller层的url*/
            var thisTable = pageDataTable.initDataTable({
                tableDom : tableDom,
                sAjaxSource: urlRoute + "listData",
                fnServerParams : function(params){
                    params.push({"name":"name","value":$("#name").val()},{"name":"type","value":$("#type").val()});
                },
                aoColumns : [
                    {
                        bSortable: false,
                        mData : "kid",
                        sWidth : "38px",
                        sClass : "center",
                        sTitle : '<label class="pos-rel"><input type="checkbox" class="ace" /><span class="lbl"></span></label>'
                    },
                    {
                        mData : "name",
                        sTitle : "菜单名称",
                        sWidth : "30%"
                    },
                    {
                        mData : "url",
                        sTitle : "访问路径",
                        visible : true, //是否显示列,true显示;false移除
                    },
                    {
                        mData : "permission",
                        sTitle : "权限标识",
                        sWidth : "13%"
                    },
                    {
                        mData : "category",
                        sTitle : "权限类型",
                        sWidth : "10%",
                        render : function(value,type,row,meta){
                            if(value === 1){
                                return '查询权限';
                            }else if(value === 2){
                                return '编辑权限';
                            }else if(value === 3){
                                return '删除权限';
                            }else if(value === 4){
                                return '添加权限';
                            }else{
                                return "";
                            }
                        }
                    },
                    {
                        mData : "_kid_",
                        sTitle : "<label style='color:#000;'>操作选项</label>",
                        bSortable : false,
                        sWidth : "120px"
                    }
                ],
                columnDefs : [
                    {
                        targets : 0,//指定的列
                        render : function(value,type,row,meta){//第1个参数可能会没有值!!!,当key不存在时就没有值
                            return '<label><input type="checkbox" name="kid" value="'+value+'" style="cursor:pointer;text-decoration:none;outline:none;"/><span class="lbl"></span></label>';
                        }
                    },
                    {
                        targets : -1,//指定的列,可以是4,[4],从0开始的
                        render : function(value,type,row,meta){
                            return '<a href="javascript:thisPage.rowEdit(\''+row.kid+'\');" style="outline:none;text-decoration: none;color:#3b8cff;">编辑</a><a href="javascript:thisPage.rowDel(\''+row.kid+'\');" style="outline:none;text-decoration: none;margin:0px 6px;color:#f00;">删除</a>';
                        }
                    },
                    //单元格内容过长显示省略号，单击弹出所有内容,基于此可以做更多的事情啦!!!
                    {
                        targets: [1,2,3],
                        render: function (value,type,row,meta){
                            if (value){
                                if (value.length > 16){
                                    return value.substr(0,16) +"<a style='outline:none;text-decoration: none;' href='javascript:;' title='查看' onclick='javascript:layerFn.alert(\""+value+"\")'>…</a>";
                                }else{
                                    return value;
                                }
                            }else {
                                return "";
                            }
                        }
                    }
                ]
            });
            pageDataTable.buttons(thisTable);
            pageDataTable.action(thisTable);
            pageDataTable.select(thisTable,tableDom);
            pageDataTable.tooltip();
            //注意 $(selector).dataTable()得到的是table的jquery对象
            var thisTableJquery = $(tableDom).dataTable();//注意大小写啊!!! 这个var _api_ = $(tableDom).DataTable();是大写哦
            //事件的使用:init-->初始化和数据都加载完成，和 initComplete配置等价, 但是,仅仅在是第一次创建的时候被触发的!!!
            //获取API的方式
            var thisApi = $(tableDom).dataTable().api();//或$(selector).dataTable().api();前提是等初始化完成；或直接 var _api_ = $(tableDom).DataTable();
            //var thisApi = $(tableDom).DataTable();这个也好使
            $(tableDom).on('init.dt',function (){
                //console.log('Table initialisation complete: ' + new Date().getTime());
            }).dataTable();

            var domTree = 'treeDom';
            var setting = {
                view : {
                    expandSpeed : 100,
                    showLine : true,
                    showIcon : true,
                    fontCss : {"color":"#000","outline":"none","text-decoration":"none"}
                },
                data: {
                    simpleData: {
                        enable: true,
                        idKey: "id",
                        pIdKey: "pid"
                        //rootPId: ''可以指定最外层的值
                    }
                },
                async : {
                    enable : true,
                    url : "/menu/queryAllMenu",
                    cache : false,
                    type: "GET",
                    autoParam : ["kid"],
                    otherParam: ["ids", "写死的值", "token",function(){return $("#type").val()}],
                    dataFilter: function(treeId,parentNode,result){
                        var bl = layerFn.checkLogin(result);
                        if(bl)return;
                        if(result.code == AppKey.code.code200)return result.data;
                        if(result){
                            layerFn.alert(result.msg,result.code);
                        }
                        return '';
                    }
                },
                callback : {
                    beforeAsync : function(dom){
                    },
                    onAsyncSuccess : function(data){
                    },
                    onAsyncError : function(){
                        layerFn.alert(AppKey.msg_error);
                    },
                    onClick : function(event,treeIdDom,node,clickFlag){
                        if (verifyFn.inputRequired('#menu_name')){
                            layerFn.alert('请输入菜单名称',AppKey.code.code201);
                            return;
                        }
                        if (verifyFn.inputRequired('#sys_menu_select_type')){
                            layerFn.alert('请先选择菜单类型',AppKey.code.code201);
                            return;
                        }
                        var type = winFn.getDomValue('#sys_menu_select_type');
                        if (type != '1' && verifyFn.isEmpty(node.uri)){//选择下拉类型不为导航菜单时,那必须判断所选的父级菜单的uri是否为空,为空时说明还有子页面,所以不能添加行按钮或普通按钮
                            thisPage.checkMenuTree();
                            return;
                        }
                        if (!verifyFn.isEmpty(node.uri) && type == 1){//选择下拉类型为导航菜单时,那必须判断所选的父级菜单的uri是否不为空,不为空说明只能添加行按钮或普通按钮
                            thisPage.checkMenuTree();
                            return;
                        }
                        var keyId = winFn.getDomValue('#menu_edit_keyId');
                        if (!verifyFn.isEmpty(keyId) && node.id == keyId){//判断所选的目标导航菜单和当前的菜单是同一个菜单
                            thisPage.checkMenuTree();
                            return;
                        }
                        winFn.setDomValue('#pName',node.name);
                        winFn.setDomValue('#menu_pId',node.id);
                        winFn.setDomValue('#sys_menu_layer',node.layer);
                    }
                }
            };

            thisPage = {
                init : function(){
                    this.addEvent();
                    this.initDom();
                },
                initDom : function(){
                },
                addEvent : function(){
                    this.btnEvent();
                    $('#choiceType').on('click',function(){
                        thisPage.dropdownType('','选择类型');
                    });
                    $('#choiceNav').on('click',function(){
                        thisPage.dropdownType('1','导航菜单');
                    });
                    $('#choiceBtn').on('click',function(){
                        thisPage.dropdownType('2','普通按钮');
                    });
                    $('#choiceRow').on('click',function(){
                        thisPage.dropdownType('3','行内按钮');
                    });
                },
                btnEvent : function(){
                    $(tableDom +' tbody').on('dblclick','tr',function(){
                        thisPage.trDblclick(thisTable.row(this).data());
                    });
                    /*//行双击如上和如下 **********************************
                    var table_ = $('#dynamic-table').DataTable();
                    $('#dynamic-table tbody').on('dblclick','tr',function(){
                        console.log(table_.row(this).data());
                    } );*/
                    $('#btnAdd').on('click',function(){
                        thisPage.edit();
                    });
                    $('#btnSearch').on('click',function(){
                        thisPage.search();
                    });
                    $('#iconColumn').on('click',function(){
                        pageDataTable.columnCustom(thisTable,tableDom,'#divKeyMenuField');
                    });
                    $('#iconRefresh').on('click',function(){
                        thisPage.search();
                    });
                    $('#btnDel').on('click',function(){
                        thisPage.btnDel();
                    });
                    $('#btnEdit').on('click',function(){
                        thisPage.btnEdit();
                    });
                    $('#btnHide').on('click',function(){
                        thisPage.customField();

                        //console.info(thisTable.rows());//获取行数量(总有几行)[不删除]
                        //console.info(thisTable.rows().data());//获取所有行的数据[不删除]

                        //var index555 = $("#dynamic-table tr td[aria-controls='dynamic-table']");


                        //$("input[name$='letter']")
                        //var field1 = $('#dynamic-table thead tr ').text();//"域名访问量最近更新操作选项"
                        //var field2 = $('#dynamic-table thead tr :not(:first):not(:last)').text();//"域名访问量最近更新操作选项"


                        var json = thisTableJquery.fnGetData(0);//1行的全部数据,从0开始的
                        //thisTableJquery.fnSetColumnVis(3,false);//方法,表示是否隐藏列[不删除]

                        //获取表格所有数据,ok
                        /*var nTrs = thisTableJquery.fnGetNodes();//fnGetNodes获取表格所有行，nTrs[i]表示第i行tr对象,
                        for(var i = 0; i < nTrs.length; i++){
                            console.log(thisTableJquery.fnGetData(nTrs[i]));//fnGetData获取每一行的数据
                        }*/

                        //获取表格选中行数据,ok
                        /*var nTrs = thisTableJquery.fnGetNodes();//fnGetNodes获取表格所有行，nTrs[i]表示第i行tr对象
                        for(var i = 0; i < nTrs.length; i++){
                            if($(nTrs[i]).hasClass('selected')){
                                console.log(thisTableJquery.fnGetData(nTrs[i]));//fnGetData获取选中的每一行数据
                            }
                        }*/
                        var column0 = thisTable.header();
                        var column1 = thisTable.column();
                        var column2 = thisTable.column('columns');
                        //console.info(column0);//可做参考
                        //console.info(column1);//可做参考
                        //console.info(column2.lastIndexOf);//可做参考
                        //console.info(thisTable.column().header());
                        //console.info(thisTable.columns().header());//官网的api是 columns().header(),本行代码参考意义最大!!!,记得是点击  Object 进来哦
                        //console.info(thisTable.columns().header()[2].innerText);

                        var header = thisTable.columns().header();

                        //console.info('length:' + header.length);

                        var len = header.length - 1;

                        for(var i = 1; i < len; i++){
                            //console.info(header[i]);
                            //console.info('*************');
                            //console.info(header[i].innerText);
                            //console.info(header[i].innerHTML);
                            //console.info(header[i].innerText);//ok
                        }
                    });
                    $('#btnHideRow').on('click',function(){
                        thisPage.hideRow();
                    });
                    $('#btnShowRow').on('click',function(){
                        thisPage.showRow();
                    });
                    $('#btnColumns').on('click',function(){
                        //var _api_ = $(tableDom).DataTable();
                        alert('第2列是 '+(thisApi.column(1).visible() === true ? '显示' : '隐藏'));//好使

                        //thisPage.btnColumns();
                        /*$(tableDom).find('.toggle-vis').on('click',function (e){
                            var input = $(tableDom).find("input");
                            var inputCheckedCount = 0;
                            //一个列表有n个列，不可能让所有的列都消失，会出问题，所以当出现只有一个列显示的时候，这个下拉选择框不可以选
                            for(var i=0;i<input.length;i++){
                                if($(tableDom).find("input").eq(i).prop("checked")==true){
                                    inputCheckedCount++;
                                }
                            }
                            var column = table.column($(this).attr('data-column'));
                            if(inputCheckedCount>1||($(this).find("input").prop("checked")==false)){
                                e.preventDefault();
                                column.visible(! column.visible());
                                $(tableDom).css("width","100%");
                                if(!column.visible()){
                                    $(this).find("input").prop("checked",false);
                                }else{
                                    $(this).find("input").prop("checked",true);
                                }
                            }
                        });*/
                        /*layerFn.addOrEdit('自定义显示隐藏列','#divKeyColumns',['500px','430px'],function(index,layero){
                        });*/
                    });
                },
                //初始化下拉列表
                btnColumns : function(){
                    var domId = '#divKeyColumns';
                    var html = '';
                    var tableTh = $(tableDom).find("thead").find("th");
                    for(var i=0;i<tableTh.length;i++){
                        html+=' <li style="padding:3px 15px;cursor:pointer;" class="toggle-vis" data-column="'+i+'"><input type="checkbox" checked="checked" disabled="disabled"/>'+$(tableDom).find("thead").find("th").eq(i).html()+'</li>';
                    }
                    $(domId).html(html);
                },
                /*隐藏某一列*/
                hideRow : function(){
                    layerFn.prompt(function(value,index){
                        thisTableJquery.fnSetColumnVis(value,false);
                    });
                },
                /*显示某一列*/
                showRow : function(){
                    layerFn.prompt(function(value,index){
                        thisTableJquery.fnSetColumnVis(value,true);
                    },'请输入要显示的列');
                },
                trDblclick : function(data){
                    alert(data.kid);
                },
                customField : function(){
                    //alert($('#dynamic-table tr:eq(0) th:eq(1)').html());//获取的是table 第一行 第2个th
                    //alert($('#dynamic-table tr:eq(0) th:eq(1)').text());//获取的是table 第一行 第2个th

                    //alert($('table'+tableDom + ' tr:eq(0) th:eq(2)').text());//获取的是table 第一行 第3个th,OK

                    var header = thisTable.columns().header();//api用法
                    var len = header.length - 1;
                    //console.info(thisTable.columns().header());

                    var divKeyMenuField = '#divKeyMenuField';

                    var localColumnData = tableDom.substring(1);//有两个地方调用到:1是生成input[type=checkbox]时,2是当已保存后再此读取时赋值给input[type=checkbox]是否显示列
                    var columnData = sessionStorage.getItem(localColumnData);

                    var html = "<table class='table table-striped table-bordered table-hover no-margin-bottom no-border-top'>";
                    html += "<thead>";
                    html += "<tr>";
                    html += "<th width='40' class='center'>";
                    html += "<i class='ace-icon glyphicon glyphicon-list bigger-110'></i>";
                    html += "</th>";
                    html += "<th>列名</th>";
                    html += "<th width='40' class='center'>";
                    html += "<i class='ace-icon fa fa-eye bigger-110'></i>";
                    html += "</th>";
                    html += "</tr>";
                    html += "</thead>";
                    html += "<tbody>";
                    for(var i = 1; i < len; i++){
                        html += "<tr>";
                        html += "<td class='center'>";
                        html += "<label>"+i+"</label>";
                        html += "</td>";
                        html += "<td>"+header[i].innerText+"</td>";
                        html += "<td class='center'>";
                        html += "<input type='checkbox' id='"+(localColumnData+i)+"'/><label style='margin:0px;'></label>";
                        html += "</td>";
                        html += "</tr>";
                    }
                    html += "</tbody>";
                    html += "</table>";
                    $(divKeyMenuField).html(html);
                    if(columnData){
                        var kv = JSON.parse(columnData)
                        $.each(kv,function(k,v){
                            $('#'+(localColumnData+k)).prop("checked",v);
                        });
                    }else{
                        for(var i = 1; i < len;i++){
                            var check = thisApi.column(i).visible();
                            $('#'+(localColumnData+i)).prop("checked",check);
                            //var inputDom = localColumnData+i;
                            //$('#'+inputDom).prop("checked",check);
                        }
                    }
                    $(divKeyMenuField).hcheckbox()//初始化样式
                    layerFn.addOrEdit('自定义显示隐藏列',divKeyMenuField,['500px','430px'],function(index,layero){

                        /*
                        好使!!!
                        var table = $(tableDom).DataTable();

                        for ( var i=1 ; i<3 ; i++ ) {
                            table.column(i).visible(false,false);
                        }
                        table.columns.adjust().draw(false);*/

                        var json = {};

                        //var table = $(tableDom).DataTable();
                        for(var i = 1; i < len; i++){
                            var bl = winFn.checkboxSelect('#'+localColumnData+i);
                            //json[header[i].innerText+','+i] = bl;
                            json[i] = bl;
                            //thisTableJquery.fnSetColumnVis(i,bl);
                            //table.column(i).visible(bl);//好使
                            thisApi.column(i).visible(bl,false);//也好使,官方的写法
                        }
                        thisApi.columns.adjust().draw(false);

                        //var index1 = winFn.checkboxSelect(divKeyMenuField+"1");
                        //var index2 = winFn.checkboxSelect(divKeyMenuField+"2");
                        //var index3 = winFn.checkboxSelect(divKeyMenuField+"3");
                        //alert(index1 + ','+index2 + ','+index3);

                        layerFn.closeIndex(index);

                        if(!sessionStorage){
                            layerFn.alert('不支持sessionStorage,操作失败',AppKey.code.code199);
                        }else{
                            sessionStorage.setItem(localColumnData,JSON.stringify(json));//保存的自定义显示列
                        }
                    });
                },
                btnDel : function(){
                    var kids = '';
                    $(tableDom + ' tbody input:checked').each(function(){
                        var value = this.value;
                        if(value != null && value != ''){
                            if(kids.length > 0)
                                kids += ",";
                            kids += value;
                        }
                    });
                    if(kids == ''){
                        layerFn.alert('请选择要删除的数据',AppKey.code.code199);
                        return;
                    }
                    layerFn.alert(kids,AppKey.code.code200);
                },
                btnEdit : function(){
                    var array = new Array();
                    array = thisTable.rows({selected : true}).data().toArray();
                    if(array.length === 0){//如果一个没有勾选
                        layerFn.alert('请选择要编辑的数据',AppKey.code.code199);
                    }else{
                        /*for (var i = 0; i < array.length; i++) {
                            array[i].kid
                        }*/
                        if(array.length > 1){
                            layerFn.alert('仅支持单条数据的编辑',AppKey.code.code199);
                        }else{
                            layerFn.alert(array[0].name,AppKey.code.code200);
                        }
                    }
                },
                search : function(){
                    thisTable.draw();
                    <shiro:hasPermission name="menu:getList">
                    <%--页面显示控制及js控制--%>
                    </shiro:hasPermission>
                },
                edit : function(kid){
                    <shiro:hasPermission name="menu:btnAdd">
                    <%--页面显示控制及js控制--%>
                    </shiro:hasPermission>
                    $.fn.zTree.init($("#"+domTree),setting);//初始化树形菜单及并读取数据
                    layerFn.addOrEdit('编辑','#div_menu_edit',['400px','320px'],function(index,layero){
                        var userName = $('#userName').val();
                        var password = $('#password').val();
                        if(userName == null || userName.length <= 0){
                            layerFn.alert('请输入登录账号',AppKey.code.code199);
                            return;
                        }
                        if(password == null || password.length <= 0){
                            layerFn.alert('请输入登录密码',AppKey.code.code199);
                            return;
                        }
                        layerFn.closeIndex(index);
                    });
                },
                rowEdit : function(kid){
                    alert('rowEdit:'+kid);
                },
                rowDel : function(kid){
                    alert('单行删除:'+kid);
                },
                /*下拉菜单赋值*/
                dropdownType : function(type,text){
                    $('#type').val(type);
                    $('#menuShow').text(text);
                }
            };
            thisPage.init();
        });
    });
</script>