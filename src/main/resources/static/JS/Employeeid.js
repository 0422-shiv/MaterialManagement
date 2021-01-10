$(document).ready(function(){
	
	$("#eid").append($("<option>").text("--Employee--"))
	$.get("/fetchEmployeeId",function (data){
		
		$.each(data,function(i,item){
			
			$("#eid").append($("<option>").text(item.employeename).val(item.employeeid))
		})
		
	})
	
})