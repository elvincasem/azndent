
<div id="page-container" class="header-fixed-top sidebar-visible-lg-full">

	
	<!--rightsidebar here-->
	<?php //$this->load->view('rightsidebar_view'); ?>
	
	<!--main sidebar here -->
	<?php $this->load->view('leftsidebar_view'); ?>

	<!-- Main Container -->
	<div id="main-container">
		  <?php $this->load->view('subheader_view'); ?>

		<!-- Page content -->
		<div id="page-content">
			<?php $this->load->view('inc/subnav_view'); ?>
<!-- Tables Row -->
<div class="row">
	   <div class="col-lg-12">
				<!-- Partial Responsive Block -->
				
				
			
				
				
				
				
				
				
			<div class="block full">
				<div class="block-title">
				
					<h5>Item Details</h5>
					 <div class="btn-group pull-right">
							<a href="javascript:void(0)" data-toggle="dropdown" class="btn btn-primary dropdown-toggle hidden">Action <span class="caret"></span></a>
							<ul class="dropdown-menu text-left">
								<li>
									<a href="#" onclick="editrr();">
										<i class="fa fa-pencil pull-right"></i>
										Edit Delivery Details
									</a>
								</li>
								<li>
									<a href="#" onclick="updateinventory();">
										<i class="fa fa-pencil pull-right"></i>
										Update Inventory
									</a>
								</li>
								<li>
									<a href="#printinspection" data-toggle="modal">
										<i class="fa fa-cubes pull-right"></i>
										Print Inspection and Acceptance Report
									</a>
								</li>
								
								
							</ul>
						</div>
						
					 
				</div>
				<form action="#" method="post" class="form-horizontal" onsubmit="return false;">
				<div class="form-group">
					<input type="hidden" id="itemno" name="state-normal" class="form-control" value="<?php echo $itemno;?>" >
					<label class="col-md-2 control-label" for="state-normal">Item Description</label>
                        <div class="col-md-4">
                            <textarea id="description" class="form-control" ><?php echo $itemsdetails['description'];?></textarea>
                        </div>
						<label class="col-md-1 control-label" for="state-normal">Category</label>
                        <div class="col-md-2">
						
                            <select id="category" name="example-select2" class="select-select2" style="width: 100%;" data-placeholder="Choose one.." >
							
							<?php
							echo "<option value='".$itemsdetails['category']."'>".$itemsdetails['category']."</option>";
							
							foreach($itemcategorylist as $item_category):
									
										echo "<option value='".$item_category['category_value']."'>".$item_category['category_value']."</option>";
							endforeach;
							
							?>
							</select>
                        </div>
						
						
						
						<label class="col-md-1 control-label" for="state-normal">Brand</label>
                        <div class="col-md-2">
                             <input type="text" id="brand" name="state-normal" class="form-control" tabindex="0" value="<?php echo $itemsdetails['brand'];?>" tabindex="2" >
							
                        </div>
						
						
						<div class="row"></div>
						<label class="col-md-2 control-label" for="state-normal">Cost</label>
                        <div class="col-md-2">
                             <input type="number" id="unitcost" name="state-normal" class="form-control" tabindex="0" value="<?php echo $itemsdetails['unitCost'];?>" tabindex="2">
							<button id="savedrbutton" class='btn btn-primary' title='Update Cost' onclick="updatecost();" ><i class="fa fa-floppy-o"></i> Update</button>
                        </div>
						
						<label class="col-md-1 control-label" for="state-normal">Price</label>
                        <div class="col-md-2">
                             <input type="number" id="price" name="state-normal" class="form-control" tabindex="0" value="<?php echo $itemsdetails['price'];?>" tabindex="2">
							<button id="savedrbutton" class='btn btn-primary' title='Update Price' onclick="updateprice();" ><i class="fa fa-floppy-o"></i> Update</button>
                        </div>
						
						
						<label class="col-md-1 control-label" for="state-normal">Supplier</label>
                        <div class="col-md-4">
						<select id="supplierid"  class="form-control">
								<option value="<?php echo $itemsdetails['supplierID'];?>"><?php echo $itemsdetails['supName'];?></option>
									<?php
										foreach($supplierlist as $suppliers):
									
										echo "<option value='".$suppliers['supplierID']."'>".$suppliers['supName']."</option>";
										endforeach;
									
									?>
							   </select>
                           
							
                        </div>
						<div class="row"></div>
						
						<label class="col-md-2 control-label" for="state-normal">Base Unit</label>
                        <div class="col-md-2">
							<select id="unitofmeasure"  class="form-control">
								<option value="<?php echo $itemsdetails['unit'];?>"><?php echo $itemsdetails['unit'];?></option>
									<?php
										foreach($unitlist as $unit_list):
										
											echo "<option value='".$unit_list['unit_name']."'>".$unit_list['unit_name']."</option>";
										endforeach;
									
									?>
							   </select>
								
								
							
                        </div>
						<label class="col-md-1 control-label" for="state-normal">QTY</label>
						<div class="col-md-1">
						<input type="number" value="1" class="form-control" disabled>
						</div>
						
						
						<label class="col-md-1 control-label" for="state-normal">Application</label>
                        <div class="col-md-2">
                             <input type="text" id="application" name="state-normal" class="form-control" tabindex="0" value="<?php echo $itemsdetails['application'];?>" tabindex="2" >
							
                        </div>
						<label class="col-md-1 control-label" for="state-normal">Part Number</label>
                        <div class="col-md-2">
                             <input type="text" id="part_number" name="state-normal" class="form-control" tabindex="0" value="<?php echo $itemsdetails['part_number'];?>" tabindex="2" >
							
                        </div>
						
						
						<div class="row"></div>
						<label class="col-md-2 control-label" for="state-normal">Purchase Unit</label>
                        <div class="col-md-2">
							<select id="purchase_unit"  class="form-control">
								<option value="<?php echo $itemsdetails['purchase_unit'];?>"><?php echo $itemsdetails['purchase_unit'];?></option>
									<?php
										foreach($unitlist as $unit_list):
										
											echo "<option value='".$unit_list['unit_name']."'>".$unit_list['unit_name']."</option>";
										endforeach;
									
									?>
							   </select>
                            
							
                        </div>
						<label class="col-md-1 control-label" for="state-normal">Base QTY</label>
						<div class="col-md-1">
						<input type="number" id="purchase_qty_equivalent" value="<?php echo $itemsdetails['purchase_qty_equivalent'];?>" class="form-control">
						</div>
						
						<div class="row"></div>
						<label class="col-md-2 control-label" for="state-normal">Current Balance</label>
                        <div class="col-md-2">
                             <input type="text" id="inventory_qty" name="state-normal" class="form-control" tabindex="0" value="<?php echo $itemsdetails['inventory_qty'];?>" tabindex="2" disabled>
							
                        </div>
						
						
						
						<div class="row"></div>
						 <div class="col-md-2 pull-right">
								<button id="savedrbutton" class='btn btn-primary' title='Save PR Details' onclick="updateitem();" ><i class="fa fa-floppy-o"></i> Save</button>
						 </div>
						
						
						 
						   

                    </div>
				</form>
				

				<div class="row"><br></div>
				
				<div class="row" id="suppliertabs">
				
				
		<!-- Block Tabs -->
		<div class="block full">
			<!-- Block Tabs Title -->
			<div class="block-title">
				<div class="block-options pull-right">
					<a href="javascript:void(0)" class="btn btn-effect-ripple btn-default" data-toggle="tooltip" title="Settings"><i class="fa fa-cog"></i></a>
				</div>
				<ul class="nav nav-tabs" data-toggle="tabs">
					<li class="active"><a href="#block-tabs-home">Current Balance</a></li>
					<li><a href="#block-tabs-delivery">Delivery</a></li>
					<li><a href="#block-tabs-requisition">Requisition</a></li>
					<li><a href="#cost-history">Cost History</a></li>
					<li><a href="#price-history">Price History</a></li>
					<li class="hidden"><a href="#block-tabs-uom">Unit of Measure</a></li>
					
					<?php
					/*
					foreach ($canvasslist as $canvass_list):
		
							echo "<li><a href='#tab".$canvass_list['supplierid']."'>".$canvass_list['supName']."</a></li>";
	
					endforeach;
					*/
					?>
					
					
					
				</ul>
			</div>
			<!-- END Block Tabs Title -->

			<!-- Tabs Content -->
			<div class="tab-content">
				<div class="tab-pane active" id="block-tabs-home">
				<div class="row">
				<a type="button" class="btn btn-md btn-primary" href="<?=base_url()?>reports/stockcard/<?php echo $itemno;?>">Export Result XLS</a>
				</div>
				<div class="table-responsive">
					 <table id="example-datatable" class="table table-striped table-bordered table-vcenter">
                                    <thead>
                                        <tr>
                                              <th>Date</th>
                                            <th>Operation</th>
                                            <th>Reference</th>
                                            <th>Item No.</th>
                                            <th>Unit</th>
                                            <th>QTY</th>
                                            <th>Balance</th>
                                            <th>Purpose</th>
                                          
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
									
				$totalqty=0;
				foreach ($stockcard as $stock_card):
				if($stock_card['operation']=="Received"){
					$totalqty += $stock_card['qty'];
				}else{
					$totalqty -= $stock_card['qty'];
				}
				
				echo "<tr class='odd gradeX'>";
				echo "<td>".$stock_card['created']."</td>";
				echo "<td>".$stock_card['operation']."</td>";
				echo "<td>".$stock_card['reference']."</td>";
				echo "<td>".$stock_card['itemNo']."</td>";
				echo "<td>".$stock_card['unit']."</td>";
				echo "<td>".$stock_card['qty']."</td>";
				echo "<td>".$totalqty."</td>";
				echo "<td>".$stock_card['purpose']."</td>";
				
				//echo "<td></td>";

			
				echo "</tr>";
				
				endforeach;
				
				?>
									</tbody>
					</table>
					 </div>
				
				
					
				</div>
				<div class="tab-pane" id="block-tabs-delivery">
				
				<table id="example-datatable1" class="table table-striped table-bordered table-vcenter">
                                    <thead>
                                        <tr>
                                            
                                            <th>Delivery No</th>
                                            <th>QTY</th>
                                            <th>Unit</th>
											 <th style="width: 120px;">Unit Cost</th>
                                            <th>Date Received</th>
                                            

                                        </tr>
                                    </thead>
                                    <tbody>
							<?php
								foreach($deliverydetails as $ddetails):
								
									echo "<tr>";
									echo "<td>".$ddetails['drno']."</td>";
									echo "<td>".$ddetails['qty']."</td>";
									echo "<td>".$ddetails['unit']."</td>";
									echo "<td>".$ddetails['unitcost']."</td>";
									echo "<td>".$ddetails['time_stamp']."</td>";
									echo "</tr>";
								
								endforeach;
							
							?>
									
									
									</tbody>
				</table>
				
				
				</div>
				<div class="tab-pane" id="block-tabs-requisition">
					<table id="example-datatable2" class="table table-striped table-bordered table-vcenter">
                                    <thead>
                                        <tr>
                                            
                                            <th>Requisition No</th>
                                            
                                           
											
                                            <th>Unit</th>
                                            <th>Qty</th>

                                            
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
								foreach($requisitiondetails as $reqdetails):
								
									echo "<tr>";
									echo "<td>".$reqdetails['requisition_no']."</td>";
									echo "<td>".$reqdetails['unit']."</td>";
									echo "<td>".$reqdetails['qty']."</td>";
									
									echo "</tr>";
								
								endforeach;
							
							?>
									
									</tbody>
					</table>
				
				</div>
				<div class="tab-pane" id="block-tabs-uom">
				<div class="row">
				<a type="button" class="btn btn-md btn-primary" href="<?=base_url()?>reports/stockcard/<?php echo $itemno;?>">Add UOM</a>
				</div>
				
					<table id="example-datatable3" class="table table-striped table-bordered table-vcenter">
                                    <thead>
                                        <tr>
                                            
                                            <th>Unit of Measure</th>
                                            
                                           
											
                                            <th style="width: 120px;">QTY</th>

                                            <th style="width: 100px;" class="text-center"><i class="fa fa-flash"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody>
									</tbody>
				</table>
				
				</div>
				
				
				<!-- cost history -->
				<div class="tab-pane" id="cost-history">
				<div class="row">
				</div>
					<table id="example-datatable3" class="table table-striped table-bordered table-vcenter">
                                    <thead>
                                        <tr>
                                            
                                            
                                            
                                           
											
                                            <th style="width: 10px;">Unit Cost</th>
                                            <th style="width: 120px;">Change Date</th>

                                            
                                        </tr>
                                    </thead>
                                    <tbody>
										<?php
											foreach($costhistory as $chistory):
												echo "<tr>";
												echo "<td>".$chistory['items_unitcost']."</td>";
												echo "<td>".mdate('%F %d, %Y %h:%m:%s',strtotime($chistory['cost_timestamp']))."</td>";
												echo "</tr>";
											endforeach;
										
										?>
									</tbody>
				</table>
				
				</div>
				
				<!-- cost history -->
				<div class="tab-pane" id="price-history">
				<div class="row">
				</div>
					<table id="example-datatable3" class="table table-striped table-bordered table-vcenter">
                                    <thead>
                                        <tr>
                                            
                                            <th style="width: 10px;">Price</th>
                                            <th style="width: 120px;">Change Date</th>

                                            
                                        </tr>
                                    </thead>
                                    <tbody>
										<?php
											foreach($pricehistory as $phistory):
												echo "<tr>";
												echo "<td>".$phistory['items_price']."</td>";
												echo "<td>".mdate('%F %d, %Y %h:%m:%s',strtotime($phistory['price_timestamp']))."</td>";
												echo "</tr>";
											endforeach;
										
										?>
									</tbody>
				</table>
				
				</div>
				
				
		<?php
		/*
		//tabs for suppliers
			foreach ($canvasslist as $canvass_list):
				$supplierid = $canvass_list['supplierid'];
				$suppliername = $canvass_list['supName'];
				
					echo "<div class='tab-pane' id='tab".$canvass_list['supplierid']."'>";
					$canvassitems = $this->purchaserequest_model->getcanvasslist_items($supplierid,$prid);
					echo "<h4>$suppliername Price List</h4>";
					echo "<button class='btn btn-danger notification pull-right' onClick='removesupplier(".$supplierid.")'><i class='fa fa-times'></i> Remove Supplier</button>";
					echo "<table id='supplier-".$canvass_list['supplierid']."' class='table table-striped table-bordered table-vcenter'>";
					echo "<thead>
                                        <tr>
                                            
                                            <th>QTY</th>
											<th style='width: 120px;'>Unit of Issue</th>
                                            <th style='width: 420px;'>DESCRIPTION</th>
											<th style='width: 120px;'>Unit Price</th>
											<th style='width: 120px;'>Total Price</th>
                                            <th style='width: 320px;' class='text-center'><i class='fa fa-flash'></i></th>
                                        </tr>
                                    </thead>";
						echo "<tbody>";	
						$totalamount2 = 0;
			foreach ($canvassitems as $canvass_items):	
				$amount2 = $canvass_items['qty'] * $canvass_items['unitprice'];	
				$totalamount2=$totalamount2+$amount2;				
									echo "<tr class='odd gradeX'>";
				echo "<td>".$canvass_items['qty']."</td>";
				echo "<td>".$canvass_items['unit']."</td>";
				echo "<td>".$canvass_items['description']."</td>";
				echo "<td style='width:210px;'><input type='text' style='width:80px;text-align:center;' value='".$canvass_items['unitprice']."' id='unitprice-".$canvass_items['aocid']."'> </td>";
				echo "<td>".number_format($amount2,2)."</td>";
				echo "<td class='center'> 
					
					<button  class='btn btn-primary' title='Save Price' onClick='updatecanvassprice(".$canvass_items['aocid'].",".$canvass_items['supplierid'].")'><i class='gi gi-floppy_saved'></i></button>
					
					
				</td>";
				endforeach;
			echo "</tbody>";
						
						
		echo "</table>";
		
		echo "<div class='row' id='totalamount".$canvass_items['supplierid']."'>
					<h4 class='sub-header'></h4>
					<div class='col-md-9'>
						<strong class='pull-right'><h2>Total Amount:";
		echo number_format($totalamount2,2);
			echo "</h2></strong></div></div>";
		
		echo "</div>";

endforeach;
			*/
		?>
				
				
				
				
			<!-- END Tabs Content -->
		</div>
		<!-- END Block Tabs -->
					 
				
				</div><!-- end row-->
				
				
				
				
			</div> <!-- end block -->
	   </div> <!-- end column -->
</div> <!-- end row -->
			
			
			

			
		</div>
		<!-- END Page Content -->
	</div>
	<!-- END Main Container -->
</div>
<!-- END Page Container -->

