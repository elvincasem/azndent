
function addapr(){
	
			$('#updateapr').prop("disabled", true);    
			$('#saveproject').prop("disabled", false);    
			
}

function saveitem(){
	
	$('#saveitembutton').prop("disabled", true);    
	var itemname = document.getElementById("itemname").value;
	var part_number = document.getElementById("part_number").value;
	var application = document.getElementById("application").value;
	var price = document.getElementById("price").value;
	
	var itemdescription = document.getElementById("itemdescription").value;
	var unitofmeasure = document.getElementById("unitofmeasure").value;
	var unitcost = document.getElementById("unitcost").value;
	var category = document.getElementById("category").value;
	var supplierid = document.getElementById("supplierid").value;
	var brand = document.getElementById("brand").value;
	var warehouseid = document.getElementById("warehouseid").value;
	
	$.ajax({
		url: 'items/saveitem',
		type: 'post',
		data: {itemdescription: itemdescription,unitofmeasure:unitofmeasure,unitcost:unitcost,category:category,supplierid:supplierid,brand:brand,warehouseid:warehouseid,itemname:itemname,part_number:part_number,application:application,price:price},
		success: function(response) {
			//console.log(response);
			location.reload();
			
		}
	});
	
}

function deleteitem(id){
	
	var r = confirm("Are your sure you want to delete this item?");
    if (r == true) {
        //alert ("You pressed OK!");
		var person = prompt("Please enter Administrator Password");
		if (person =='superadmin') {
		$.ajax({
                    url: 'items/deleteitem',
                    type: 'post',
                    data: {itemno: id},
                    success: function(response) {
						console.log(response);
						location.reload();
						//$('#general-table').load(document.URL +  ' #general-table');
                    }
                });
		}else{
			alert("Invalid Password");
		}
		
    } if(r == false) {
        //txt = "You pressed Cancel!";
		
    }
	
}

function updateitem(){
	
	$('#saveitembutton').prop("disabled", true);    
	//var unitcost = document.getElementById("unitcost").value;
	var itemno = document.getElementById("itemno").value;
	
	var description = document.getElementById("description").value;
	var category = document.getElementById("category").value;
	var brand = document.getElementById("brand").value;
	var supplierid = document.getElementById("supplierid").value;
	var unit = document.getElementById("unitofmeasure").value;
	var purchase_unit = document.getElementById("purchase_unit").value;
	var purchase_qty_equivalent = document.getElementById("purchase_qty_equivalent").value;
	
	$.ajax({
		url: '../updateitem',
		type: 'post',
		data: {itemno:itemno,description:description,category:category,brand:brand,supplierid:supplierid,unit:unit,purchase_unit:purchase_unit,purchase_qty_equivalent:purchase_qty_equivalent},
		success: function(response) {
			console.log(response);
			//location.reload();
			$.bootstrapGrowl('<h4><strong>Success!</strong></h4> <p>Item Updated!</p>', {
				type: 'success',
				delay: 3000,
				allow_dismiss: true,
				offset: {from: 'top', amount: 20}
			});
			
		}
	});
	
}

function updatecost(){
	
	$('#saveitembutton').prop("disabled", true);    
	var unitcost = document.getElementById("unitcost").value;
	var itemno = document.getElementById("itemno").value;
	
	
	
	$.ajax({
		url: '../updatecost',
		type: 'post',
		data: {itemno:itemno,unitcost:unitcost},
		success: function(response) {
			console.log(response);
			//location.reload();
			$.bootstrapGrowl('<h4><strong>Success!</strong></h4> <p>Item Updated!</p>', {
				type: 'success',
				delay: 3000,
				allow_dismiss: true,
				offset: {from: 'top', amount: 20}
			});
			
		}
	});
	
}

function updateprice(){
	
	$('#saveitembutton').prop("disabled", true);    
	var price = document.getElementById("price").value;
	var itemno = document.getElementById("itemno").value;
	
	
	
	$.ajax({
		url: '../updateprice',
		type: 'post',
		data: {itemno:itemno,price:price},
		success: function(response) {
			console.log(response);
			//location.reload();
			$.bootstrapGrowl('<h4><strong>Success!</strong></h4> <p>Item Updated!</p>', {
				type: 'success',
				delay: 3000,
				allow_dismiss: true,
				offset: {from: 'top', amount: 20}
			});
			
		}
	});
	
}

function uploadimage(){
	
	//$('#saveitembutton').prop("disabled", true);    
	var unitcost = document.getElementById("itemimage").value;
	//var itemno = document.getElementById("itemno").value;
	
	$.ajax({
		url: '../do_upload',
		type: 'post',
		data: {itemno:itemno,unitcost: unitcost},
		success: function(response) {
			//console.log(response);
			location.reload();
			
		}
	});
	
}

function downloaditem(){
	
	    
	var warehouseid = document.getElementById("warehouseidmodal").value;
	//alert(warehouseid);
	window.location.href = 'items/downloaditem/'+warehouseid;
	/*
	$.ajax({
		url: 'items/downloaditem/'+warehouseid,
		type: 'post',
		//data: {warehouseid: warehouseid},
		success: function(response) {
			//console.log(response);
			//location.reload();
			
		}
	});*/
	
}
