<!--魔方多图-->
${toolbarTemplate(buttons)}
<link href="../assets/js/templates/css/photoMore.css" rel="stylesheet"/>
<script>
$(document).ready(function () {
 //默认样式
 $(".imageEffects").css({"opacity":"0"});
 //鼠标移入样式
 $(".imageEffects").mouseover(function () {
  $(this).css({"opacity":"1"});
  $(".imageEffects_FullMaks").css({"background":"rgba(0, 0, 0, 0.41) none repeat scroll 0% 0%"});
  $(".imageEffects_HalfMaks").css({});
 });
 //鼠标移开样式
 $(".imageEffects").mouseout(function () {
 $(".imageEffects").css({"opacity":"0"});
 });
});
</script>
<div class="view"> 
  <!--魔方多图开始-->
  <div class="photoMore_box">
    <div class="${cpAttributes.tab1.value.photoMore.value}">
      <div class="photoMoreCardTable"> 
        <!--cardTr0-->
        <div class="cardTr0">
          <div class="moreCardTd moreCardTd0">
            <div class="photoMoreCard photoMoreCard0" id="imgcontainer">
              <div class="cardDiv cardDivEffect"><img class="cardImg cardImgView"  src="http://2.ss.faisys.com/image/materialLib/illustration/000004.jpg">
<div class="imageEffects imageEffectsAnimate ${cpAttributes.tab2.value.imageEffects.value}" style="top:0px; z-index: 1; left: 0px; width: 150px; height: 150px;"></div>            

              </div>
            </div>
          </div>
          <div class="moreCardTd moreCardTd1">
            <div class="photoMoreCard photoMoreCard1">
              <div class="cardDiv cardDivEffect"><img class="cardImg cardImgView" src="http://2.ss.faisys.com/image/materialLib/illustration/000003.jpg">
<div class="imageEffects imageEffectsAnimate ${cpAttributes.tab2.value.imageEffects.value}" style="top:0px; z-index: 1; left: 0px; width: 150px; height: 150px;"></div>     
              </div>
            </div>
          </div>
          
        </div>
        <!--cardTr0--> 
        <!--cardTr1-->
        <div class="cardTr1">
          <div class="moreCardTd moreCardTd2">
            <div class="photoMoreCard photoMoreCard2">
              <div class="cardDiv cardDivEffect"><img class="cardImg cardImgView" src="http://2.ss.faisys.com/image/materialLib/illustration/000002.jpg">
<div class="imageEffects imageEffectsAnimate ${cpAttributes.tab2.value.imageEffects.value}" style="top:0px; z-index: 1; left: 0px; width: 150px; height: 150px;"></div>     
              </div>
            </div>
          </div>
          <div class="moreCardTd moreCardTd3">
            <div class="photoMoreCard photoMoreCard3">
              <div class="cardDiv cardDivEffect"><img class="cardImg cardImgView" src="http://2.ss.faisys.com/image/materialLib/illustration/000001.jpg">
<div class="imageEffects imageEffectsAnimate ${cpAttributes.tab2.value.imageEffects.value}" style="top:0px; z-index: 1; left: 0px; width: 150px; height: 150px;"></div>     
              </div>
            </div>
          </div>
<div class="moreCardTd moreCardTd4">
            <div class="photoMoreCard photoMoreCard4">
              <div class="cardDiv cardDivEffect"><img class="cardImg cardImgView" src="http://2.ss.faisys.com/image/materialLib/illustration/000001.jpg"></div>
            </div>
          </div>
<div class="moreCardTd moreCardTd5">
            <div class="photoMoreCard photoMoreCard5">
              <div class="cardDiv cardDivEffect"><img class="cardImg cardImgView" src="http://2.ss.faisys.com/image/materialLib/illustration/000001.jpg"></div>
            </div>
          </div>
<div class="moreCardTd moreCardTd6">
            <div class="photoMoreCard photoMoreCard6">
              <div class="cardDiv cardDivEffect"><img class="cardImg cardImgView" src="http://2.ss.faisys.com/image/materialLib/illustration/000001.jpg"></div>
            </div>
          </div>
        </div>
        <!--cardTr1--> 
      </div>
    </div>
  </div>
  <!--魔方多图结束--> 
</div>