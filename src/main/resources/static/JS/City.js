$(document).ready(function(){
	$("#state").change(function(){
		$("#city").empty();
		$.get("/cities",{statename: $("#state").val()},function(data)
				{
					$.each(data,function(i,item){
						
						$("#city").append($("<option>").text(item.cityname))
					})
				})	

		
	})
	
	
})