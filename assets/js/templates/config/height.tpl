<!--高度-->
<div class="form-group ${field.cls}">
<style>
.padding{width:100%;}
.padding_t{ font-size:14px; line-height:30px; font-weight:bold; padding-left:5px;}
.padding_select{ clear:both; overflow:hidden; padding:5px;}
.padding_select >p{ float:left; margin:0px;line-height:24px; margin-right:10px;}
.padding_select >p >input{ float:left; margin:0px; margin-top:5px; margin-right:5px;}
.padding >ul{ display:none; padding-left:5px; }
.padding >ul >li{display:inline-block;float:left;padding-right:15px; line-height:30px; font-size:16px;}
.padding >ul >li >span{float:left;line-height:30px;padding-right:5px;}
.padding >ul >li >input{float:left;border:1px solid #ccc;background:#fff;width:60px; margin-right:5px;line-height:20px; overflow:hidden;}
</style>
<div class="padding">
    <div class="padding_t">${field.label}</div>
    <div class="padding_select">
        <p><input type="radio" name="${field.name}" id="${field.type}_1" onChange="document.getElementById('${field.type}').style.display='none'" checked/>默认</p>
        <p><input type="radio" name="${field.name}" id="${field.type}_2" onChange="document.getElementById('${field.type}').style.display='block'"/>自定义</p>
    </div>
    <ul id="${field.type}" class="box">
        <li>
            <span>${field.label}</span>
            <input class='form-control field' data-type="${field.type}" type='text' name='${field.name}' id='${field.name}' value ='${field.value}' onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/> px
        </li>
    </ul>
</div>  
</div>
