<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<div class="row">
    <div class="col-xs-12">
        <div class="row">
            <div class="col-xs-12">
                内容处,如果页面往左边移且水平出现滚动条的话，一定是加了class="row"在最里层
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var scripts = [null,null];
    $('.page-content-area').ace_ajax('loadScripts',scripts,function(){
        //已初始化,在编写js代码时的数组}最后不能多写“,”否则会报错不是对象
    });
</script>