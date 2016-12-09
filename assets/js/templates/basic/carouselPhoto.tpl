${toolbarTemplate(buttons)}
<div class="view"> 
  <script type="text/javascript" src="assets/js/templates/js/jquery.SuperSlide.2.1.1.js"></script>
  <div style=" width:452px; margin:0 auto;">
    <% if(cpAttributes.tab1.value.carouselPhoto.value=='carouselPhoto1'){%>
    <!--圆点轮播开始-->
    <style type="text/css">
		.slideBox{ width:450px; height:230px; overflow:hidden; position:relative; border:1px solid #ddd;  }
		.slideBox .hd{ height:27px; overflow:hidden; position:absolute; left:0px;bottom:0px; z-index:1; width:100%;background: #000;
opacity:0.7;fiter: alpha(opacity=70);}
		.slideBox .hd ul{ overflow:hidden; zoom:1;list-style:none; margin-top:9px;}
		.slideBox .hd ul li{float:left;position: relative;    display: inline;overflow: hidden;width: 10px;height: 10px;border-radius: 50%;margin:0px 4px;
background: #e8e8e8;filter: alpha(opacity=50);opacity: .5;cursor: pointer;zoom: 1; }
		.slideBox .hd ul li.on{background: #fff;display: inline-block;opacity: 1;fiter: alpha(opacity=100);width: 10px;height: 10px;}
		.slideBox .bd{ position:relative; height:100%; z-index:0;}
		.slideBox .bd ul{list-style:none;margin:0px; padding:0px;}
		.slideBox .bd li{ zoom:1; vertical-align:middle;  list-style:none; }
		.slideBox .bd img{ width:450px; height:230px; display:block;  }
		.slideBox .prevStop{ display:none;  }
		.slideBox .nextStop{ display:none;  }
		</style>
    <div id="slideBox" class="slideBox">
      <div class="hd">
        <ul>
          <li></li>
          <li></li>
          <li></li>
        </ul>
      </div>
      <div class="bd">
        <ul>
          <li><a href="#" target="_blank"><img src="http://kenfor.com/kps01/M00/AC/48/wKiAiVaYrGnLXyqbAAIxGuPYqWA562.jpg" /></a></li>
          <li><a href="#" target="_blank"><img src="http://kenfor.com/kps01/M00/E2/27/wKiAiVeMahWq7WjEAANsGc-cfFs045.jpg" /></a></li>
          <li><a href="#" target="_blank"><img src="http://images02.cdn86.net/kps01/M00/4C/A2/wKiAiVUP2yzKWygJAALwGlNmXyM626.png" /></a></li>
        </ul>
      </div>
      <a class="prev" href="javascript:void(0)"></a> <a class="next" href="javascript:void(0)"></a> </div>
    <script type="text/javascript">
		jQuery(".slideBox").slide({mainCell:".bd ul",autoPlay:'${cpAttributes.tab3.value.a.value}',effect:'fold',interTime:'${cpAttributes.tab3.value.a.listvalue1.time1.value}',delayTime:'${cpAttributes.tab3.value.a.listvalue1.time2.value}'});
		</script> 
    <!--圆点轮播结束-->
    <%} else if(cpAttributes.tab1.value.carouselPhoto.value=='carouselPhoto2'){%>
    <!--数字轮播开始-->
    <style type="text/css">
		.slideBox{ width:450px; height:230px; overflow:hidden; position:relative; border:1px solid #ddd;  }
		.slideBox .hd{ height:27px; overflow:hidden; position:absolute; left:0px;bottom:0px; z-index:1; width:100%;background: #000;
opacity:0.7;fiter: alpha(opacity=70);}
		.slideBox .hd ul{ overflow:hidden; zoom:1; float:right;list-style:none;}
		.slideBox .hd ul li{ float:left; margin-right:2px;  width:15px; height:15px; line-height:14px; text-align:center; background:#fff; cursor:pointer;list-style:none; margin-top:7px;}
		.slideBox .hd ul li.on{ background:#f00; color:#fff; }
		.slideBox .bd{ position:relative; height:100%; z-index:0;}
		.slideBox .bd ul{list-style:none; margin:0px; padding:0px;}
		.slideBox .bd li{ zoom:1; vertical-align:middle;list-style:none;}
		.slideBox .bd img{ width:450px; height:230px; display:block;  }
		</style>
    <div id="slideBox" class="slideBox">
      <div class="hd">
        <ul>
          <li>1</li>
          <li>2</li>
          <li>3</li>
        </ul>
      </div>
      <div class="bd">
        <ul>
          <li><a href="#" target="_blank"><img src="http://kenfor.com/kps01/M00/AC/48/wKiAiVaYrGnLXyqbAAIxGuPYqWA562.jpg" /></a></li>
          <li><a href="#" target="_blank"><img src="http://kenfor.com/kps01/M00/E2/27/wKiAiVeMahWq7WjEAANsGc-cfFs045.jpg" /></a></li>
          <li><a href="#" target="_blank"><img src="http://images02.cdn86.net/kps01/M00/4C/A2/wKiAiVUP2yzKWygJAALwGlNmXyM626.png" /></a></li>
        </ul>
      </div>
    </div>
    <script type="text/javascript">
		jQuery(".slideBox").slide({mainCell:".bd ul",autoPlay:'${cpAttributes.tab3.value.a.value}',interTime:'${cpAttributes.tab3.value.a.listvalue1.time1.value}',delayTime:'${cpAttributes.tab3.value.a.listvalue1.time2.value}'});
		</script> 
    
    <!--数字轮播结束-->
    <%} else if(cpAttributes.tab1.value.carouselPhoto.value=='carouselPhoto3'){%>
    <!--大图预览开始-->
    <style type="text/css">
		.picFocus{ margin:0 auto;  width:450px; border:1px solid #ccc;position:relative;  overflow:hidden;  zoom:1;   }
		.picFocus .hd{ width:100%; padding-top:5px;  overflow:hidden; }
		.picFocus .hd ul{ margin-right:-5px;  overflow:hidden; zoom:1; }
		.picFocus .hd ul li{ padding-top:5px; float:left;  text-align:center;list-style:none;}
		.picFocus .hd ul li img{ width:109px; height:65px; border:2px solid #ddd; cursor:pointer; margin-right:5px;   }
		.picFocus .hd ul li.on{ background:url("images/icoUp.gif") no-repeat center 0; }
		.picFocus .hd ul li.on img{ border-color:#f60;  }
		.picFocus .bd ul{list-style:none;margin:0px; padding:0px;}
		.picFocus .bd li{ vertical-align:middle;list-style:none;}
		.picFocus .bd img{ width:450px; height:230px; display:block;  }

		</style>
    <div class="picFocus">
      <div class="bd">
        <ul>
          <li><a href="#" target="_blank"><img src="http://kenfor.com/kps01/M00/AC/48/wKiAiVaYrGnLXyqbAAIxGuPYqWA562.jpg" /></a></li>
          <li><a href="#" target="_blank"><img src="http://kenfor.com/kps01/M00/E2/27/wKiAiVeMahWq7WjEAANsGc-cfFs045.jpg" /></a></li>
          <li><a href="#" target="_blank"><img src="http://images02.cdn86.net/kps01/M00/4C/A2/wKiAiVUP2yzKWygJAALwGlNmXyM626.png" /></a></li>
        </ul>
      </div>
      <div class="hd">
        <ul>
          <li><img src="http://kenfor.com/kps01/M00/AC/48/wKiAiVaYrGnLXyqbAAIxGuPYqWA562.jpg" /></li>
          <li><img src="http://kenfor.com/kps01/M00/E2/27/wKiAiVeMahWq7WjEAANsGc-cfFs045.jpg" /></li>
          <li><img src="http://images02.cdn86.net/kps01/M00/4C/A2/wKiAiVUP2yzKWygJAALwGlNmXyM626.png" /></li>
        </ul>
      </div>
    </div>
    <script type="text/javascript">jQuery(".picFocus").slide({ mainCell:".bd ul",effect:"leftLoop",autoPlay:'${cpAttributes.tab3.value.a.value}',interTime:'${cpAttributes.tab3.value.a.listvalue1.time1.value}',delayTime:'${cpAttributes.tab3.value.a.listvalue1.time2.value}'});</script> 
    <!--大图预览结束-->
    <%}%>
  </div>
</div>
