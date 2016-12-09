${toolbarTemplate(buttons)}
<link rel="stylesheet" type="text/css" href="assets/js/templates/css/memberLogin.css" />
<div class="view">
    <div class="memberLoginContainer">
        <div>
            <div class="titleLeft"></div>
            <span class="titleRight">${cpAttributes.tab1.value.login.value}</span>
            <div class="titleBottom"></div>
        </div>

        <div class="memberLoginPanel">
            <div class="memberLoginItemList">
                <div class="memberLoginItem ">
                    <input class="memberLoginInput memberLoginUser" type="text" value="" placeholder="账号" />
                </div>
                <div class="memberLoginItem">
                    <input class="memberLoginInput memberLoginPassword" type="password" value="" placeholder="密码" />
                </div>
                <div class="memberLoginItem">
                    <div class="memberLoginBtn ${cpAttributes.tab1.value.menustyle.value}">登录</div>
                </div>
            </div>
            <div class="memberLoginSignup">
                <a class="memberLoginReg" href="#" >免费注册></a>
            </div>
        </div>
    </div>
</div>