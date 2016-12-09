<script>
$("#my_modal").draggable({
	cursor: "move",
	handle: '.modal-header'
});
</script>
<div class="modal-dialog ${modalCls}" id="my_modal">
	<div class="modal-content">
    <% if (title) { %>
      <div class="modal-header">
        <% if (allowCancel) { %>
          <a class="close">&times;</a>
        <% } %>
        <h4 class="modal-title">${title}</h4>
      </div>
    <% } %>
    <div class="modal-body"></div>
    <% if (showFooter) { %>
      <div class="modal-footer">
        <a href="#" class="btn ok btn-primary">${okText}</a>
        <% if (allowCancel) { %>
          <% if (cancelText) { %>
            <a href="#" class="btn cancel btn-danger">${cancelText}</a>
          <% } %>
        <% } %>
      </div>
    <% } %>
    </div>
</div>