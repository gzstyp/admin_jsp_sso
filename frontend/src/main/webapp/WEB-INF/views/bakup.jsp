<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style type="text/css">
    .dataTable > tbody > tr.selected > td {
        background-color:#a4ccf0;
    }
</style>
<div class="page-header">
    <input style="height:34px;line-height:34px;width:200px;padding:0 4px">
    <button type="button" class="btn btn-white btn-info" id="btnAdd" style="margin-top:-2px;">添加</button>
    <button type="button" class="btn btn-white btn-success" id="btnEdit" style="margin-top:-2px;">编辑</button>
    <button type="button" class="btn btn-white btn-primary" id="btnDele" style="margin-top:-2px;">删除</button>
</div>

<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->
        <div class="row">
            <div class="col-xs-12">
                <table id="simple-table" class="table  table-bordered table-hover">
                    <thead>
                    <tr>
                        <th class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </th>
                        <th class="detail-col">详情</th>
                        <th>域名</th>
                        <th>市场价</th>
                        <th class="hidden-480">访问量</th>
                        <th>
                            <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                            最后更新
                        </th>
                        <th class="hidden-480">状态</th>
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
                                <a href="javascript:;" class="green bigger-140 show-details-btn" title="Show Details">
                                    <i class="ace-icon fa fa-angle-double-down"></i>
                                    <span class="sr-only">Details</span>
                                </a>
                            </div>
                        </td>

                        <td>
                            <a href="javascript:;">ace.com</a>
                        </td>
                        <td>$45</td>
                        <td class="hidden-480">3,330</td>
                        <td>Feb 12</td>

                        <td class="hidden-480">
                            <span class="label label-sm label-warning">Expiring</span>
                        </td>

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
                                    <div class="col-xs-12 col-sm-2">
                                        <div class="text-center">
                                            <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="/images/tech.png" />
                                            <br />
                                            <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                <div class="inline position-relative">
                                                    <a class="user-title-label" href="javascript:;">
                                                        <i class="ace-icon fa fa-circle light-green"></i>
                                                        &nbsp;
                                                        <span class="white">Alex M. Doe</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-7">
                                        <div class="space visible-xs"></div>

                                        <div class="profile-user-info profile-user-info-striped">
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Username </div>

                                                <div class="profile-info-value">
                                                    <span>alexdoe</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Location </div>

                                                <div class="profile-info-value">
                                                    <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                    <span>Netherlands, Amsterdam</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Age </div>

                                                <div class="profile-info-value">
                                                    <span>38</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Joined </div>

                                                <div class="profile-info-value">
                                                    <span>2010/06/20</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">
                                                    Last Online
                                                </div>

                                                <div class="profile-info-value">
                                                    <span>3 hours ago</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> About Me </div>

                                                <div class="profile-info-value">
                                                    <span>Bio</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-3">
                                        <div class="space visible-xs"></div>
                                        <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                        <div class="space-6"></div>

                                        <form>
                                            <fieldset>
                                                <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                            </fieldset>

                                            <div class="hr hr-dotted"></div>

                                            <div class="clearfix">
                                                <label class="pull-left">
                                                    <input type="checkbox" class="ace" />
                                                    <span class="lbl"> Email me a copy</span>
                                                </label>

                                                <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                    Submit
                                                    <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td class="center">
                            <div class="action-buttons">
                                <a href="javascript:;" class="green bigger-140 show-details-btn" title="Show Details">
                                    <i class="ace-icon fa fa-angle-double-down"></i>
                                    <span class="sr-only">Details</span>
                                </a>
                            </div>
                        </td>

                        <td>
                            <a href="javascript:;">base.com</a>
                        </td>
                        <td>$35</td>
                        <td class="hidden-480">2,595</td>
                        <td>Feb 18</td>

                        <td class="hidden-480">
                            <span class="label label-sm label-success">Registered</span>
                        </td>

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
                                    <div class="col-xs-12 col-sm-2">
                                        <div class="text-center">
                                            <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="/images/tech.png" />
                                            <br />
                                            <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                <div class="inline position-relative">
                                                    <a class="user-title-label" href="javascript:;">
                                                        <i class="ace-icon fa fa-circle light-green"></i>
                                                        &nbsp;
                                                        <span class="white">Alex M. Doe</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-7">
                                        <div class="space visible-xs"></div>

                                        <div class="profile-user-info profile-user-info-striped">
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Username </div>

                                                <div class="profile-info-value">
                                                    <span>alexdoe</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Location </div>

                                                <div class="profile-info-value">
                                                    <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                    <span>Netherlands, Amsterdam</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Age </div>

                                                <div class="profile-info-value">
                                                    <span>38</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Joined </div>

                                                <div class="profile-info-value">
                                                    <span>2010/06/20</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">
                                                    Last Online
                                                </div>

                                                <div class="profile-info-value">
                                                    <span>3 hours ago</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> About Me </div>

                                                <div class="profile-info-value">
                                                    <span>Bio</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-3">
                                        <div class="space visible-xs"></div>
                                        <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                        <div class="space-6"></div>

                                        <form>
                                            <fieldset>
                                                <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                            </fieldset>

                                            <div class="hr hr-dotted"></div>

                                            <div class="clearfix">
                                                <label class="pull-left">
                                                    <input type="checkbox" class="ace" />
                                                    <span class="lbl"> Email me a copy</span>
                                                </label>

                                                <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                    Submit
                                                    <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td class="center">
                            <div class="action-buttons">
                                <a href="javascript:;" class="green bigger-140 show-details-btn" title="Show Details">
                                    <i class="ace-icon fa fa-angle-double-down"></i>
                                    <span class="sr-only">Details</span>
                                </a>
                            </div>
                        </td>

                        <td>
                            <a href="javascript:;">max.com</a>
                        </td>
                        <td>$60</td>
                        <td class="hidden-480">4,400</td>
                        <td>Mar 11</td>

                        <td class="hidden-480">
                            <span class="label label-sm label-warning">Expiring</span>
                        </td>

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
                                    <div class="col-xs-12 col-sm-2">
                                        <div class="text-center">
                                            <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="/images/tech.png" />
                                            <br />
                                            <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                <div class="inline position-relative">
                                                    <a class="user-title-label" href="javascript:;">
                                                        <i class="ace-icon fa fa-circle light-green"></i>
                                                        &nbsp;
                                                        <span class="white">Alex M. Doe</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-7">
                                        <div class="space visible-xs"></div>

                                        <div class="profile-user-info profile-user-info-striped">
                                            <div class="profile-info-row">
                                                <div class="profile-info-name">用户名</div>

                                                <div class="profile-info-value">
                                                    <span>alexdoe</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">位置</div>

                                                <div class="profile-info-value">
                                                    <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                    <span>Netherlands, Amsterdam</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">年龄</div>

                                                <div class="profile-info-value">
                                                    <span>38</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">入职日期</div>

                                                <div class="profile-info-value">
                                                    <span>2010/06/20</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">
                                                    下线时间
                                                </div>

                                                <div class="profile-info-value">
                                                    <span>3 hours ago</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">简介</div>

                                                <div class="profile-info-value">
                                                    <span>Bio</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-3">
                                        <div class="space visible-xs"></div>
                                        <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                        <div class="space-6"></div>

                                        <form>
                                            <fieldset>
                                                <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                            </fieldset>

                                            <div class="hr hr-dotted"></div>

                                            <div class="clearfix">
                                                <label class="pull-left">
                                                    <input type="checkbox" class="ace" />
                                                    <span class="lbl"> Email me a copy</span>
                                                </label>

                                                <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                    Submit
                                                    <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td class="center">
                            <div class="action-buttons">
                                <a href="javascript:;" class="green bigger-140 show-details-btn" title="Show Details">
                                    <i class="ace-icon fa fa-angle-double-down"></i>
                                    <span class="sr-only">Details</span>
                                </a>
                            </div>
                        </td>

                        <td>
                            <a href="javascript:;">best.com</a>
                        </td>
                        <td>$75</td>
                        <td class="hidden-480">6,500</td>
                        <td>Apr 03</td>

                        <td class="hidden-480">
                            <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                        </td>

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
                                    <div class="col-xs-12 col-sm-2">
                                        <div class="text-center">
                                            <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="/images/tech.png" />
                                            <br />
                                            <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                <div class="inline position-relative">
                                                    <a class="user-title-label" href="javascript:;">
                                                        <i class="ace-icon fa fa-circle light-green"></i>
                                                        &nbsp;
                                                        <span class="white">Alex M. Doe</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-7">
                                        <div class="space visible-xs"></div>

                                        <div class="profile-user-info profile-user-info-striped">
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Username </div>

                                                <div class="profile-info-value">
                                                    <span>alexdoe</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Location </div>

                                                <div class="profile-info-value">
                                                    <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                    <span>Netherlands, Amsterdam</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Age </div>

                                                <div class="profile-info-value">
                                                    <span>38</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Joined </div>

                                                <div class="profile-info-value">
                                                    <span>2010/06/20</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">
                                                    Last Online
                                                </div>

                                                <div class="profile-info-value">
                                                    <span>3 hours ago</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> About Me </div>

                                                <div class="profile-info-value">
                                                    <span>Bio</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-3">
                                        <div class="space visible-xs"></div>
                                        <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                        <div class="space-6"></div>

                                        <form>
                                            <fieldset>
                                                <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                            </fieldset>

                                            <div class="hr hr-dotted"></div>

                                            <div class="clearfix">
                                                <label class="pull-left">
                                                    <input type="checkbox" class="ace" />
                                                    <span class="lbl"> Email me a copy</span>
                                                </label>

                                                <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                    Submit
                                                    <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td class="center">
                            <div class="action-buttons">
                                <a href="javascript:;" class="green bigger-140 show-details-btn" title="Show Details">
                                    <i class="ace-icon fa fa-angle-double-down"></i>
                                    <span class="sr-only">Details</span>
                                </a>
                            </div>
                        </td>

                        <td>
                            <a href="javascript:;">pro.com</a>
                        </td>
                        <td>$55</td>
                        <td class="hidden-480">4,250</td>
                        <td>Jan 21</td>

                        <td class="hidden-480">
                            <span class="label label-sm label-success">Registered</span>
                        </td>

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
                                    <div class="col-xs-12 col-sm-2">
                                        <div class="text-center">
                                            <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="/images/tech.png" />
                                            <br />
                                            <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                <div class="inline position-relative">
                                                    <a class="user-title-label" href="javascript:;">
                                                        <i class="ace-icon fa fa-circle light-green"></i>
                                                        &nbsp;
                                                        <span class="white">Alex M. Doe</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-7">
                                        <div class="space visible-xs"></div>

                                        <div class="profile-user-info profile-user-info-striped">
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Username </div>

                                                <div class="profile-info-value">
                                                    <span>alexdoe</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Location </div>

                                                <div class="profile-info-value">
                                                    <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                    <span>Netherlands, Amsterdam</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Age </div>

                                                <div class="profile-info-value">
                                                    <span>38</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Joined </div>

                                                <div class="profile-info-value">
                                                    <span>2010/06/20</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">
                                                    Last Online
                                                </div>

                                                <div class="profile-info-value">
                                                    <span>3 hours ago</span>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> About Me </div>

                                                <div class="profile-info-value">
                                                    <span>Bio</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-3">
                                        <div class="space visible-xs"></div>
                                        <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                        <div class="space-6"></div>

                                        <form>
                                            <fieldset>
                                                <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                            </fieldset>

                                            <div class="hr hr-dotted"></div>

                                            <div class="clearfix">
                                                <label class="pull-left">
                                                    <input type="checkbox" class="ace" />
                                                    <span class="lbl"> Email me a copy</span>
                                                </label>

                                                <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                    Submit
                                                    <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div><!-- /.span -->
        </div><!-- /.row -->

        <div class="hr hr-18 dotted hr-double"></div>

        <h4 class="pink">
            <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
            <a href="#modal-table" role="button" class="green" data-toggle="modal">Table Inside a Modal Box</a>
        </h4>

        <div class="hr hr-18 dotted hr-double"></div>

        <div class="row">
            <div class="col-xs-12">
                <h3 class="header smaller lighter blue">jQuery 111dataTables</h3>

                <div class="clearfix">
                    <div class="pull-right tableTools-container"></div>
                </div>
                <!--<div class="table-header">
                    Results for "Latest Registered Domains"
                </div>-->

                <!-- div.table-responsive -->

                <!-- div.dataTables_borderWrap -->
                <div>
                    <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>域名</th>
                            <th>市场价格</th>
                            <th class="hidden-480">访问量</th>
                            <th>
                                <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                                最近更新
                            </th>
                            <th class="hidden-480">状态</th>
                            <th>操作选项<a href="javascript:alert('添加');" style="outline:none;text-outline:none;text-decoration: none;margin-left:6px;">添加</a></th>
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

                            <td>
                                <a href="javascript:;">app.com</a>
                            </td>
                            <td>$45</td>
                            <td class="hidden-480">3,330</td>
                            <td>Feb 12</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-warning">Expiring</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">base.com</a>
                            </td>
                            <td>$35</td>
                            <td class="hidden-480">2,595</td>
                            <td>Feb 18</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-success">Registered</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">max.com</a>
                            </td>
                            <td>$60</td>
                            <td class="hidden-480">4,400</td>
                            <td>Mar 11</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-warning">Expiring</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">best.com</a>
                            </td>
                            <td>$75</td>
                            <td class="hidden-480">6,500</td>
                            <td>Apr 03</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">pro.com</a>
                            </td>
                            <td>$55</td>
                            <td class="hidden-480">4,250</td>
                            <td>Jan 21</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-success">Registered</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">team.com</a>
                            </td>
                            <td>$40</td>
                            <td class="hidden-480">3,200</td>
                            <td>Feb 09</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">up.com</a>
                            </td>
                            <td>$95</td>
                            <td class="hidden-480">8,520</td>
                            <td>Feb 22</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">view.com</a>
                            </td>
                            <td>$45</td>
                            <td class="hidden-480">4,100</td>
                            <td>Mar 12</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-success">Registered</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">nice.com</a>
                            </td>
                            <td>$38</td>
                            <td class="hidden-480">3,940</td>
                            <td>Feb 12</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">fine.com</a>
                            </td>
                            <td>$25</td>
                            <td class="hidden-480">2,983</td>
                            <td>Apr 01</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-warning">Expiring</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">good.com</a>
                            </td>
                            <td>$50</td>
                            <td class="hidden-480">6,500</td>
                            <td>Feb 02</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">great.com</a>
                            </td>
                            <td>$55</td>
                            <td class="hidden-480">6,400</td>
                            <td>Feb 24</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-success">Registered</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">shine.com</a>
                            </td>
                            <td>$25</td>
                            <td class="hidden-480">2,200</td>
                            <td>Apr 01</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">rise.com</a>
                            </td>
                            <td>$42</td>
                            <td class="hidden-480">3,900</td>
                            <td>Feb 01</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">above.com</a>
                            </td>
                            <td>$35</td>
                            <td class="hidden-480">3,420</td>
                            <td>Mar 12</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-warning">Expiring</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">share.com</a>
                            </td>
                            <td>$30</td>
                            <td class="hidden-480">3,200</td>
                            <td>Feb 11</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">fair.com</a>
                            </td>
                            <td>$35</td>
                            <td class="hidden-480">3,900</td>
                            <td>Mar 26</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">year.com</a>
                            </td>
                            <td>$48</td>
                            <td class="hidden-480">3,990</td>
                            <td>Feb 15</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-warning">Expiring</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">day.com</a>
                            </td>
                            <td>$55</td>
                            <td class="hidden-480">5,600</td>
                            <td>Jan 29</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">light.com</a>
                            </td>
                            <td>$40</td>
                            <td class="hidden-480">3,100</td>
                            <td>Feb 17</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-success">Registered</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">sight.com</a>
                            </td>
                            <td>$58</td>
                            <td class="hidden-480">6,100</td>
                            <td>Feb 19</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">right.com</a>
                            </td>
                            <td>$50</td>
                            <td class="hidden-480">4,400</td>
                            <td>Apr 01</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-warning">Expiring</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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

                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="javascript:;">yinlz.com</a>
                            </td>
                            <td>$20</td>
                            <td class="hidden-480">1,400</td>
                            <td>Apr 04</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue" href="javascript:;">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green" href="javascript:;">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="javascript:;">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
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
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!--弹出的表格-->
        <div id="modal-table" class="modal fade" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header no-padding">
                        <div class="table-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                <span class="white">&times;</span>
                            </button>
                            Results for "Latest Registered Domains
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
                                    <a href="javascript:;">ace.com</a>
                                </td>
                                <td>$45</td>
                                <td>3,330</td>
                                <td>Feb 12</td>
                            </tr>

                            <tr>
                                <td>
                                    <a href="javascript:;">base.com</a>
                                </td>
                                <td>$35</td>
                                <td>2,595</td>
                                <td>Feb 18</td>
                            </tr>

                            <tr>
                                <td>
                                    <a href="javascript:;">max.com</a>
                                </td>
                                <td>$60</td>
                                <td>4,400</td>
                                <td>Mar 11</td>
                            </tr>

                            <tr>
                                <td>
                                    <a href="javascript:;">best.com</a>
                                </td>
                                <td>$75</td>
                                <td>6,500</td>
                                <td>Apr 03</td>
                            </tr>

                            <tr>
                                <td>
                                    <a href="javascript:;">pro.com</a>
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
                            Close
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

<!-- page specific plugin scripts -->
<script type="text/javascript">
    var scripts = [null,"/js/dataTables/jquery.dataTables.js","/js/dataTables/jquery.dataTables.bootstrap.js","/js/dataTables/extensions/Buttons/js/dataTables.buttons.js","/js/dataTables/extensions/Buttons/js/buttons.flash.js","/js/dataTables/extensions/Buttons/js/buttons.html5.js","/js/dataTables/extensions/Buttons/js/buttons.print.js","/js/dataTables/extensions/Buttons/js/buttons.colVis.js","/js/dataTables/extensions/Select/js/dataTables.select.js", null];
    $('.page-content-area').ace_ajax('loadScripts', scripts, function(){
        //inline scripts related to this page
        jQuery(function($){
            //initiate dataTables plugin
            var myTable = $('#dynamic-table')
            //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .DataTable( {
                bAutoWidth: false,
                "aoColumns": [
                    {"bSortable": false},
                    null, null,null, null, null,
                    {"bSortable": false}
                ],
                "aaSorting": [],
                iDisplayLength : 10,
                aLengthMenu:[10,20,50],
                //"bProcessing": true,
                //"bServerSide": true,
                //"sAjaxSource": appReqUrl + "/menu/getList",

                //,
                //"sScrollY": "200px",
                //"bPaginate": false,

                //"sScrollX": "100%",
                //"sScrollXInner": "120%",
                //"bScrollCollapse": true,
                //Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
                //you may want to wrap the table inside a "div.dataTables_borderWrap" element

                //"iDisplayLength": 50

                select: {
                    style: 'multi'
                }
            } );

            $.fn.dataTable.Buttons.swfPath = "/js/dataTables/extensions/Buttons/swf/flashExport.swf"; //in Ace demo will be replaced by correct assets path
            $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

            new $.fn.dataTable.Buttons(myTable, {
                buttons: [
                    {
                        "extend": "colvis",
                        "text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>自定义显示列</span>",
                        "className": "btn btn-white btn-primary btn-bold",
                        columns: ':not(:first):not(:last)'
                    },
                    {
                        "extend": "copy",
                        "text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>复制</span>",
                        "className": "btn btn-white btn-primary btn-bold"
                    },
                    {
                        "extend": "csv",
                        "text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>导出CSV文件</span>",
                        "className": "btn btn-white btn-primary btn-bold"
                    },
                    {
                        "extend": "excel",
                        "text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>导出Excel文件</span>",
                        "className": "btn btn-white btn-primary btn-bold"
                    },
                    {
                        "extend": "pdf",
                        "text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>导出PDF文件</span>",
                        "className": "btn btn-white btn-primary btn-bold"
                    },
                    {
                        "extend": "print",
                        "text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>打印</span>",
                        "className": "btn btn-white btn-primary btn-bold",
                        autoPrint: false,
                        message: '这个打印生产使用的打印按钮'
                    }
                ]
            } );
            myTable.buttons().container().appendTo($('.tableTools-container'));

            //style the message box
            var defaultCopyAction = myTable.button(1).action();
            myTable.button(1).action(function (e, dt, button, config) {
                defaultCopyAction(e, dt, button, config);
                $('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
            });

            var defaultColvisAction = myTable.button(0).action();
            myTable.button(0).action(function (e, dt, button, config) {
                defaultColvisAction(e, dt, button, config);
                if($('.dt-button-collection > .dropdown-menu').length == 0) {
                    $('.dt-button-collection')
                    .wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
                    .find('a').attr('href','javascript:;').wrap("<li />")
                }
                $('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
            });

            setTimeout(function() {
                $($('.tableTools-container')).find('a.dt-button').each(function() {
                    var div = $(this).find(' > div').first();
                    if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
                    else $(this).tooltip({container: 'body', title: $(this).text()});
                });
            }, 500);

            myTable.on( 'select', function ( e, dt, type, index ) {
                if ( type === 'row' ) {
                    $( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
                }
            } );
            myTable.on( 'deselect', function ( e, dt, type, index ) {
                if ( type === 'row' ) {
                    $( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
                }
            } );

            /////////////////////////////////
            //table checkboxes
            $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

            //select/deselect all rows according to table header checkbox
            $('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
                var th_checked = this.checked;//checkbox inside "TH" table header

                $('#dynamic-table').find('tbody > tr').each(function(){
                    var row = this;
                    if(th_checked) myTable.row(row).select();
                    else  myTable.row(row).deselect();
                });
            });

            //select/deselect a row when the checkbox is checked/unchecked
            $('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
                var row = $(this).closest('tr').get(0);
                if(!this.checked) myTable.row(row).deselect();
                else myTable.row(row).select();
            });

            $(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
                e.stopImmediatePropagation();
                e.stopPropagation();
                e.preventDefault();
            });

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

            $('#simple-table > thead > tr > th input[type=checkbox]').on('click','tr a[name="btnedit"]', function () {
                var $tr = $(this).parents('tr');
                var idx = table.row($(this).parents('tr')).index();
                // alert(idx);
                alert(table.row(idx).data().supply);
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
                var $parent = $source.closest('table');
                var off1 = $parent.offset();
                var w1 = $parent.width();
                var off2 = $source.offset();
                //var w2 = $source.width();
                if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
                return 'left';
            }

            /***************/
            $('.show-details-btn').on('click', function(e) {
                e.preventDefault();
                $(this).closest('tr').next().toggleClass('open');
                $(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
            });
            /***************/

            /**
             //add horizontal scrollbars to a simple table
             $('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
             {
			horizontal: true,
			styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
			size: 2000,
			mouseWheelLock: true
		  }
             ).css('padding-top', '12px');
             */
        });
    });
</script>