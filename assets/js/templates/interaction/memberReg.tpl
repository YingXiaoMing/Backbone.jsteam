${toolbarTemplate(buttons)}
<link rel="stylesheet" type="text/css" href="assets/js/templates/css/memberReg.css" />
<div class="view">
    <div class="memberRegContainer">
        <div>
            <div class="titleLeft"></div>
            <span class="titleRight">${cpAttributes.tab1.value.memberRegTitle.value}</span>
            <div class="titleBottom"></div>
        </div>
      
        <div class="memberReg_form">
            <form>
                <div class="memberReg_float"><span class="memberReg_width">账号：</span><input class="memberReg_input" type="text" name="username"><span class="memberReg_sign">*</span></div>
                <div class="memberReg_float"><span class="memberReg_width">密码：</span><input class="memberReg_input" type="password" name="password1"><span class="memberReg_sign">*</span></div>
                <div class="memberReg_float"><span class="memberReg_width">确认密码：</span><input class="memberReg_input" type="password" name="password2"><span class="memberReg_sign">*</span></div>
                <div class="memberReg_float"><span class="memberReg_width">姓名：</span><input class="memberReg_input" type="text" name="name"><span class="memberReg_sign">*</span></div>
                <div class="memberReg_float"><span class="memberReg_width">邮箱：</span><input class="memberReg_input" type="text" name="email"><span class="memberReg_sign">*</span></div>
                <div class="memberReg_float"><span class="memberReg_width">电话：</span><input class="memberReg_input" type="text" name="phone"></div>
                <div class="memberReg_float"><span class="memberReg_width">推荐人：</span><input class="memberReg_input" type="text" name="references" placeholder="推荐人必填"><span class="memberReg_sign">*</span></div>
                <div style="clear: both;"></div>
                <div class="memberReg_float"><span class="memberReg_width">留言：</span><textarea rows="5" cols="25" style="min-width:60%;" type="textarea" name="content" placeholder="想要说的内容"></textarea></div>
                <div class="memberReg_float"><span class="memberReg_width">验证码：</span><input class="memberReg_input" style="width: 100px;" type="text" name="code"><input style="margin-left: 8px;width:100px;" class="memberReg_input" type="" name="" placeholder="验证码"></div>
            </form>
            <div style="clear: both;"></div>
             <input class="msg_bottom1 ${cpAttributes.tab1.value.regMenustyle.value}" type="submit" value="注册" />
        </div>
       
    </div>
</div>