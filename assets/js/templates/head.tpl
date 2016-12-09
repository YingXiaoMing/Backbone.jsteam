<script>
$(function(){
  $(".kenfor_top .head .left .bg1").click(function(e){
    $(".kenfor_top .head").addClass("hide")
    $(".kenfor_top .head1,.kenfor_top .head2").removeClass("hide");
  });
  $(".kenfor_top .head1 nav a").click(function(e){
    $(this).addClass("selected");
    $(this).prevAll().removeClass("selected");
    $(this).nextAll().removeClass("selected");
    $(".kenfor_top .head2 .panels").hide();
    $(".kenfor_top .head2 .panels").eq($(this).index()).show();
  });
  $(".kenfor_top .head1 dl .button").click(function(e){
    $(this).toggleClass("selected");
    $(".kenfor_top .head2").toggleClass("hide");
  });
  $(".kenfor_top .head2 aside a").click(function(e){
    $(this).addClass("selected");
    $(this).prevAll().removeClass("selected");
    $(this).nextAll().removeClass("selected");
    $(this).parent().parent().find(".plate > li").hide();
    $(this).parent().parent().find(".plate > li").eq($(this).index()).show();
  });
  $("#kenfor_layout_content .Modular").click(function(e){
    $(this).toggleClass("selected");
  });
  $(".kenfor_top .head2 .type li > a").click(function(e){
    $(this).addClass("selected");
    $(this).prevAll().removeClass("selected");
    $(this).nextAll().removeClass("selected");
  });
});
function check_banner(id){
  $(".kenfor_top .head2 .banner .list1 li a").hide();
  $(".kenfor_top .head2 .banner .list1 li a."+id).show();
}
//获取下拉列表text值
$("#banner-picture").change(function(e) {
  var txt=$(this)[0].options[$(this)[0].selectedIndex].text;
    if(txt=="Flash"){
      $(".banner-picture").hide();
      $(".banner-flash").show();
    }
});
$("#banner-flash").change(function(e) {
  var txt=$(this)[0].options[$(this)[0].selectedIndex].text;
    if(txt=="图片"){
      $(".banner-picture").show();
      $(".banner-flash").hide();
    }
});
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
         alert("抱歉，您所使用的浏览器无法完成此操作。\n加入收藏失败，请使用Ctrl+D进行添加");
     }
  }
}
//分享
window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};
with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
</script>
<div class="container-fluid kenfor_top">
  <ul class="head after_clear">
    <li class="left">
      <i></i>
      <a class="bg1">网站设计</a>
      <i></i>
      <a class="bg2" href="http://www.kenfor.com">网站管理</a>
      <i></i>
      <a class="bg3">商务平台</a>
      <i></i>
      <a class="bg4">手机版</a>
      <i></i>
    </li>
    <li class="right">
      <div class="mail"><a href="http://gmail.kenfor.com" target="_blank">进入企业邮箱</a></div>
      <i></i>
      <div>
        <dd>我的网址<em></em></dd>
        <ul>
          <li>http://www.kenfor.com</li>
          <li class="link">
            <a>[复制]</a>
            <a href="javascript:void(0);" onclick="AddFavorite(document.title,location.host">[收藏]</a>
            <a>[添加到桌面]</a>
          </li>
          <li class="bdsharebuttonbox">
            <a class="text">分享：</a>
            <a title="分享到微信" class="bds_weixin" data-cmd="weixin"></a>
            <a title="分享到新浪微博" class="bds_tsina" data-cmd="tsina"></a>
            <a title="分享到腾讯微博" class="bds_tqq" data-cmd="tqq"></a>
            <a title="分享到QQ空间" class="bds_qzone" data-cmd="qzone"></a>
          </li>
        </ul>
      </div>
      <i></i>
      <div class="service">
        <dd>服务支持<em></em></dd>
        <ul>
          <li>
            <a class="qq" href="http://www.kenfor.com" target="_blank">在线客服</a>
            <a class="site" href="http://www.kenfor.com" target="_blank">网站代建</a>
            <a class="qq" href="http://www.kenfor.com" target="_blank">代理咨询</a>
            <a class="arrow" href="http://www.kenfor.com" target="_blank">帮助中心</a>
          </li>
          <li class="ewm">
            <a class="arrow">微信关注</a>
            <p>
              <span>关注微信号</span>
              <span>随时撑握最新消息</span>
            </p>
          </li>
        </ul>
      </div>
      <i></i>
      <div class="update">
        <dd>功能更新</dd>
        <ul>
          <li class="tn">功能更新</li>
          <li class="img"><img src="http://jz.faisys.com/image/pro/20160401/jz_drain.jpg?v=2016005101627" alt=""></li>
          <li class="list">
            <a href="http://www.kenfor.com" target="_blank">广东今科科技道同科技有限公司</a>
            <a href="http://www.kenfor.com" target="_blank">广东今科科技道同科技有限公司</a>
            <a href="http://www.kenfor.com" target="_blank">广东今科科技道同科技有限公司</a>
          </li>
        </ul>
      </div>
      <i></i>
      <div class="business">
        <dd><i></i><em></em></dd>
        <ul>
          <li class="img"><em class="bg1"></em></li>
          <li class="text">
            <span>网站商务版</span>
            <font>网站到期时间</font>
            <font>2016-12-09 12:00:00</font>
          </li>
          <li class="clear line"></li>
          <li class="text1">Boss，晚上好</li>
          <li class="link">
            <a href="http://www.kenfor.com" target="_blank">[管理员工]</a>
            <a href="http://www.kenfor.com" target="_blank">[退出]</a>
          </li>
          <li class="clear"></li>
        </ul>
      </div>
    </li>
  </ul>
  <ul class="head1 hide after_clear">
    <li class="width">
      <nav>
        <a class="selected">网站主题</a>
        <a>网站横幅</a>
        <a>页面版式</a>
        <a>网站设置</a>
        <a>百度优化</a>
      </nav>
      <dl>
        <a class="save" onClick="$('.kenfor_top .head').removeClass('hide');$('.kenfor_top .head1,.kenfor_top .head2').addClass('hide');">保存</a>
        <a class="cancel" onClick="$('.kenfor_top .head').removeClass('hide');$('.kenfor_top .head1,.kenfor_top .head2').addClass('hide');">取消</a>
        <a class="button" title="点击展开设计面板"></a>
      </dl>
    </li>
  </ul>
  <ul class="head2 hide after_clear">
    <li class="width after_clear">
      <div class="panels" style="display:block" title="网站主题">
        <a class="station">极速建站</a>
        <aside>
          <a class="selected">全新主题</a>
          <a>最近使用</a>
        </aside>
        <section>
          <ul class="plate theme">
            <li>
              <ul class="type after_clear">
                <li>
                  <span>版式</span>
                  <a class="selected">全部</a>
                  <a>宽屏</a>
                  <a>普通</a>
                  <a>窄屏</a>
                </li>
                <li>
                  <span>编号</span>
                </li>
                <li>
                  <input type="text" name="num" value="">
                </li>
                <a class="closes">X</a>
              </ul>
              <div class="list scrollbar after_clear" style="height:184px">
                <a class="selected"><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
              </div>
            </li>
            <li>
              <ul class="type after_clear">
                <li>
                  <font>最近使用过的主题：</span>
                </li>
              </ul>
              <div class="list scrollbar after_clear" style="height:184px">
                <a class="selected"><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
                <a><img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="1234"></a>
              </div>
            </li>
          </ul>
        </section>
      </div>
      <div class="panels" data-title="网站横幅">
        <aside>
          <a class="selected">网站横幅</a>
          <a>横幅特效</a>
          <a>最近使用</a>
        </aside>
        <section>
          <ul class="plate banner">
            <li data-title="网站横幅">
              <div class="banner-picture after_clear">
                <ul class="type after_clear">
                  <li>
                    <font>行业：</font>
                  </li>
                  <li>
                    <select name="" id="" style="margin-right:5px">
                      <option value="其它">其它</option>
                    </select>
                  </li>
                  <li>
                    <font>宽高：</font>
                  </li>
                  <li>
                    <select name="" id="" style="margin-right:5px">
                      <option value="986*280">986*280</option>
                    </select>
                  </li>
                  <div class="type-code hide">
                    <li>
                      <font>类型：</font>
                    </li>
                    <li>
                      <select name="" id="banner-picture" style="margin-right:5px">
                        <option value="图片">图片</option>
                        <option value="Flash">Flash</option>
                      </select>
                    </li>
                    <li>
                      <font>编号：</font>
                    </li>
                    <li>
                      <input type="text">
                    </li>
                    <a class="closes">X</a>
                  </div>
                  <li class="picSettingOption" title="更多" onClick="$(this).toggleClass('selected');$(this).prev().toggleClass('hide')"></li>
                  <a class="LinkBtn">设置链接</a>
                  <a class="picBtn">添加图片</a>
                </ul>
                <div class="left">
                  <ul>
                    <li class="has">
                      <img src="http://11104962.s61i.faiusr.com/2/AD0IwuWlBRACGAAg1OTdvgUo3Jnt8QEwgA84vAU!100x100.jpg" alt="123">
                      <a class="edit" title="编辑"></a>
                      <a class="del" title="移除"></a>
                    </li>
                    <li class="jian"></li>
                    <li class="jia"></li>
                    <li></li>
                  </ul>
                </div>
                <div class="scrollbar right list after_clear">
                  <ul>
                    <li class="selected">
                      <img src="http://11104962.s61i.faiusr.com/2/AD0IwuWlBRACGAAg1OTdvgUo3Jnt8QEwgA84vAU!100x100.jpg" alt="123">
                      <a class="del">删除</a>
                    </li>
                    <li>
                      <img src="http://11104962.s61i.faiusr.com/2/AD0IwuWlBRACGAAgz_TdvgUo1ZumvAMwgA84vAU!100x100.jpg" alt="123">
                    </li>
                    <li>
                      <img src="http://0.ss.faisys.com/image/template/bannerPreview/2540.jpg" alt="123">
                    </li>
                  </ul>
                </div>
              </div>
              <div class="banner-flash" style="display:none">
                <ul class="type after_clear">
                  <li>
                    <font>类型：</font>
                  </li>
                  <li>
                    <select name="" id="banner-flash">
                      <option value="Flash">Flash</option>
                      <option value="图片">图片</option>
                    </select>
                  </li>
                </ul>
                <ul class="type after_clear">
                  <li>
                    <font>Flash文件：</font>
                  </li>
                  <li>
                    <a class="add">添加文件</a>
                  </li>
                </ul>
                <ul class="type after_clear">
                  <li>
                    <font>Flash尺寸：</font>
                    <font>宽：</font>
                  </li>
                  <li>
                    <input type="text">
                  </li>
                  <li style="margin-left:5px">
                    <font>像素</font>
                    <font style="margin-left:12px">高：</font>
                  </li>
                  <li>
                    <input type="text">
                  </li>
                  <li style="margin-left:5px">
                    <font>像素：</font>
                  </li>
                </ul>
              </div>
            </li>
            <li data-title="横幅特效">
              <ul class="type after_clear">
                <li>
                  <span>类型：</span>
                  <a class="selected" onClick="check_banner('type1')">动画特效</a>
                  <a onClick="check_banner('type2')">文字特效</a>
                  <a onClick="check_banner('type3')">自定义特效</a>
                </li>
                <li>
                  <span>位置：</span>
                </li>
                <li>
                  <select name="" id="">
                    <option value="默认">默认</option>
                    <option value="靠左">靠左</option>
                    <option value="靠右">靠右</option>
                    <option value="自定义">自定义</option>
                  </select>
                </li>
              </ul>
              <ul class="scrollbar list1 after_clear">
                <li>
                  <a class="banner type1 type2 type3" data-type="B000"></a>
                  <a class="banner1 type1" data-type="B001">
                    <b>B001</b>
                  </a>
                  <a class="banner2 type1" data-type="B002">
                    <b>B002</b>
                  </a>
                  <a class="banner4 type1" data-type="B003">
                    <b>B004</b>
                  </a>
                  <a class="banner5 type1" data-type="B005">
                    <b>B005</b>
                  </a>
                  <a class="banner6 type1" data-type="B006">
                    <b>B006</b>
                  </a>
                  <a class="banner7 type1" data-type="B007">
                    <b>B007</b>
                  </a>
                  <a class="banner8 type1" data-type="B008">
                    <b>B008</b>
                  </a>
                  <a class="banner10 type1" data-type="B010">
                    <b>B010</b>
                  </a>
                  <a class="banner11 type1" data-type="B011">
                    <b>B011</b>
                  </a>
                  <a class="banner13 type1" data-type="B013">
                    <b>B013</b>
                  </a>
                  <a class="banner15 type1" data-type="B015">
                    <b>B015</b>
                  </a>
                  <a class="banner16 type1" data-type="B016">
                    <b>B016</b>
                  </a>
                  <a class="banner17 type1" data-type="B017">
                    <b>B017</b>
                  </a>
                  <a class="banner18 type1" data-type="B018">
                    <b>B018</b>
                  </a>
                  <a class="banner19 type1" data-type="B019">
                    <b>B019</b>
                  </a>
                  <a class="banner20 type1" data-type="B020">
                    <b>B020</b>
                  </a>
                  <a class="banner21 type1" data-type="B021">
                    <b>B021</b>
                  </a>
                  <a class="banner22 type1" data-type="B022">
                    <b>B022</b>
                  </a>
                  <a class="banner23 type1" data-type="B023">
                    <b>B023</b>
                  </a>
                  <a class="banner24 type1" data-type="B024">
                    <b>B024</b>
                  </a>
                  <a class="banner25 type1" data-type="B025">
                    <b>B025</b>
                  </a>
                  <a class="banner26 type1" data-type="B026">
                    <b>B026</b>
                  </a>
                  <a class="banner27 type1" data-type="B027">
                    <b>B027</b>
                  </a>
                  <a class="banner28 type1" data-type="B028">
                    <b>B028</b>
                  </a>
                  <a class="banner29 type1" data-type="B029">
                    <b>B029</b>
                  </a>
                  <a class="banner30 type1" data-type="B030">
                    <b>B030</b>
                  </a>
                  <a class="banner31 type1" data-type="B031">
                    <b>B031</b>
                  </a>
                  <a class="banner32 type1" data-type="B032">
                    <b>B032</b>
                  </a>
                  <a class="banner33 type1" data-type="B033">
                    <b>B033</b>
                  </a>
                  <a class="banner34 type1" data-type="B034">
                    <b>B034</b>
                  </a>
                  <a class="banner35 type2" data-type="B035">
                    <b>B035</b>
                  </a>
                  <a class="banner36 type2" data-type="B036">
                    <b>B036</b>
                  </a>
                  <a class="banner37 type2" data-type="B037">
                    <b>B037</b>
                  </a>
                  <a class="banner38 type2" data-type="B038">
                    <b>B038</b>
                  </a>
                  <a class="banner39 type2" data-type="B039">
                    <b>B039</b>
                  </a>
                  <a class="banner40 type2" data-type="B040">
                    <b>B040</b>
                  </a>
                  <a class="banner41 type2" data-type="B041">
                    <b>B041</b>
                  </a>
                  <a class="banner42 type2" data-type="B042">
                    <b>B042</b>
                  </a>
                  <a class="banner43 type2" data-type="B043">
                    <b>B043</b>
                  </a>
                  <a class="banner44 type2" data-type="B044">
                    <b>B044</b>
                  </a>
                  <a class="banner45 type2" data-type="B045">
                    <b>B045</b>
                  </a>
                  <a class="banner46 type2" data-type="B046">
                    <b>B046</b>
                  </a>
                  <a class="banner47 type3" data-type="B047">
                    <b>B047</b>
                  </a>
                  <a class="banner48 type3" data-type="B048">
                    <b>B048</b>
                  </a>
                  <a class="banner49 type3" data-type="B049">
                    <b>B049</b>
                  </a>
                  <a class="banner50 type3" data-type="B050">
                    <b>B050</b>
                  </a>
                  <a class="banner51 type3" data-type="B051">
                    <b>B051</b>
                  </a>
                  <a class="banner52 type3" data-type="B052">
                    <b>B052</b>
                  </a>
                  <a class="banner53 type3" data-type="B053">
                    <b>B053</b>
                  </a>
                  <a class="banner54 type3" data-type="B054">
                    <b>B054</b>
                  </a>
                  <a class="banner55 type3" data-type="B055">
                    <b>B055</b>
                  </a>
                  <a class="banner56 type3" data-type="B056">
                    <b>B056</b>
                  </a>
                  <a class="banner57 type1" data-type="B057">
                    <b>B057</b>
                  </a>
                  <a class="banner58 type1" data-type="B058">
                    <b>B058</b>
                  </a>
                  <a class="banner59 type1" data-type="B059">
                    <b>B059</b>
                  </a>
                  <a class="banner60 type1" data-type="B060">
                    <b>B060</b>
                  </a>
                  <a class="banner61 type1" data-type="B061">
                    <b>B061</b>
                  </a>
                  <a class="banner62 type1" data-type="B062">
                    <b>B062</b>
                  </a>
                  <a class="banner63 type1" data-type="B063">
                    <b>B063</b>
                  </a>
                  <a class="banner64 type1" data-type="B064">
                    <b>B064</b>
                  </a>
                  <a class="banner65 type1" data-type="B065">
                    <b>B065</b>
                  </a>
                  <a class="banner66 type1" data-type="B066">
                    <b>B066</b>
                  </a>
                  <a class="banner67 type1" data-type="B067">
                    <b>B067</b>
                  </a>
                  <a class="banner69 type1" data-type="B069">
                    <b>B069</b>
                  </a>
                  <a class="banner70 type1" data-type="B070">
                    <b>B070</b>
                  </a>
                  <a class="banner71 type1" data-type="B071">
                    <b>B071</b>
                  </a>
                </li>
              </ul>
            </li>
            <li data-title="最近使用">
              <ul class="type after_clear">
                <li>
                  <font>以下是最近使用的横幅：</font>
                </li>
              </ul>
              <div class="scrollbar list after_clear" style="height:184px">
                <ul>
                  <li class="selected">
                    <img src="http://11104962.s61i.faiusr.com/2/AD0IwuWlBRACGAAg1OTdvgUo3Jnt8QEwgA84vAU!100x100.jpg" alt="123">
                    <a class="del">删除</a>
                  </li>
                  <li class="selected">
                    <img src="http://11104962.s61i.faiusr.com/2/AD0IwuWlBRACGAAg1OTdvgUo3Jnt8QEwgA84vAU!100x100.jpg" alt="123">
                    <a class="del">删除</a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </section>
      </div>
      <div class="panels" data-title="页面版式">
        <aside>
          <a class="selected">标准版式</a>
          <a>自由版式</a>
        </aside>
        <section>
          <ul class="scrollbar plate layout">
            <li class="list after_clear">
              <a class="item1 selected"></a>
              <a class="item2"></a>
              <a class="item3"></a>
              <a class="item4"></a>
              <a class="item5"></a>
              <a class="item5"></a>
              <a class="item7"></a>
              <a class="item8"></a>
              <a class="item9"></a>
              <a class="item10"></a>
              <a class="item11"></a>
              <a class="item12"></a>
            </li>
            <li id="kenfor_layout_content">
              <header>横幅和导航</header>
              <div class="header Modular">1</div>
              <div class="aside_left Modular">
                <span>2</span>
              </div>
              <div class="center">
                <div class="m_top Modular">3</div>
                <div class="m_left Modular">4</div>
                <div class="m_right Modular">5</div>
                <div class="m_bottom Modular">6</div>
              </div>
              <div class="aside_right Modular">
                <span>7</span>
              </div>
              <div class="bottom Modular">8</div>
              <div class="clear"></div>
            </li>
          </ul>
        </section>
      </div>
      <div class="panels" data-title="网站设置">
        <a class="manage">管理栏目</a>
        <aside>
          <a class="selected">基础设置</a>
          <a><em class="bg"></em>高级设置</a>
        </aside>
        <section>
          <ul class="scrollbar plate theme">
            <li class="after_clear">
              <ul class="kenfor_site after_clear" style="float:left; width:49.5%">
                <li class="tn">网站设置</li>
                <li class="text">浏览器标题：</li>
                <li class="input"><input type="text" name="title" value="广东今科道同科技有限公司"></li>
                <li class="clear"></li>
                <li class="text">网站标题/Logo：</li>
                <li class="radio">
                  <input type="radio" name="logo" value="1" checked>
                  <label>显示</label>
                  <input type="radio" name="logo" value="0">
                  <label>隐藏</label>
                </li>
                <li class="text">网站横幅：</li>
                <li class="radio">
                  <input type="radio" name="banner" value="1" checked>
                  <label>显示</label>
                  <input type="radio" name="banner" value="0">
                  <label>隐藏</label>
                </li>
                <li class="clear"></li>
                <li class="text">网站导航：</li>
                <li class="radio">
                  <input type="radio" name="guide" value="1" checked>
                  <label>显示</label>
                  <input type="radio" name="guide" value="0">
                  <label>隐藏</label>
                  <a class="link">[设置]</a>
                </li>
                <li class="text">会员登录条：</li>
                <li class="radio">
                  <input type="radio" name="login" value="1" checked>
                  <label>显示</label>
                  <input type="radio" name="login" value="0">
                  <label>隐藏</label>
                </li>
                <li class="clear"></li>
                <li class="text">网站侧栏：</li>
                <li class="radio">
                  <input type="radio" name="sidebar" value="1" checked>
                  <label>显示</label>
                  <input type="radio" name="sidebar" value="0">
                  <label>隐藏</label>
                </li>
                <li class="clear"></li>
                <li class="text"><a href="http://www.kenfor.com" target="_blank"></a>背景音乐：</li>
                <li class="radio"><a class="link">[设置]</a></li>
                <li class="text"><a href="http://www.kenfor.com" target="_blank"></a>欢迎页：</li>
                <li class="radio"><a class="link">[设置]</a></li>
              </ul>
              <ul class="kenfor_site after_clear" style="float:right; width:49.5%">
                <li class="tn">页面设置</li>
                <li class="text1">当前栏目页面： 首页 [以下设置仅影响此栏目页面]</li>
                <li class="text1" style="float:left; margin-right:8px">
                  <input type="checkbox" name="a1" value="1">
                  本页面独立设置浏览器标题
                </li>
                <li class="input"><input type="text" value="广东今科道同科技股份有限公司" style="width:240px"></li>
                <li class="clear"></li>
                <li class="text1" style="float:left; margin-right:12px"><input type="checkbox" name="a2" value="1">本页面独立设置横幅</li>
                <li class="radio">
                  <input type="radio" name="banner1" value="1">
                  <label>显示</label>
                  <input type="radio" name="banner1" value="0" checked>
                  <label>隐藏</label>
                </li>
                <li class="clear"></li>
                <li class="text1"><input type="checkbox" name="a2" value="1">本页面独立隐藏导航</li>
                <li class="text1" style="float:left; margin-right:12px"><input type="checkbox" name="a2" value="1" checked>本页面独立设置背景样式</li>
                <li class="radio"><a class="link">[设置]</a></li>
              </ul>
            </li>
            <li>
              <ul class="kenfor_site after_clear">
                <li class="tn1">以下设置项保存后生效</li>
                <li class="text1 floatLeft"><input type="checkbox" name="a1" value="1">禁止鼠标右键(防拷贝)</li>
                <li class="text1 floatLeft"><input type="checkbox" name="a1" value="1">使用第三方统计工具<a class="link">[设置]</a>　<span style="color:red">统计代码不能为空</span></li>
                <li class="text1 floatLeft"><input type="checkbox" name="a1" value="1">启用“返回顶部”图标<a class="link">[设置]</a></li>
                <li class="text1 floatLeft"><input type="checkbox" name="a1" value="1">使用第三方在线客服<a class="link">[设置]</a></li>
                <li class="text1 floatLeft"><input type="checkbox" name="a1" value="1">启用网站头像(浏览器图标)<a class="link">[设置]</a></li>
                <li class="text1 floatLeft"><input type="checkbox" name="a1" value="1">网站插件代码(script/meta)<a class="link">[设置]</a></li>
                <li class="text1 floatLeft"><input type="checkbox" name="a1" value="1">启用访问计数器<a class="link">[设置]</a></li>
                <li class="text1 floatLeft"><input type="checkbox" name="a1" value="1">网站认证<a class="link">[设置]</a></li>
                <li class="text1 floatLeft"><input type="checkbox" name="a1" value="1">临时关闭网站<a class="link">[设置]</a></li>
                <li class="clear"></li>
                <li class="text1 floatLeft"><input type="checkbox" name="a1" value="1">网站首页变灰(祈祷)<span style="color:#999">　[管理模式下不显示效果]</span></li>
              </ul>
            </li>
          </ul>
        </section>
      </div>
      <div class="panels" data-title="百度优化">
        <aside>
          <a class="selected">基础设置</a>
          <a><em class="bg"></em>关键词优化</a>
          <a><em class="bg1"></em>高级优化</a>
        </aside>
        <section>
          <ul class="plate">
            <li class="after_clear">
              <div class="seoSetting">
                <span>百度优化任务完成度</span>
                <a href="#">秒变百度排名专家</a>
                <a href="#">案例鉴赏</a>
                <a href="#" class="main">牛邦：中小型企业百度推广神器</a>
              </div>
              <div class="percentum after_clear">
                <em><i style="width:80%"></i></em>
                <span>80%</span>
                <a class="reset">重新检测</a>
                <a href="#" class="more">查看详情</a>
              </div>
              <div style="text-align:left; margin-top:20px">百度收录基础要求</div>
              <ul class="msgList-box">
                <li>拥有顶级域名</li>
                <li>已提交网址到百度平台<a class="link" style="margin-left:30px">[再次提交]</a></li>
              </ul>
            </li>
            <li class="after_clear">
              <ul class="kenfor_site after_clear" style="float:left; width:49.5%">
                <li class="tn">全站关键词</li>
                <li class="text">全站关键词：</li>
                <li class="textarea">
                  <textarea>广东今科道同科技股份有限公司</textarea>
                  <ul>
                    可用3-5个关键词来描述与网站业务相关的内容，多个关键词间用逗号隔开。
                    <a class="link tips">了解更多
                      <div class="keyWordTips top">
                        <p>蜘蛛在抓取网站页面时，网站的关键词能给蜘蛛提示网站的关键内容，搜索引擎也会以网站设置的关键词作为用户搜索结果匹配度的参考，需要与网站标题以及描述互相配合。</p>
                        <b></b>
                      </div>
                    </a>
                  </ul>
                </li>
                <li class="clear"></li>
                <li class="text">全站描述：</li>
                <li class="textarea">
                  <textarea>广东今科道同科技股份有限公司</textarea>
                  <ul>
                    描述内容可包括公司简介、联系方式等
                    <a class="link tips">了解更多
                      <div class="keyWordTips down">
                        <p>网站的页面描述很大程度地影响搜索结果页显示的描述内容，必须与网站的关键词以及标题相互匹配，能让搜索引擎更加认同你网站的质量。</p>
                        <b></b>
                      </div>
                    </a>
                  </ul>
                </li>
              </ul>
              <ul class="kenfor_site after_clear" style="float:right; width:49.5%">
                <li class="tn">页面关键词</li>
                <li class="text1">
                  <input type="checkbox" name="a1" value="1">
                  本页面独立设置关键词
                  <a>
                    <div class="keyWordTips top">
                      <p>特定页面设置独立的关键词，主要是为了让搜索引擎抓取时更清晰的分辨页面类型。产品分类页面并不一定适合使用全站统一的关键词，需要使用更加精准的关键词，让搜索引擎清楚地了解到这个页面是分类页面，使这类页面在搜索结果中的排名更好。</p>
                      <b></b>
                    </div>
                  </a>
                </li>
                <li class="textarea" style="float:none; margin-left:18px">
                  <textarea></textarea>
                </li>
                <li class="text1">
                  <input type="checkbox" name="a1" value="1">
                  本页面独立设置描述
                  <a>
                    <div class="keyWordTips top">
                      <p>特定页面设置独立的描述对搜索引擎更友好，让网站在搜索结果页中显示更精准的描述，同时提升网站排名与用户的点击率。</p>
                      <b></b>
                    </div>
                  </a>
                </li>
                <li class="textarea" style="float:none; margin-left:18px">
                  <textarea></textarea>
                </li>
              </ul>
            </li>
            <li>
              <ul class="kenfor_site after_clear">
                <li class="tn1">以下设置项保存后生效</li>
                <li class="text1">
                  <input type="checkbox" name="a1" value="1">
                  启用网站html静态化
                  <a>
                    <div class="keyWordTips top">
                      <p>静态化页面有利于搜索引擎蜘蛛的爬行抓取，简明的“xxx.html”地址比动态页面地址更便于让用户记忆，静态页面的地址对搜索引擎也更加友好。</p>
                      <b></b>
                    </div>
                  </a>
                </li>
                <li class="text1">
                  <input type="checkbox" name="a1" value="1">
                  启用网站
                  <a>
                    <div class="keyWordTips top">
                      <p>启用网站的sitemap是给搜索引擎的蜘蛛提供一张游览地图说明，sitemap让蜘蛛在访问网站时清晰地了解到网站的结构和页面之间的联系，清楚了解网站页面的层级关系，对提升网站索引有十分大的作用。</p>
                      <b></b>
                    </div>
                  </a>
                </li>
                <li class="text1">
                  <input type="checkbox" name="a1" value="1">
                  启用301跳转
                  <a>
                    <div class="keyWordTips top">
                      <p>301是访问网站服务器的返回状态码之一，能够永久重定向网站页面。永久引导非主域名页面到主域名页面，对于网站的权重引导以及用户体验有很大的作用。</p>
                      <b></b>
                    </div>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </section>
      </div>
    </li>
  </ul>
  <div class="collapse navbar-collapse" id="head-buttons">
    <div class="btn-group btn-group-sm btn-group-layout btn-group-switch" data-toggle="buttons">
      <span class="btn btn-primary active" id="edit">
          <i class="glyphicon glyphicon-pencil"></i>组件编辑
      </span>
      <span class="btn btn-primary" id="sourcepreview">
          <i class="glyphicon glyphicon-eye-open"></i>预览
      </span>
    </div>
    <div class="btn-group btn-group-sm btn-group-layout">
      <button type="button" class="btn btn-primary" data-target="#downloadModal" rel="/build/downloadModal" role="button" data-toggle="modal">
          <i class="glyphicon glyphicon-send"></i>生成代码
      </button>
      <button class="btn btn-primary"  rel="saveHandler" id="save">
          <i class="glyphicon glyphicon-floppy-disk"></i>保存
      </button>
      <button class="btn btn-danger" rel="removeHandler" id="clear">
          <i class="glyphicon glyphicon-trash"></i>清空
      </button>
    </div>
  </div>
</div>
<div id="kenfor_Panel">
<a id="edu_model">模块</a>
<a id="edu_style">样式</a>
</div>
