<div class="form-group keyword col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10" style="line-height:5px">
    <input type="text" value="" maxlength="10" size="10">
    <input type="text" value="" maxlength="10" size="10">
    <input type="text" value="" maxlength="10" size="10">
    <input type="text" value="" maxlength="10" size="10">
    <input type="text" value="" maxlength="10" size="10">
    <br><br>
    <input type="text" value="" maxlength="10" size="10">
    <input type="text" value="" maxlength="10" size="10">
    <input type="text" value="" maxlength="10" size="10">
    <input type="text" value="" maxlength="10" size="10">
    <input type="text" value="" maxlength="10" size="10">
    <div style="font-size:12px; line-height:24px; color:#99999f">最长5个汉字、10个字母</div>
  </div>
  <input type='hidden' class='field' data-type="${field.type}" data-savetype="${field.savetype}" name='${field.name}' id='${field.name}' value='${field.value}' />
</div>
<script>
$(document).ready(function(e) {
	var a=$(".keyword .col-xs-10");
		kwtext=[${field.value}];
	a.find("input").each(function(index, element) {
		for(var i=0;i<kwtext.length;i++){
			if(index==i){
				$(this).val(kwtext[i]);
			}
		}
	});
    a.find("input").keyup(function(e) {
		var kw="";num=0;
		a.find("input").each(function(index, element) {
			var text=$(this).val();
			if(text!=''){
				num=Number(num)+1;
				if(num!=1){
					kw+=",";
				}
				kw+='"'+text+'"';
			}
        });
		$("#${field.name}").val(kw);
    });
});
</script>