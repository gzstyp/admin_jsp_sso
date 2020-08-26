;(function(){
    var thisPage = {
        init : function(){
            $('#btnLogin').on('click',function(){
                thisPage.login();
            });
            $(document).keyup(function(event){
                if(event.keyCode == 13){
                    $("#btnLogin").trigger("click");
                }
            });
            winFn.iePlaceholder();
        },
        login : function(){
            var userName = $('#userName').val();
            var password = $('#password').val();
            if(userName == null || userName == ''){
                layerFn.handleTop('请输入登录账号',AppKey.code.code199);
                return;
            }
            if(password == null || password == ''){
                layerFn.handleTop('请输入登录密码',AppKey.code.code199);
                return;
            }
            var params = {
                userName : userName,
                password : password
            };
            this.ajaxPost('/user/login',params);
        },
        ajaxPost : function(url,params){
            $.ajax({
                type : "POST",
                url : urlPrefix + url,
                dataType : "json",
                data : params,
                beforeSend : function(){
                    self.layerIndex = layerFn.loading('正在登录……');
                },
                success : function(data){
                    layerFn.closeIndex(self.layerIndex);
                    if(data.code === 200){
                        window.location.href = AppKey.control;
                    }else if(data.code === 198){
                        layerFn.handleClose(data.msg,data.code);
                    }else{
                        layerFn.handleTop(data.msg,data.code);
                    }
                },
                error : function(response,err){
                    layerFn.closeIndex(self.layerIndex);
                    layerFn.handleClose("连接服务器失败");
                }
            });
        }
    };
    thisPage.init();
})(jQuery);