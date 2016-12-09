<!--在线表单-高级-选项排列方式-->
<link href="assets/js/templates/css/formonline_sup.css" rel="stylesheet">
<div class="clear"></div>

<div class="form-group col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10">
    <div class="formonline_sup_div">
        <div class="formonline_sup_typeForm <% if(field.value=='formonline_sup_typeForm101'){%>formonline_sup_choose<%}%>" data-type="formonline_sup_typeForm101"  >
            <div class="formImg arrangeStyleImg1" ></div>
            <div class="checked"></div>
            <div class="labelDiv"><label for="typeForm">自动排列</label></div>
        </div>
        <div class="formonline_sup_typeForm <% if(field.value=='formonline_sup_typeForm102'){%>formonline_sup_choose<%}%>" data-type="formonline_sup_typeForm102">
            <div class="formImg arrangeStyleImg2" ></div>
            <div class="checked"></div>
            <div class="labelDiv"><label for="typeForm">固定排列</label></div>
        </div>
            
            <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
        
        <script>
        $(document).ready(function(e) {
            $(".formonline_sup_typeForm").click(function(e) {
                $(this).addClass("formonline_sup_choose");
                $(this).prevAll().removeClass("formonline_sup_choose");
                $(this).nextAll().removeClass("formonline_sup_choose");
                $("#${field.name}").val($(this).attr('data-type'));
            });
        });
        </script>
    </div>
  </div>
</div>