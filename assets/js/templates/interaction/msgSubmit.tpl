<!--留言模块前端显示的页面-->
${toolbarTemplate(buttons)}
<link rel="stylesheet" type="text/css" href="assets/js/templates/css/msgSubmit_edit.css" />
<div class="clear"></div>
<div class="view">
    <% if(cpAttributes.tab1.value.msgSubmitContent.value=='1') {%>
    <div class="msg_container" >
        <div>
            <div class="msg_bg1"></div>
            <span class="msg_express1">${cpAttributes.tab1.value.msgSubmitTitle.value}</span>
            <div class="msg_boderbottom"></div>
        </div>
        <div class="msg_form" style="margin-top: 20px;float: left;">
            <span style="font-size: 14px;font-weight: bolder;height: 30px;line-height: 30px;">发表您的留言：</span>
            <form>
                <div class="msg_float1"><span class="msg_width1">姓名：</span><input class="msg_input1" type="text" name="name"><span style="float: left; color: red;margin-left: 5px;height:34px;line-height:34px;">*</span></div>
                <div class="msg_float1"><span class="msg_width1">邮箱：</span><input class="msg_input1" type="text" name="email"></div>
                <div class="msg_float1"><span class="msg_width1">电话：</span><input class="msg_input1" type="text" name="phone"></div>
                <div class="msg_float1"><span class="msg_width1">建议：</span><input class="msg_input1" type="text" name="idea"></div>
                <div class="msg_float1"><span class="msg_width1">验证码：</span><input class="msg_input1" style="width: 100px;" type="text" name="code"><input style="margin-left: 8px; width: 80px;" class="msg_input1" type="" name="" placeholder="验证码"></div>
                <div style="clear: both;"></div>
                <div class="msg_float1"><span class="msg_width1">内容：</span><textarea rows="3" cols="25" style="width:60%;" type="textarea" name="content" placeholder="留言需审核后才会显示"></textarea></div>
            </form>
        </div>
        <div style="clear: both;"></div>
        <input class="msg_bottom1 ${cpAttributes.tab1.value.msgSubmitContent.listvalue1.propName.value}" type="submit" value="提交留言" />

    </div>
    <div class="clear"></div>
    <%}%>
    <% if(cpAttributes.tab1.value.msgSubmitContent.value=='0') {%>
    <!--另一种样式的表单-->
    <div class="msg_container">
        <div>
            <div class="msg_bg1"></div>
            <span class="msg_title">${cpAttributes.tab1.value.msgSubmitTitle.value}</span>
            <div class="msg_boderbottom"></div>
        </div>
        <div class="msg_form">
            <span class="msg_express">发表您的留言：</span>
            <form>
                <div class="msg_float"><span class="msg_width">姓名：</span><input class="msg_input" type="text" name="name"><span style=" float: left; color: red;margin-left: 5px;">*</span></div>
                <div class="msg_float"><span class="msg_width">邮箱：</span><input class="msg_input" type="text" name="email"></div>
                <div class="msg_float"><span class="msg_width">电话：</span><input class="msg_input" type="text" name="phone"></div>
                <div class="msg_float"><span class="msg_width">建议：</span><input class="msg_input" type="text" name="idea"></div>
                <div class="msg_float"><span class="msg_width">验证码：</span><input class="msg_input" style="width: 60px;" type="text" name="code"><input style="margin-left: 8px;width:60px;" class="msg_input" type="" name="" placeholder="验证码"></div>
                <div style="clear: both;"></div>
                <div class="msg_float"><span class="msg_width">内容：</span><textarea rows="5" cols="25" style="min-width:80%;" type="textarea" name="content" placeholder="想要说的内容"></textarea></div>
            </form>
            <div style="clear: both;"></div>
            <input class="msg_sub" type="submit" value="提交留言">
            <span class="msg_tip">留言需审核后才会显示</span>
        </div>
    </div>
    <%}%>
</div>