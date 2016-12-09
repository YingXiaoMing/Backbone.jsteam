${toolbarTemplate(buttons)}
<div class="view">
    <div style="margin-bottom:0; margin-top:10px; margin-left:10px; margin-right:0; background:#FFF none repeat scroll 0 0;min-height:20px; cursor:move;overflow-x:hidden;">
        <div class="favorite" style="text-align:left; vertical-align:center; ">
            <a hidefocus="true" href="javascript:;" style="color:#333; text-align:left; padding:0; text-decoration:underline;" onclick="SetHome(this,window.location);">设为首页</a>
            <a style="color:#333; text-align:left; padding:0;">|</a>
            <a hidefocus="true" href="javascript:;" style="color:#333; text-align:left; padding:0; text-decoration:underline;" onclick="AddFavorite('请输入企业名称',location.href)">收藏本站</a>
        </div>
    </div>

</div>
<script type="text/JavaScript">
    //设为首页
    function SetHome(obj,url){
        try{
            obj.style.behavior='url(#default#homepage)';
            obj.setHomePage(url);
        }catch(e){
            if(window.netscape){
                try{
                    netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
                }catch(e){
                    alert("抱歉，设置成首页失败！请手动添加。");
                }
            }else{
                    alert("抱歉，您所使用的浏览器无法完成此操作。\n\n您需要手动将【"+url+"】设置为首页。");
            }
        }
    }

    //收藏本站
    function AddFavorite(title, url) {
        try {
            window.external.addFavorite(url, title);
        }
        catch (e) {
            try {
                window.sidebar.addPanel(title, url, "");
            }
            catch (e) {
                alert("加入收藏失败，请使用Ctrl+D进行添加");
            }
        }
    }
</script>