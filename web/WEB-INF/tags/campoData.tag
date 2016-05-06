
<%@ attribute name="id" required="true"%>

<input id="${id}" name="${id}" type="text" class="form-control">



<script>
var $j = jQuery.noConflict();
$j("#${id}").datepicker({
	dateFormat : 'dd/mm/yy'
});
</script>