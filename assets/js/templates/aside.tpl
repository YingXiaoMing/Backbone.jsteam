    <div class="kenfor_sidebar" >
      <nav class="after_clear">
        <a data-tab="#addModule" id="Module" class="list bg1 hover">添加模块</a>
        <a data-tab="#useModule" id="Module2" class="list bg2">栏目模块</a>
        <a data-tab="#setSiteStyle" id="SiteStyle" class="list bg3">网站样式</a>
        <a id="close_nav" class="close_nav">关闭</a>
      </nav>
      <div class="sidebar_tab">
        <div class="stab_con" id="addModule">
          <ul class="type_list nav">
          	<%_.each(fields,function(item,i){ %>
            	<li class="<% if(i=='0'){%>active<% }%>"><a href="#${item.groupId}">${item.groupName}</a></li>
            <% }); %>
          </ul>
          <div class="sideBarButton scrollbar"></div>
        </div>
        <div class="stab_con" id="useModule">22222</div>
        <div class="stab_con" id="setSiteStyle">
        	<ul class="type_list">
        	<% var k=0;
            	
             _.each(styles.cpStyle,function(style,i){
            	
             %>
            	<li class="<% if(k=='0'){%>active<% }%>"><a data-tab="#globalstyle_${k}" data-category="#setSiteStyle">${style.tabname}</a></li>
            <% 
            	k++;
            }); %>
            </ul>
            <div class="globalstyle scrollbar">
            	<%
                var k=0;
                _.each(styles.cpStyle,function(style,key){ 
                 %>
                 	<div class="nav_info" style="<% if(!k=='0') {%>display:none;<% }%>" id="globalstyle_${k}">
                        <div class="nav-list">
                            <span>${style.tabname}</span>
                            <% var compiled = "";
                           $.each(style.value,function(name,item){
                                item.name = key+'__value__'+ name;
                                compiled = compiled + configTemplates[item["type"]]({field:item,list:item.name,separator:"__",configTemplates:configTemplates});
                           }); %>
                        ${compiled} 
                        </div>
                    </div>
                 <%
                 	k++;
                  }); %>
            </div>
        </div>
      </div>
      <div class="kenfor_sh"></div>
    </div>

<script>
$('.sideBarButton').scrollspy({ target: '#addModule'});
</script>

