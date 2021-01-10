$(document).ready(function(){
	
	$("#pid").append($("<option>").text("--Product--"))
	$.get("/fetchProductId",function (data){
		
		$.each(data,function(i,item){
			
			$("#pid").append($("<option>").text(item.productname).val(item.productid))
		})
		
	})
	$("#pid").change(function(){
		
		$.get("/SearchProductByID",{pid:$("#pid").val()},function(data){
			
			$("#stockinfo").html("<font color='green'>Current Stock :"+data[0].productstock+"</font>")
		})
	})
	
})