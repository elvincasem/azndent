function editfooter(id){
	
	//$('#savebutton').prop("disabled", true);    
		$.ajax({
		url: 'customreport/getsinglefooter',
		type: 'post',
		data: {footerid: id},
		success: function(response) {
			console.log(response);
			var data = JSON.parse(response);
			//console.log(response);
			//location.reload();
			document.getElementById("reportmodule").value = data.reportmodule;
			document.getElementById("divposition").value = data.divposition;
			//document.getElementById("textarea-ckeditor").innerHTML = data.content;
			document.getElementById("footerid").value = id;
			
			CKEDITOR.instances.content.setData(data.content);
			
		}
	});
	
}

function updatefooter(){
	//alert("test");
	var footerid = document.getElementById("footerid").value;
	//var content = document.getElementById("content").value;
	var content = CKEDITOR.instances.content.getData();
	
	$.ajax({
		url: 'customreport/updatefooter',
		type: 'post',
		data: {footerid:footerid,content:content},
		success: function(response) {
			console.log(response);
			
			location.reload();
			
		}
	});
	
}

