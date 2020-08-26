<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->
        <div class="row">
            <div class="col-xs-12">
                <table id="simple-table" class="table  table-bordered table-hover">
                    <thead>
                    <tr>
                        <th class="center" style="width:38px">
                            <label class="pos-rel"><input type="checkbox" class="ace" /><span class="lbl"></span></label>
                        </th>
                        <th class="detail-col">详情</th>
                        <th>登录账号</th>
                        <th>账号状态</th>
                        <th class="hidden-480">
                            <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                            添加时间
                        </th>
                        <th>
                            <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                            最近登录
                        </th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td class="center">
                            <div class="action-buttons">
                                <a href="javascript:;" class="green bigger-140 show-details-btn" title="点击显示详细信息">
                                    <i class="ace-icon fa fa-angle-double-down"></i>
                                    <span class="sr-only">详细信息</span>
                                </a>
                            </div>
                        </td>

                        <td>
                            <a href="javascript:;">admin</a>
                        </td>
                        <td>正常</td>
                        <td class="hidden-480">2020-01-14 10:07</td>
                        <td>2020-04-14 11:57</td>
                        <td>
                            <div class="hidden-sm hidden-xs btn-group">
                                <button class="btn btn-xs btn-success">
                                    <i class="ace-icon fa fa-check bigger-120"></i>
                                </button>

                                <button class="btn btn-xs btn-info">
                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                </button>

                                <button class="btn btn-xs btn-danger">
                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                </button>

                                <button class="btn btn-xs btn-warning">
                                    <i class="ace-icon fa fa-flag bigger-120"></i>
                                </button>
                            </div>

                            <div class="hidden-md hidden-lg">
                                <div class="inline pos-rel">
                                    <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                        <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                    </button>

                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                        <li>
                                            <a href="javascript:;" class="tooltip-info" data-rel="tooltip" title="View">
													<span class="blue">
														<i class="ace-icon fa fa-search-plus bigger-120"></i>
													</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="javascript:;" class="tooltip-success" data-rel="tooltip" title="Edit">
													<span class="green">
														<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
													</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="javascript:;" class="tooltip-error" data-rel="tooltip" title="Delete">
													<span class="red">
														<i class="ace-icon fa fa-trash-o bigger-120"></i>
													</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr class="detail-row">
                        <td colspan="8">
                            <div class="table-detail">
                                <div class="row">
                                    <%--<div class="col-xs-12 col-sm-2">2</div>
                                    <div class="col-xs-12 col-sm-7">7</div>
                                    <div class="col-xs-12 col-sm-3">3</div>--%>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td class="center" style="width:38px">
                            <label class="pos-rel"><input type="checkbox" class="ace" /><span class="lbl"></span></label>
                        </td>

                        <td class="center">
                            <div class="action-buttons">
                                <a href="javascript:;" class="green bigger-140 show-details-btn" title="点击显示详细信息">
                                    <i class="ace-icon fa fa-angle-double-down"></i>
                                    <span class="sr-only">详细信息</span>
                                </a>
                            </div>
                        </td>

                        <td>
                            <a href="javascript:;">typ</a>
                        </td>
                        <td>禁用</td>
                        <td class="hidden-480">2020-03-20 09:07</td>
                        <td>2020-03-16 10:20</td>
                        <td>
                            <div class="hidden-sm hidden-xs btn-group">
                                <button class="btn btn-xs btn-success">
                                    <i class="ace-icon fa fa-check bigger-120"></i>
                                </button>

                                <button class="btn btn-xs btn-info">
                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                </button>

                                <button class="btn btn-xs btn-danger">
                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                </button>

                                <button class="btn btn-xs btn-warning">
                                    <i class="ace-icon fa fa-flag bigger-120"></i>
                                </button>
                            </div>

                            <div class="hidden-md hidden-lg">
                                <div class="inline pos-rel">
                                    <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                        <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                    </button>

                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                        <li>
                                            <a href="javascript:;" class="tooltip-info" data-rel="tooltip" title="View">
													<span class="blue">
														<i class="ace-icon fa fa-search-plus bigger-120"></i>
													</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="javascript:;" class="tooltip-success" data-rel="tooltip" title="Edit">
													<span class="green">
														<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
													</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="javascript:;" class="tooltip-error" data-rel="tooltip" title="Delete">
													<span class="red">
														<i class="ace-icon fa fa-trash-o bigger-120"></i>
													</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr class="detail-row">
                        <td colspan="8">
                            <div class="table-detail">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-2">2</div>
                                    <div class="col-xs-12 col-sm-7">7</div>
                                    <div class="col-xs-12 col-sm-3">3</div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- PAGE CONTENT ENDS -->
    </div>
</div>

<script type="text/javascript">
    var scripts = [null,"/js/dataTables/jquery.dataTables.js","/js/dataTables/jquery.dataTables.bootstrap.js","/js/dataTables/extensions/Buttons/js/dataTables.buttons.js","/js/dataTables/extensions/Buttons/js/buttons.print.js","/js/dataTables/extensions/Select/js/dataTables.select.js", null]
    $('.page-content-area').ace_ajax('loadScripts', scripts, function() {
        jQuery(function($) {

            $.fn.dataTable.Buttons.swfPath = "/js/dataTables/extensions/Buttons/swf/flashExport.swf"; //in Ace demo  will be replaced by correct assets path
            $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

            //table checkboxes
            $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

            //And for the first simple table, which doesn't have TableTools or dataTables
            //select/deselect all rows according to table header checkbox
            var active_class = 'active';
            $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
                var th_checked = this.checked;//checkbox inside "TH" table header
                $(this).closest('table').find('tbody > tr').each(function(){
                    var row = this;
                    if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                    else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
                });
            });

            //select/deselect a row when the checkbox is checked/unchecked
            $('#simple-table').on('click', 'td input[type=checkbox]' , function(){
                var $row = $(this).closest('tr');
                if($row.is('.detail-row ')) return;
                if(this.checked) $row.addClass(active_class);
                else $row.removeClass(active_class);
            });

            /********************************/
            //add tooltip for small view action buttons in dropdown menu
            $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

            //tooltip placement on right or left
            function tooltip_placement(context, source) {
                var $source = $(source);
                var $parent = $source.closest('table')
                var off1 = $parent.offset();
                var w1 = $parent.width();

                var off2 = $source.offset();
                //var w2 = $source.width();

                if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
                return 'left';
            }

            /********显示或隐藏详细信息图标*******/
            $('.show-details-btn').on('click', function(e){
                e.preventDefault();
                var _this = this;
                var cls = $(_this).find(ace.vars['.icon']);
                cls = $(cls).attr("class");
                if(cls == 'ace-icon fa fa-angle-double-down'){
                    self.layerIndex = layerFn.loading('正在加载……');
                }
                setTimeout(function(){
                    layerFn.closeIndex(self.layerIndex);
                    $(_this).closest('tr').next().toggleClass('open');
                    $(_this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
                },2000);
            });
            /***************/
        })
    });
</script>