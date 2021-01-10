$(document).ready(function()
		{
		$.get("/states",function(data)
		{
			$("#state").append($("<option>").text("--State--"))
			$("#city").append($("<option>").text("--City--"))
			
			
			$.each(data,function(i,item){
				
				$("#state").append($("<option>").text(item.statename))
			})
		})	
		})
		