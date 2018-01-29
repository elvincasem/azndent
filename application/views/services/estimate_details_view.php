
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
			<!-- Regular Modal -->
                <div id="addcustomer" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
								
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h3 class="modal-title"><strong>Customer Profile</strong></h3>
                            </div>
                            <div class="modal-body">
                                
								
								<!-- Input States Block -->
            <div class="block">
                

                <!-- Input States Content -->
                <form action="#" method="post" class="form-horizontal" onsubmit="return false;">
                    <div class="form-group">
					

						<label class="col-md-3 control-label" for="state-normal">Full Name</label>
                        <div class="col-md-7">
                            <input type="text" id="cfullname" name="state-normal" class="form-control" tabindex="0" value="">
                        </div>
						
						<label class="col-md-3 control-label" for="state-normal">Address</label>
                        <div class="col-md-7">
                            <input type="text" id="caddress" name="state-normal" class="form-control" tabindex="0" value="">
                        </div>
						<label class="col-md-3 control-label" for="state-normal">Contact No.</label>
                        <div class="col-md-7">
                            <input type="text" id="ccontactno" name="state-normal" class="form-control" tabindex="0" value="">
                        </div>
						<label class="col-md-3 control-label" for="state-normal">Company</label>
                        <div class="col-md-7">
                            <input type="text" id="ccompany" name="state-normal" class="form-control" tabindex="0" value="">
                        </div>
						


                    </div>
                    
                </form>
                <!-- END Input States Content -->
            </div>
            <!-- END Input States Block -->
								
								
								
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="saveapr" class="btn btn-effect-ripple btn-primary" onclick="savenewcustomer();">Save</button>
								
                                <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Regular Modal -->
				
				
				
				
				
				
				
				
			<div class="block full">
				<div class="block-title">
				
					<h5>EoR Details: # <?php echo $estimatemaindetails['estimateid'];?></h5>
					
					<button type="button" id="addapr" class="pull-right btn btn-effect-ripple btn-primary" href="#" data-toggle="modal" onclick="printestimate(<?php echo $estimateid;?>);"><i class="fa fa-print"></i> Print Estimate</button>
				</div>
				<form action="#" method="post" class="form-horizontal" onsubmit="return false;">
				<div class="form-group">
					
						<label class="col-md-2 control-label" for="state-normal">Estimate Date</label>
                        <div class="col-md-2">
                            <input type="text" id="estimate_date" name="example-datepicker3" class="form-control input-datepicker" data-date-format="yyyy-mm-dd" placeholder="yyyy-mm-dd" value="<?php echo $estimatemaindetails['estimate_date'];?>">
                        </div>
						
                        <label class="col-md-3 control-label" for="state-normal">Estimate No.</label>
                        <div class="col-md-2">
                            <input type="text" id="estimateid" name="state-normal" class="form-control" tabindex="0" value="<?php echo $estimatemaindetails['estimateid'];?>" disabled>
                        </div>
						
						<div class="row"></div>
						<div class="row"></div>
						
						<label class="col-md-2 control-label" for="state-normal">Customer</label>
                        <div class="col-md-4">
                           <select id="customerid" name="example-select2" class="select-select2" style="width: 100%;" data-placeholder="Choose one..">
						   <option></option>
						   <?php
						   
								foreach($customer_list as $clist):
									if($clist['customerid']== $estimatemaindetails['customerid']){
										$selected = "selected='selected'";
									}else{
										$selected = "";
									}
									echo "<option value='".$clist['customerid']."' $selected>".$clist['cfullname']."</option>";
									
								endforeach;
						   
						   ?>
								
							
						</select>
                        </div>
						<div class="col-md-2">
                            <button type="button" id="addapr" class="pull-right btn btn-effect-ripple btn-primary" href="#addcustomer" data-toggle="modal" onclick=""><i class="fa fa-print"></i> New Customer</button>
                        </div>
						<div class="row"></div>
						<label class="col-md-2 control-label" for="state-normal">Address:</label>
                        <div class="col-md-4">
                            <input type="text" id="estimateid" name="state-normal" class="form-control" tabindex="0" value="<?php //echo $estimatemaindetails['estimateid'];?>" disabled>
                        </div>
						<div class="row"></div>
						<label class="col-md-2 control-label" for="state-normal">Plate No.:</label>
                        <div class="col-md-4">
                            <input type="text" id="platenumber" name="state-normal" class="form-control" tabindex="0" value="<?php echo $estimatemaindetails['platenumber'];?>" >
                        </div>
						<div class="row"></div>
						<label class="col-md-2 control-label" for="state-normal">Vehicle Type:</label>
                        <div class="col-md-4">
                            <input type="text" id="vehicletype" name="state-normal" class="form-control" tabindex="0" value="<?php echo $estimatemaindetails['vehicletype'];?>" >
                        </div>
						<div class="row"></div>
						<div class="col-md-6">
                            <button type="button" id="addapr" class="pull-right btn btn-effect-ripple btn-primary" onclick="updateestimate();" ><i class="fa fa-save"></i> Save</button>
                        </div>

                    </div>
				</form>
				
				
				
				<h4 class="sub-header"></h4>
				<div class="col-lg-6">
				<div class="row">
			<label class="col-sm-6 text-right control-label" for="state-normal">LABOR/SERVICES</label>
			<div class="row"></div>
					<div class="form-group">
						<label class="col-sm-2 text-right control-label" for="state-normal">Description</label>
						<div class="col-md-12" id="item_list_form">
							<select id="laborservices" name="example-select2" class="select-select2" style="width: 100%;" data-placeholder="Choose Labor / Service" onchange="displayamount();">
							 
						<option></option>
						   <?php
						   
								foreach($labor_services_list as $ls_list):
									
									echo "<option value='".$ls_list['laborid']."'>".$ls_list['laborname']."</option>";
									
								endforeach;
						   
						   ?>
				
							</select>
						</div>
						<div class="row"></div>
						<label class="col-sm-2 text-right control-label" for="state-normal">Amount</label>
                        <div class="col-md-3">
                            <input type="number" id="laboramount" name="state-normal" class="form-control" tabindex="0" value="0.00">
                        </div>
						
						<button class='btn btn-primary' title='Save' onclick="addlabor_list();"><i class="fa fa-plus"></i> Add</button>
						
						<div class="row"></div>
						<label class="col-sm-2 text-right control-label" for="state-normal">Others</label>
                        <div class="col-md-6">
                            <input type="text" id="otherlabor" name="state-normal" class="form-control" tabindex="0" value="">
                        </div>
						
						<button class='btn btn-primary' title='Save Price' onclick="addotherlabor_list();"><i class="fa fa-plus"></i> Add</button>
						
					</div>
					
					
					<div class="row col-sm-12">
					 <div class="table-responsive">
						<table id="general-table" class="table table-striped table-bordered table-vcenter">
                                    <thead>
                                        <tr>
                                            
                                            <th>Job Description</th>
                                            <th>Amount</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
									$total_labor =0;
									foreach($labor_list as $laborlist):
										
										echo "<tr>";
										echo "<td>".$laborlist['ls_jobdescription']."</td>";
										echo "<td><input class='form-control' type='text' value='".$laborlist['ls_amount']."' id='laboritem-".$laborlist['laborserviceid']."'> </td>";
										echo "<td><button  class='btn btn-primary' title='Save Price' onClick='savelaborcost(".$laborlist['laborserviceid'].")'><i class='gi gi-floppy_saved'></i></button> <button class='btn btn-danger notification' title='Delete' id='notification' onClick='deletelabor(".$laborlist['laborserviceid'].")'><i class='fa fa-times'></i></button></td>";
										echo "</tr>";
									$total_labor+=$laborlist['ls_amount'];
									endforeach;
									?>
									
									<tr>
									<td colspan="3">Total Labor:<input type="text" id="itemqty" name="state-normal" class="form-control" tabindex="0" value="<?php echo number_format($total_labor,2);?>" disabled></td>
									</tr>
									</tbody>
						</table>
					 </div>
				
				</div>
	
				</div>
				</div>
				
				<div class="col-lg-6">
				<div class="row">
			<label class="col-sm-6 text-right control-label" for="state-normal">PARTS TO BE REPLACED</label>
			<div class="row"></div>
					<div class="form-group">
						
						<label class="col-md-1 control-label text-right" for="state-normal">Parts</label>
						<div class="col-md-12" id="item_list_form">
							
							<select id="itemno" name="example-select2" class="select-select2" style="width: 100%;" data-placeholder="Items" onchange="displaypartsamount();">
								<option></option>
								<?php
									foreach($parts_list as $parts):
										echo "<option value=".$parts['itemNo'].">".$parts['itemname']."</option>";
									endforeach;
								?>
								
				
							</select>
						</div>
						<div class="row"></div>
						<label class="col-sm-2 text-right control-label" for="state-normal">QTY</label>
                        <div class="col-md-2">
                            <input type="number" id="partsitemqty" name="state-normal" class="form-control" tabindex="0" value="1">
                        </div>
						<div class="row"></div>
						<label class="col-sm-2 text-right control-label" for="state-normal">Amount</label>
                        <div class="col-md-3">
                            <input type="number" id="partsamount" name="state-normal" class="form-control" tabindex="0" value="0.00">
                        </div>
						
						
						
						<button class='btn btn-primary' title='Save Price' onclick="addpartsamount();"><i class="fa fa-plus"></i> Add Item</button>
					</div>
					
					
					
					
					
					<div class="row">
					 <div class="table-responsive">
						<table id="general-table2" class="table table-striped table-bordered table-vcenter">
                                    <thead>
                                        <tr>
                                            
                                            <th>Qty</th>
                                            <th>Unit</th>
                                            <th>Particulars</th>
                                            <th>Price</th>
                                            <th>Amount</th>
                                            <th></th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
										<?php
											$total_parts=0;
											foreach($addedparts_list as $parts_added):
												echo "<tr>";
												echo "<td>".$parts_added['parts_qty']."</td>";
												echo "<td>".$parts_added['parts_unit']."</td>";
												echo "<td>".$parts_added['parts_particular']."</td>";
												echo "<td><input class='form-control' type='text' value='".$parts_added['parts_amount']."' id='partsitem-".$parts_added['partsid']."'> </td>";
												//echo "<td>".$parts_added['parts_amount']."</td>";
												echo "<td>".number_format((float)$parts_added['parts_amount']*(int)$parts_added['parts_qty'],2)."</td>";
												echo "<td><button  class='btn btn-primary' title='Save Price' onClick='savepartscost(".$parts_added['partsid'].")'><i class='gi gi-floppy_saved'></i></button> <button class='btn btn-danger notification' title='Delete' id='notification' onClick='deletepartsitem(".$parts_added['partsid'].")'><i class='fa fa-times'></i></button></td>";
												echo "</tr>";
												$total_parts+=(float)$parts_added['parts_amount']*(int)$parts_added['parts_qty'];
											endforeach;
										?>
								<tr>
									<td colspan="6">Total Parts:<input type="text" id="itemqty" name="state-normal" class="form-control" tabindex="0" value="<?php echo number_format($total_parts,2);?>" disabled></td>
								</tr>
									</tbody>
						</table>
					 </div>
				
				</div>
				
	
				</div>
				</div>
				<div class="row"></div>
				<div class="row"></div>
	
			</div> <!-- end block -->
	   </div> <!-- end column -->
</div> <!-- end row -->


			
			

			
		</div>
		<!-- END Page Content -->
	</div>
	<!-- END Main Container -->
</div>
<!-- END Page Container -->


