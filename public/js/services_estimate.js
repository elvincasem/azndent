
function addestimate(){
	
			
			//check duplicate aprno
			$.ajax({
			url: 'estimate/saveestimate',
			type: 'post',
			//data: {aprno: aprno},
			success: function(response) {
				//console.log(response);
				var lastid = JSON.parse(response);
				window.location.href = "estimate/details/"+lastid;
				
			}
			});
			//saveapr
			

}	



function deletelabor(id){
	
	var r = confirm("Are your sure you want to delete this labor?");
    if (r == true) {
        //alert ("You pressed OK!");
		
		
		$.ajax({
                    url: '../deletelabor',
                    type: 'post',
                    data: {laborserviceid: id},
                    success: function(response) {
					$('#general-table').load(document.URL +  ' #general-table');
                    }
                });
		
    } if(r == false) {
        //txt = "You pressed Cancel!";
		
    }
	
}


function savelaborcost(id){
	
		var ls_amount = document.getElementById("laboritem-"+id).value;
			
			//check duplicate aprno
			$.ajax({
			url: '../savelaborcost',
			type: 'post',
			data: {laborserviceid: id,ls_amount:ls_amount},
			success: function(response) {
				//console.log(response);

				$('#general-table').load(document.URL +  ' #general-table');
				
			}
			});
			//saveapr
			

}	


function updateestimate(){
	//alert('enter key is pressed');
		var estimate_date = document.getElementById("estimate_date").value;
		var estimateid = document.getElementById("estimateid").value;
		var customerid = document.getElementById("customerid").value;
		var platenumber = document.getElementById("platenumber").value;
		var vehicletype = document.getElementById("vehicletype").value;
		
		//get item details
		$.ajax({
			url: '../updateestimate',
			type: 'post',
			data: {estimateid: estimateid,estimate_date:estimate_date,customerid:customerid,platenumber:platenumber,vehicletype:vehicletype},
			success: function(response) {
				console.log(response);
				$.bootstrapGrowl('<h4><strong>Success!</strong></h4> <p>Estimate Updated!</p>', {
				type: 'success',
				delay: 3000,
				allow_dismiss: true,
				offset: {from: 'top', amount: 20}
				});
			}
		});
}


function displayamount(){
	laborid = document.getElementById("laborservices").value;
	//get item details
		$.ajax({
			url: '../getlabordetails',
			type: 'post',
			data: {laborid: laborid},
			success: function(response) {
				//console.log(response);
				var data = JSON.parse(response);
				//console.log(data);
				document.getElementById("laboramount").value=data[0].laborcost;
			
			}
		});
		
}

function addlabor_list(){
	
			laboramount = document.getElementById("laboramount").value;
			estimateid = document.getElementById("estimateid").value;
			laborid = document.getElementById("laborservices").value;
			
			$.ajax({
			url: '../addlabor_list',
			type: 'post',
			data: {estimateid: estimateid,laboramount:laboramount,laborid:laborid},
			success: function(response) {
				//console.log(response);
				$.bootstrapGrowl('<h4><strong>Success!</strong></h4> <p>Estimate Updated!</p>', {
				type: 'success',
				delay: 3000,
				allow_dismiss: true,
				offset: {from: 'top', amount: 20}
				});
				
				$('#general-table').load(document.URL +  ' #general-table');
				
			}
			});
			
			

}	
function savenewcustomer(){
	
	cfullname = document.getElementById("cfullname").value;
	caddress = document.getElementById("caddress").value;
	ccontactno = document.getElementById("ccontactno").value;
	ccompany = document.getElementById("ccompany").value;
	
	if(cfullname==""){
		$.bootstrapGrowl('<h4><strong>Error!</strong></h4> <p>Full Name must not be empty!</p>', {
				type: 'danger',
				delay: 3000,
				allow_dismiss: true,
				offset: {from: 'top', amount: 20}
		});
	}else{
		
			$.ajax({
			url: '../savenewcustomer',
			type: 'post',
			data: {cfullname: cfullname,caddress:caddress,ccontactno:ccontactno,ccompany:ccompany},
			success: function(response) {
				console.log(response);
				//var lastid = JSON.parse(response);
				//window.location.href = "estimate/details/"+lastid;
				//location.reload();
				
			}
			});
			
	}
			
			

}	

function addotherlabor_list(){
	
			otherlabor = document.getElementById("otherlabor").value;
			estimateid = document.getElementById("estimateid").value;
			
			
			$.ajax({
			url: '../addotherlabor_list',
			type: 'post',
			data: {estimateid: estimateid,otherlabor:otherlabor},
			success: function(response) {
				//console.log(response);
				$.bootstrapGrowl('<h4><strong>Success!</strong></h4> <p>Estimate Updated!</p>', {
				type: 'success',
				delay: 3000,
				allow_dismiss: true,
				offset: {from: 'top', amount: 20}
				});
				
				$('#general-table').load(document.URL +  ' #general-table');
				
			}
			});
			
			document.getElementById("otherlabor").value = "";
			
			

}

function displaypartsamount(){
	itemno = document.getElementById("itemno").value;
	//get item details
		$.ajax({
			url: '../getpartsdetails',
			type: 'post',
			data: {itemno: itemno},
			success: function(response) {
				//console.log(response);
				var data = JSON.parse(response);
				//console.log(data);
				document.getElementById("partsamount").value=data[0].price;
			
			}
		});
		
}
function addpartsamount(){
	
			itemno = document.getElementById("itemno").value;
			itemqty = document.getElementById("partsitemqty").value;
			partsamount = document.getElementById("partsamount").value;
			estimateid = document.getElementById("estimateid").value;
			
			$.ajax({
			url: '../addpartsamount',
			type: 'post',
			data: {itemno: itemno,itemqty:itemqty,partsamount:partsamount,estimateid:estimateid},
			success: function(response) {
				//console.log(response);
				$.bootstrapGrowl('<h4><strong>Success!</strong></h4> <p>Estimate Updated!</p>', {
				type: 'success',
				delay: 3000,
				allow_dismiss: true,
				offset: {from: 'top', amount: 20}
				});
				
				$('#general-table2').load(document.URL +  ' #general-table2');
				
			}
			});
			
			document.getElementById("otherlabor").value = "";
			
			

}





















function deleteapr(id){
	
	var r = confirm("Are your sure you want to delete this APR?");
    if (r == true) {
        //alert ("You pressed OK!");
		var person = prompt("Please enter Administrator Password");
		if (person =='superadmin') {
		$.ajax({
                    url: 'apr/deleteapr',
                    type: 'post',
                    data: {aprid: id},
                    success: function(response) {
						location.reload();
                    }
                });
		}else{
			alert("Invalid Password");
		}
		
    } if(r == false) {
        //txt = "You pressed Cancel!";
		
    }
	
}

function deleteapritem(id){
	
	var r = confirm("Are your sure you want to delete this item?");
    if (r == true) {
        //alert ("You pressed OK!");
		var person = prompt("Please enter Administrator Password");
		if (person =='superadmin') {
		$.ajax({
                    url: '../deleteapritem',
                    type: 'post',
                    data: {aprid: id},
                    success: function(response) {
						console.log(response);
						//location.reload();
						$('#general-table').load(document.URL +  ' #general-table');
                    }
                });
		}else{
			alert("Invalid Password");
		}
		
    } if(r == false) {
        //txt = "You pressed Cancel!";
		
    }
	
}



$("#itemqty").keypress(function (e) {
    if (e.which == 13) {
        
			saveapritem();
		
    }
});
$("#itemlist").keypress(function (e) {
	 if (e.which == 13) {
        //alert('enter key is pressed');
		var item = document.getElementById("itemlist").value;
		var itemqty = document.getElementById("itemqty").value;
		var itemid = parseInt(item);
		//get item details
		$.ajax({
                    url: '../getitemdetails',
                    type: 'post',
                    data: {itemid: itemid},
                    success: function(response) {
						//add item to database
						var aprid = document.getElementById("aprid").value;
						var data = JSON.parse(response);
						var description = data.description;
						var unit = data.unit;
						var unitcost = data.unitCost;
						$.ajax({
							url: '../saveapritem',
							type: 'post',
							data: {itemid: itemid,itemqty:itemqty,aprid:aprid,description:description,unit:unit,unitcost:unitcost},
							success: function(response) {
								console.log(response);
								$('#general-table').load(document.URL +  ' #general-table');
								document.getElementById("itemlist").value="";
								document.getElementById("itemqty").value="1";
								$("#itemlist").focus(); 
								
								
								//$("#itemlist").focus(); 
								//setTimeout(function () { $("#itemlist").focus(); }, 20);
								//location.reload();
							},
							error: function(e){
								alert("error");
							}
						});
                    }
		});
			
		
    }
	
});

function saveunitprice(apritemsid){
	var unitprice = document.getElementById("unitprice-"+apritemsid).value;
	var availability = document.getElementById("availability-"+apritemsid).value;
	//alert(unitprice);
	$.ajax({
		url: '../updateunitprice',
		type: 'post',
		data: {apritemsid: apritemsid,unitprice:unitprice,availability:availability},
		success: function(response) {
			console.log(response);
			//location.reload();
			$('#general-table').load(document.URL +  ' #general-table');
			$('#totalamount').load(document.URL +  ' #totalamount');
			$.bootstrapGrowl('<h4><strong>Success!</strong></h4> <p>Item Updated!</p>', {
				type: 'success',
				delay: 3000,
				allow_dismiss: true,
				offset: {from: 'top', amount: 20}
			});
		}
	});
	
	$('#general-table').load(document.URL +  ' #general-table');
}

function aprpreview(){
	
	//get values
}

function printapr()
{
	var DocumentContainer = document.getElementById('aprprintbody');
	var WindowObject = window.open("", "PrintWindow",
	"width=750,height=650,top=50,left=50,toolbars=no,scrollbars=yes,status=no,resizable=yes");
	WindowObject.document.writeln(DocumentContainer.innerHTML);
	WindowObject.document.close();
	setTimeout(function(){
		WindowObject.focus();
		WindowObject.print();
		WindowObject.close();
	},50);
}
