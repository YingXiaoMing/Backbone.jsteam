${toolbarTemplate(buttons)}
<script src="assets/js/templates/js/jquery.SuperSlide.2.1.1.js"></script>
<style>
.slideBox .hd{ position: absolute; left: 0; bottom: 0; width: 100%; text-align: center; z-index: 500; }
.slideBox .hd ul{ display: inline-block; margin: 0; padding: 0; }
.slideBox .hd li{ background: #BBB; cursor: pointer; float: left; margin: 0 4px; list-style: none; }
.slideBox .hd_style_1 li{ width: 40px; height: 10px; }
.slideBox .hd_style_2 li{ border-radius: 100%; width: 10px; height: 10px; }
.slideBox .hd_style_3{ display: none; }
.slideBox .hd_style_4 li{ width: 10px; height: 10px; }
.slideBox .hd li.on{ background: #777; }
.slideBox .bd ul{ list-style: none; margin: 0; padding: 0; }
.slideBox .bd img{ display: block; }
.slideBox .prevArrow{ background-position: -875px 15px; left: 0; }
.slideBox .nextArrow{ background-position: -860px -100px; right: 0; }
.slideBox .prevArrow,.slideBox .nextArrow{ background-image: url(../design/assets/img/vbg01.png); background-repeat: no-repeat; position: absolute; width: 80px; height: 80px; z-index: 10; top: 50%; margin: -40px 0; }
.kenfor_innerContainer{ min-height: 120px; margin: 0 auto; }
</style>
<%  var wrapStyle = '', innerContainerStyle = '';
    if(dataAttributes.borderMode == 1) {
        wrapStyle += 'border:none;';
    }
    if(dataAttributes.borderMode == 2) {
        if(dataAttributes.border.position=="top-bottom") {
            wrapStyle += 'border-top:' + dataAttributes.border.width + 'px '+ dataAttributes.border.style + ' ' + dataAttributes.border.color +';';
            wrapStyle += 'border-bottom:' + dataAttributes.border.width + 'px '+ dataAttributes.border.style + ' ' + dataAttributes.border.color +';';
        }
        if(dataAttributes.border.position=="top") {
            wrapStyle += 'border-top:' + dataAttributes.border.width + 'px '+ dataAttributes.border.style + ' ' + dataAttributes.border.color +';';
        }
        if(dataAttributes.border.position=="bottom") {
            wrapStyle += 'border-bottom:' + dataAttributes.border.width + 'px '+ dataAttributes.border.style + ' ' + dataAttributes.border.color +';';
        }
    }
    if(dataAttributes.innerBackgroundMode) {
        innerContainerStyle += 'background-color:'+ dataAttributes.innerBackground.color + ';';
        if(dataAttributes.innerBackground.images.src) {
            innerContainerStyle += 'background-image:url(' + dataAttributes.innerBackground.images.src + ');';
        }
        if(dataAttributes.innerBackground.showMode == 0){
            innerContainerStyle += 'background-repeat:no-repeat;';
        }
        if(dataAttributes.innerBackground.showMode == 1){
            innerContainerStyle += 'background-repeat:repeat;';
        }
        if(dataAttributes.innerBackground.showMode == 2){
            innerContainerStyle += 'background-repeat:repeat-x;';
        }
        if(dataAttributes.innerBackground.showMode == 3){
            innerContainerStyle += 'background-repeat:repeat-y;';
        }
    }
    if(dataAttributes.widthMode) {
        innerContainerStyle += 'width:'+ dataAttributes.width +';';
    }
    if(dataAttributes.paddingMode) {
        innerContainerStyle += 'padding:';
        _.map(dataAttributes.paddings,function(item,key) {
            innerContainerStyle += ' ' + item + 'px';
        });
        innerContainerStyle += ';';
    }
%>
<div class="clearfix" style="${wrapStyle}">



    <% if(dataAttributes.columnMode == 0) { %>
    <div class="col-xs-12 kenfor-column kenfor-addible">
        <div class="kenfor_innerContainer sortable" style="${innerContainerStyle}">
        </div>
    </div>
    <% } %>


    <% if(dataAttributes.columnMode != 0) { %>
    <div class="slideBox">
      <% if(dataAttributes.columnMode == 3) { %>
      <div class="hd hide">
      <% }else{ %>
      <div class="hd hd_style_${dataAttributes.columnMode}">
      <% } %>
        <ul>
          <% _.map(dataAttributes.background,function(item,key) { %>
          <li></li>
          <% }) %>
        </ul>
      </div>
      <div class="bd">
          <% _.map(dataAttributes.background,function(item,key) { %>
            <% var containerStyle = '';
                containerStyle += 'background-color:'+ item.color + ';';
                if(item.images.src) {
                    containerStyle += 'background-image:url(' + item.images.src + ');';
                }
                if(item.showMode == 0){
                    containerStyle += 'background-repeat:no-repeat;';
                }
                if(item.showMode == 1){
                    containerStyle += 'background-repeat:repeat;';
                }
                if(item.showMode == 2){
                    containerStyle += 'background-repeat:repeat-x;';
                }
                if(item.showMode == 3){
                    containerStyle += 'background-repeat:repeat-y;';
                }
            %>
            <div>
                <div class="kenfor_innerContainer sortable" style="${containerStyle}" oneColumnSub></div>
            </div>
          <% }) %>
      </div>
      <% if(dataAttributes.columnMode == 3) { %>
          <a class="prevArrow" href="javascript:void(0)"></a>
          <a class="nextArrow" href="javascript:void(0)"></a>
      <% } %>
    </div>
    <script>
		$("#${mdId} .slideBox").slide({
            mainCell: ".bd",
            titCell: ".hd li",
            <% if(dataAttributes.scrollMode == 0) { %>
            autoPlay: false,
            <% } else { %>
            autoPlay: true,
            <% } %>
            effect: "left",
            <% if(dataAttributes.columnMode == 3) { %>
            prevCell: ".prevArrow",
            nextCell: ".nextArrow",
            <% } %>
            interTime: ${dataAttributes.scroll.showTimeLong} * 1000,
            delayTime: ${dataAttributes.scroll.delayTimeLong} * 1000
		});
    </script>
    <% } %>
</div>