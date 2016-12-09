<div class="form-group currentTime">
    <label class="${field.labelcls} control-label">${field.label}</label>
    <div class="style_panel ${field.valuecls}">
        <ul id="stylePanel" class="style-panel">
            <li id="style1" class="style-line spcl">
                <label class="style-title">
                    <input value="aa1" name="${field.name}"  type="radio"  data-type="aa1<% if(field.value=='aa1'){%>" checked="true<%}%>" >
                </label>
            </li>
            <li id="style2" class="style-line">
                <label class="style-title">
                    <input value="aa2" name="${field.name}"  type="radio"  data-type="aa2<% if(field.value=='aa2'){%>" checked="true<%}%>" >
                </label>
            </li>
            <li id="style3" class="style-line spcl">
                <label class="style-title">
                    <input value="aa3" name="${field.name}"  type="radio"  data-type="aa3<% if(field.value=='aa3'){%>" checked="true<%}%>" >
                </label>
            </li>
            <li id="style4" class="style-line">
                <label class="style-title">
                    <input value="aa4" name="${field.name}"  type="radio"  data-type="aa4<% if(field.value=='aa4'){%>" checked="true<%}%>" >
                </label>
            </li>
            <li id="style5" class="style-line spcl">
                <label class="style-title">
                    <input value="aa5" name="${field.name}"  type="radio"  data-type="aa5<% if(field.value=='aa5'){%>" checked="true<%}%>" >
                </label>
            </li>
            <li id="style6" class="style-line">
                <label class="style-title">
                    <input value="aa6" name="${field.name}"  type="radio"  data-type="aa6<% if(field.value=='aa6'){%>" checked="true<%}%>" >
                </label>
            </li>
            <li id="style7" class="style-line spcl">
                <label class="style-title">
                    <input value="aa7" name="${field.name}"  type="radio"  data-type="aa7<% if(field.value=='aa7'){%>" checked="true<%}%>" >
                </label>
            </li>
            <li id="style8" class="style-line">
                <label class="style-title">
                    <input value="aa8" name="${field.name}"  type="radio"  data-type="aa8<% if(field.value=='aa8'){%>" checked="true<%}%>" >
                </label>
             </li>
        </ul>
    </div>
    <div class="clear"></div>
    <input type="hidden" class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" name="${field.name}" id="${field.name}" value="${field.value}">
</div>

<style>
.clear{
    clear:both;
    height:0;
    display:block;
}
.currentTime{
    height:260px;
    margin-top:10px;
}
.currentTime .style-panel {
    border: 1px solid  #7f9db9;
    float: left;
    height: auto;
    list-style: outside none none;
    padding: 2px 0;
    width: 375px;
}
.currentTime .style-panel .style-line {
    cursor: pointer;
    height: 22px;
    line-height: 22px;
    margin: 2px;
    padding: 0 2px;
}
.currentTime .style-panel .style-line .style-title{
    font-size:12px;
    font-weight: normal;
}
.currentTime .style-panel .spcl {
    background-color: #f8fafd;
}
</style>

<script>
    var d = new Date();
    var year = d.getFullYear();
    var month = d.getMonth() + 1;
    if(month >= 0 && month <= 9) {
        month = "0" + month;
    }
    var day = d.getDate();
    if(day >= 0 && day <= 9) {
        day = "0" + day;
    }
    var hours =d.getHours();
    if(hours >= 0 && hours <= 9) {
        hours = "0" + hours;
    }
    var minutes = d.getMinutes();
    if(minutes >= 0 && minutes <= 9) {
        minutes = "0" + minutes;
    }
    var seconds = d.getSeconds();
    if(seconds >= 0 && seconds <= 9) {
            seconds = "0" + seconds;
    }
    var weekday = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
    var week = weekday[d.getDay()];
    var weekday1 = new Array("星期天","星期一","星期二","星期三","星期四","星期五","星期六");
    var week1 = weekday1[d.getDay()];
    value1 = year + "年" + month + "月" + day + "日" + " " +  week1;
    value2 = year + "年" + month + "月" + day + "日" + " " + hours + ":" + minutes ;
    value3 = year + "年" + month + "月" + day + "日" + " "  + week1  + " " + hours + ":" + minutes ;
    value4 = year + "-" + month + "-" + day ;
    value5 = year + "-" + month + "-" + day + " " + hours + ":" + minutes ;
    value6 = month + "/" + day + "/" + year + " " +  week ;
    value7 = month + "/" + day + "/" + year + " " +  hours + ":" + minutes ;
    value8 = month + "/" + day + "/" + year + " "  +  week + " " +  hours + ":" + minutes ;
    $(document).ready(function(){
        $("#style1 label").append(value1);
        $("#style2 label").append(value2);
        $("#style3 label").append(value3);
        $("#style4 label").append(value4);
        $("#style5 label").append(value5);
        $("#style6 label").append(value6);
        $("#style7 label").append(value7);
        $("#style8 label").append(value8);

        $(".currentTime .style_panel ul li label input").click(function(e) {
            $(this).attr("selected",true);
            $(this).prevAll().removeAttr("selected");
            $(this).nextAll().removeAttr("selected");
            $("#${field.name}").val($(this).attr('data-type'));
        });
    });
</script>