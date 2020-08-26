<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="page-header">
    <input style="height:34px;line-height:34px;width:200px;padding:0 4px">
    <button type="button" class="btn btn-white btn-info" id="btnAdd" style="margin-top:-2px;">添加</button>
    <button type="button" class="btn btn-white btn-success" id="btnEdit" style="margin-top:-2px;">编辑</button>
    <button type="button" class="btn btn-white btn-primary" id="btnDele" style="margin-top:-2px;">删除</button>
    <button type="button" class="btn btn-white btn-primary" id="btnColumn" style="margin-top:-2px;">自定义列</button>
</div>

<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->

        <div class="hr hr-18 dotted hr-double"></div>

        <h4 class="pink">
            <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
            <a href="#modal-table" role="button" class="green" data-toggle="modal">Table Inside a Modal Box[弹出框表格]</a>
        </h4>

        <div class="hr hr-18 dotted hr-double"></div>

        <!--弹出的表格{aside-right:是右边;aside-left:是左边;aside-hz:}-->
        <div id="modal-table" class="modal fade" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header no-padding">
                        <div class="table-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                <span class="white">&times;</span>
                            </button>
                            最新注册域名
                        </div>
                    </div>
                    <!--弹出的表格-表体-->
                    <div class="modal-body no-padding">
                        <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                            <thead>
                            <tr>
                                <th>域名</th>
                                <th>价格</th>
                                <th>点击量</th>
                                <th>
                                    <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                    最近更新
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <a href="javascript:;">www.yinlz.com</a>
                                </td>
                                <td>$45</td>
                                <td>3,330</td>
                                <td>Feb 12</td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="javascript:;">www.fwtai.com</a>
                                </td>
                                <td>$35</td>
                                <td>2,595</td>
                                <td>Feb 18</td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="javascript:;">www.dltai.com</a>
                                </td>
                                <td>$60</td>
                                <td>4,400</td>
                                <td>Mar 11</td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="javascript:;">www.fwt.cloud</a>
                                </td>
                                <td>$75</td>
                                <td>6,500</td>
                                <td>Apr 03</td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="javascript:;">www.jytc.top</a>
                                </td>
                                <td>$55</td>
                                <td>4,250</td>
                                <td>5555</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--弹出的表格-分页条-->
                    <div class="modal-footer no-margin-top">
                        <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                            <i class="ace-icon fa fa-times"></i>
                            关闭
                        </button>

                        <ul class="pagination pull-right no-margin">
                            <li class="prev disabled">
                                <a href="javascript:;">
                                    <i class="ace-icon fa fa-angle-double-left"></i>
                                </a>
                            </li>

                            <li class="active">
                                <a href="javascript:;">1</a>
                            </li>

                            <li>
                                <a href="javascript:;">2</a>
                            </li>

                            <li>
                                <a href="javascript:;">3</a>
                            </li>

                            <li class="next">
                                <a href="javascript:;">
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>
        <!-- PAGE CONTENT ENDS -->
    </div><!-- /.col -->
</div><!-- /.row -->

<div id="div_modal_body_edit" style="display:none;">
    <div class="modal-body no-padding">
        <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
            <thead>
            <tr>
                <th>域名</th>
                <th>价格</th>
                <th>点击量</th>
                <th>
                    <i class="ace-icon fa fa-clock-o bigger-110"></i>
                    最近更新
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <a href="javascript:;">www.yinlz.com</a>
                </td>
                <td>$45</td>
                <td>3,330</td>
                <td>Feb 12</td>
            </tr>
            <tr>
                <td>
                    <a href="javascript:;">www.fwtai.com</a>
                </td>
                <td>$35</td>
                <td>2,595</td>
                <td>Feb 18</td>
            </tr>
            <tr>
                <td>
                    <a href="javascript:;">www.dltai.com</a>
                </td>
                <td>$60</td>
                <td>4,400</td>
                <td>Mar 11</td>
            </tr>
            <tr>
                <td>
                    <a href="javascript:;">www.fwt.cloud</a>
                </td>
                <td>$75</td>
                <td>6,500</td>
                <td>Apr 03</td>
            </tr>
            <tr>
                <td>
                    <a href="javascript:;">www.jytc.top</a>
                </td>
                <td>$55</td>
                <td>4,250</td>
                <td>5555</td>
            </tr>
            </tbody>
        </table>
    </div>
    <!--弹出的表格-分页条-->
    <div class="modal-footer no-margin-top">
        <ul class="pagination pull-right no-margin">
            <li class="prev disabled">
                <a href="javascript:;">
                    上一页
                </a>
            </li>

            <li class="active">
                <a href="javascript:;">1</a>
            </li>

            <li>
                <a href="javascript:;">2</a>
            </li>

            <li>
                <a href="javascript:;">3</a>
            </li>

            <li class="next">
                <a href="javascript:;">
                    下一页
                </a>
            </li>
        </ul>
    </div>
</div>

<div id="div_modal_column" style="display:none;">
    <div class="modal-body no-padding">
        <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
            <thead>
            <tr>
                <th width="38" class="center">序列</th>
                <th width="200" class="left">列名</th>
                <th width="100" class="center">
                    <i class="ace-icon glyphicon glyphicon-check bigger-110"></i>
                    是否显示
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <a href="javascript:;">1</a>
                </td>
                <td>菜单管理</td>
                <td>
                    <input type="checkbox" value='1' style="margin:0px;"/><label style="margin:0px;"></label>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<script type="text/javascript">
    var scripts = [null,"/js/dataTables/jquery.dataTables.js","/js/dataTables/jquery.dataTables.bootstrap.js","/js/dataTables/extensions/Buttons/js/dataTables.buttons.js","/js/dataTables/extensions/Buttons/js/buttons.flash.js","/js/dataTables/extensions/Buttons/js/buttons.html5.js","/js/dataTables/extensions/Buttons/js/buttons.print.js","/js/dataTables/extensions/Buttons/js/buttons.colVis.js","/js/dataTables/extensions/Select/js/dataTables.select.js","/js/checkbox/jquery-checkbox-radio.js", null];
    $('.page-content-area').ace_ajax('loadScripts', scripts, function(){
        jQuery(function($){
            $('#div_modal_column').hcheckbox();
            var thisPage = {
                init : function(){
                    this.addEvent();
                },
                addEvent : function(){
                    var _self = this;
                    $('#btnAdd').on('click',function(){
                        _self.add();
                    });
                    $('#btnEdit').on('click',function(){

                    });
                    $('#btnDele').on('click',function(){

                    });
                    $('#btnColumn').on('click',function(){
                        _self.btnColumn();
                    });
                },
                initData : function(){

                },
                add : function(){
                    layerFn.addOrEdit('添加','#div_modal_body_edit',['600px','348px'],function(index,layero){
                        layerFn.closeIndex(index);
                    });
                },
                btnColumn : function(){
                    layerFn.addOrEdit('添加','#div_modal_column',['600px','348px'],function(index,layero){
                        layerFn.closeIndex(index);
                    });
                },
                submit : function(){

                }
            };
            thisPage.init();
        });
    });
</script>