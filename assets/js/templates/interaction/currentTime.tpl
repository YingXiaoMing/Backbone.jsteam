<!--在前端显示当前时间-->
${toolbarTemplate(buttons)}
<div class="view">
    <div style=" width:156px; height:20px; margin:0 auto;overflow: hidden">
        <div id = "kenfor_time"> </div>
    </div>
</div>
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
        <% if(cpAttributes.tab1.value.buttonstyle.value == 'aa1'){%>
            $("#kenfor_time").html(value1);
        <%} else if(cpAttributes.tab1.value.buttonstyle.value == 'aa2'){%>
            $("#kenfor_time").html(value2);
        <%} else if(cpAttributes.tab1.value.buttonstyle.value == 'aa3'){%>
            $("#kenfor_time").html(value3);
        <%} else if(cpAttributes.tab1.value.buttonstyle.value == 'aa4'){%>
            $("#kenfor_time").html(value4);
        <%} else if(cpAttributes.tab1.value.buttonstyle.value == 'aa5'){%>
            $("#kenfor_time").html(value5);
        <%} else if(cpAttributes.tab1.value.buttonstyle.value == 'aa6'){%>
            $("#kenfor_time").html(value6);
        <%} else if(cpAttributes.tab1.value.buttonstyle.value == 'aa7'){%>
            $("#kenfor_time").html(value7);
        <%} else if(cpAttributes.tab1.value.buttonstyle.value == 'aa8'){%>
            $("#kenfor_time").html(value8);
        <%}%>
    });
</script>