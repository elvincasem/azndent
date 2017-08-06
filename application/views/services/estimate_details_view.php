
<div id="page-container" class="header-fixed-top sidebar-visible-lg-full">
<input type="hidden" id="typeaheadvalue" value="<?php echo $typeahead;?>">
	
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
				
					<h5>EoR Details</h5>
					<button type="button" id="addapr" class="pull-right btn btn-effect-ripple btn-primary" href="#printaprmodal" data-toggle="modal" onclick="aprpreview(<?php echo $estimateid;?>);"><i class="fa fa-print"></i> Print Estimate</button>
				</div>
				<form action="#" method="post" class="form-horizontal" onsubmit="return false;">
				<div class="form-group">
					
						<label class="col-md-2 control-label" for="state-normal">Estimate Date</label>
                        <div class="col-md-2">
                            <input type="text" id="aprdate" name="example-datepicker3" class="form-control input-datepicker" data-date-format="yyyy-mm-dd" placeholder="yyyy-mm-dd" value="<?php echo $estimatemaindetails['estimate_date'];?>" disabled>
                        </div>
						
                        <label class="col-md-3 control-label" for="state-normal">Estimate No.</label>
                        <div class="col-md-2">
                            <input type="text" id="estimateid" name="state-normal" class="form-control" tabindex="0" value="<?php echo $estimatemaindetails['estimateid'];?>" disabled>
                        </div>
						
						<div class="row"></div>
						<div class="row"></div>
						
						<label class="col-md-2 control-label" for="state-normal">Customer</label>
                        <div class="col-md-4">
                           <select id="modeofprocurementpo" name="example-select2" class="select-select2" style="width: 100%;" data-placeholder="Choose one..">
								<option value="<?php //echo $prmaindetails['modeofprocurement'];?>"><?php //echo $prmaindetails['modeofprocurement'];?></option>
							
						</select>
                        </div>
						<div class="col-md-2">
                            <button type="button" id="addapr" class="pull-right btn btn-effect-ripple btn-primary" href="#printaprmodal" data-toggle="modal" onclick="aprpreview(<?php echo $estimateid;?>);"><i class="fa fa-print"></i> New Customer</button>
                        </div>
						<div class="row"></div>
						<label class="col-md-2 control-label" for="state-normal">Address:</label>
                        <div class="col-md-4">
                            <input type="text" id="estimateid" name="state-normal" class="form-control" tabindex="0" value="<?php //echo $estimatemaindetails['estimateid'];?>" disabled>
                        </div>
						<div class="row"></div>
						<label class="col-md-2 control-label" for="state-normal">Plate No.:</label>
                        <div class="col-md-4">
                            <input type="text" id="estimateid" name="state-normal" class="form-control" tabindex="0" value="<?php echo $estimatemaindetails['estimateid'];?>" >
                        </div>
						<div class="row"></div>
						<label class="col-md-2 control-label" for="state-normal">Vehicle Type:</label>
                        <div class="col-md-4">
                            <input type="text" id="estimateid" name="state-normal" class="form-control" tabindex="0" value="<?php echo $estimatemaindetails['estimateid'];?>" >
                        </div>
						<div class="row"></div>
						<div class="col-md-6">
                            <button type="button" id="addapr" class="pull-right btn btn-effect-ripple btn-primary" href="#printaprmodal" data-toggle="modal" onclick="aprpreview(<?php echo $estimateid;?>);"><i class="fa fa-print"></i> Save</button>
                        </div>

                    </div>
				</form>
				
				
				
				<h4 class="sub-header"></h4>
				<div class="row">
			
					<div class="form-group">
						<label class="col-md-3 control-label text-right" for="state-normal">Select Items</label>
						<div class="col-md-4" id="item_list_form">
							
							<input type="text" id="itemlist" name="example-typeahead" class="form-control input-typeahead" autocomplete="off" placeholder="Search Item..">
						</div>
						
						<label class="col-sm-1 text-right control-label" for="state-normal">QTY</label>
                        <div class="col-md-1">
                            <input type="number" id="itemqty" name="state-normal" class="form-control" tabindex="0" value="1">
                        </div>
						
						<button class='btn btn-primary' title='Save Price' onclick="saveapritem();"><i class="fa fa-plus"></i> Add Item</button>
					</div>
					
					
	
				</div>
				<div class="row"><br></div>
				
				<div class="row">
					 <div class="table-responsive">
					 <table id="general-table" class="table table-striped table-bordered table-vcenter">
                                    <thead>
                                        <tr>
                                            
                                            <th>Item No.</th>
                                            <th style="width: 420px;">ITEM and DESCRIPTION/<br>SPECIFICATIONS/STOCK No.</th>
                                            <th style="width: 120px;">QUANTITY</th>
											<th style="width: 120px;">UNIT</th>
											<th style="width: 120px;">UNIT PRICE</th>
											<th style="width: 120px;">AMOUNT</th>
											<th style="width: 120px;">Availability</th>
                                            <th style="width: 320px;" class="text-center"><i class="fa fa-flash"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
				$totalamount=0;
				foreach ($apr_list_items as $aprlistitems):
				$amount = $aprlistitems['qty'] * $aprlistitems['unitprice'];
				$totalamount +=$amount;
				echo "<tr class='odd gradeX'>";
				echo "<td>".$aprlistitems['itemid']."</td>";
				echo "<td>".$aprlistitems['description']."</td>";
				echo "<td>".$aprlistitems['qty']."</td>";
				echo "<td>".$aprlistitems['unit']."</td>";
				echo "<td style='width:210px;'><input type='text' style='width:80px;text-align:center;' value='".$aprlistitems['unitprice']."' id='unitprice-".$aprlistitems['apritemsid']."'> </td>";
				echo "<td>".number_format($amount,2)."</td>";
				echo "<td><select class='form-control' id='availability-".$aprlistitems['apritemsid']."'><option value='".$aprlistitems['availability']."'>".$aprlistitems['availability']."</option><option value='NO'>NO</option><option value='YES'>YES</option></select> </td>";
				
			
				echo "<td class='center'> 
					
					<button  class='btn btn-primary' title='Save Price' onClick='saveunitprice(".$aprlistitems['apritemsid'].")'><i class='gi gi-floppy_saved'></i></button>
					
					<button class='btn btn-danger notification' title='Delete User' id='notification' onClick='deleteapritem(".$aprlistitems['apritemsid'].")'><i class='fa fa-times'></i></button>
				</td>";
				echo "</tr>";
				
				endforeach;
				
				?>
									</tbody>
					</table>
					 </div>
				
				</div>
				
				<div class="row" id="totalamount">
				<h4 class="sub-header"></h4>
				<div class="col-md-9"">
					<strong class="pull-right"><h2>Total Amount: <?php echo number_format($totalamount,2);?></h2></strong>
				</div>
				</div>
				
				
			</div> <!-- end block -->
	   </div> <!-- end column -->
</div> <!-- end row -->
			
			
			

			
		</div>
		<!-- END Page Content -->
	</div>
	<!-- END Main Container -->
</div>
<!-- END Page Container -->


