<?php

class Estimate extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		//model module
		$this->load->model('estimate_model');
		$this->load->model('asset_model');
		$this->load->helper('date');
		//view module
		 $this->data = array(
            'title' => 'Estimate of Repair',
			'servicesclass' => 'active',
			'estimateclass' => 'active',
			'purchasesclass' => '',
			'aprclass' => '',
			'prclass' => '',
			'poclass' => '',
			'receiveclass' => '',
			'usersclass' => '',
			'userssubclass' => '',
			'reportsclass' => '',
			'assetmanagementclass' => '',
			'recevingassetsclass' => '',
			'assetclass' => '',
			'propertyclass' => '',
			'supplymanagementclass' => '',
			'settingsclass' => '',
			'requisitionclass' => '',
			'equipmentclass' => '',
			'itemsclass' => '',
			'suppliersclass' => '',
			'employeesclass' => '',
			'inventoryclass' => '',
			'subnavtitle' => 'Estimate of Repair',
			'typeahead' => '1',
			'parclass' => '',
			'icsclass' => '',
			'ptrclass' => '',
			'rreclass' => '',
			'adjustmentclass' => '',
			'customizereportclass' => '',
			'warehouseclass' => ''
			);
		//javascript module
		$this->js = array(
            'jsfile' => 'services_estimate.js',
			'typeahead' => '0'
			);
	}
	
	public function index()
	{
		$data = $this->data;
		$js = $this->js;
		//show apr list
		
		$data['estimate_list'] = $this->estimate_model->getestimatelist();
		
		//display apr
		$this->load->view('inc/header_view');
		$this->load->view('services/estimate_view',$data);
		$this->load->view('inc/footer_view',$js);
		
	}
	
	public function newestimate()
	{
		$data = $this->data;
		$js = $this->js;
		//$data['aprid'] = $id;
		$data['aprmaindetails'] = $this->apr_model->getaprmaindetails($id);
		
		
		$this->load->view('inc/header_view');
		$this->load->view('purchases/aprdetails_view',$data);
		$this->load->view('inc/footer_view',$js);
		
	}
	
	public function saveestimate(){
		
		$lastid = $this->estimate_model->saveestimate();
		echo $lastid;
		//echo json_encode($duplicatecount);
		
	}
	public function updateestimate(){
		
		
		$estimateid = $this->input->post('estimateid');
		$estimate_date = $this->input->post('estimate_date');
		$customerid = $this->input->post('customerid');
		$platenumber = $this->input->post('platenumber');
		$vehicletype = $this->input->post('vehicletype');
		
		$this->estimate_model->updateestimate($estimateid,$estimate_date,$customerid,$platenumber,$vehicletype);
		
	}
	
	
	
	
	
	
	
	public function deletelabor(){
		$laborserviceid = $this->input->post('laborserviceid');
		$sql = "DELETE from services_estimate_ls_items where laborserviceid=".$this->db->escape($laborserviceid)."";
		echo $sql;
		$this->db->query($sql);
		
	}
	
	public function savelaborcost(){
		$laborserviceid = $this->input->post('laborserviceid');
		$ls_amount = $this->input->post('ls_amount');
		$lastid = $this->estimate_model->savelaborcost($laborserviceid,$ls_amount);
		echo $lastid;
		//echo json_encode($duplicatecount);
		
	}
	
	
	public function details($id)
	{
		$data = $this->data;
		$js = $this->js;
		$data['estimateid'] = $id;
		$data['estimatemaindetails'] = $this->estimate_model->getestimatemaindetails($id);
		
		//show apr list
		$data['estimate_ls_items'] = $this->estimate_model->get_ls_items($id);
		$data['estimate_parts_items'] = $this->estimate_model->get_parts_items($id);
		$data['labor_list'] = $this->estimate_model->getlaborlist($id);
	
		$data['customer_list'] = $this->estimate_model->getcustomerlist();
		$data['labor_services_list'] = $this->estimate_model->labor_services();
		$data['parts_list'] = $this->estimate_model->parts_list();
		$data['addedparts_list'] = $this->estimate_model->addedparts_list($id);
		
		
		$this->load->view('inc/header_view');
		$this->load->view('services/estimate_details_view',$data);
		$this->load->view('inc/footer_view',$js);
		
	}
	
	

	public function getlabordetails(){
		$laborid = $this->input->post('laborid');
		$labordetails = $this->estimate_model->getlabordetails($laborid);
		echo json_encode($labordetails);
	}
	
	public function addlabor_list(){
		$estimateid = $this->input->post('estimateid');
		$laborid = $this->input->post('laborid');
		$laboramount = $this->input->post('laboramount');
		$this->estimate_model->addlabor_list($estimateid,$laborid,$laboramount);
		
		//echo json_encode($duplicatecount);
		
	}
	public function savenewcustomer()
	{
		$cfullname = $this->input->post('cfullname');
		$caddress = $this->input->post('caddress');
		$ccontactno = $this->input->post('ccontactno');
		$ccompany = $this->input->post('ccompany');
		$this->estimate_model->savenewcustomer($cfullname,$caddress,$ccontactno,$ccompany);
		
	}
	public function addotherlabor_list(){
		$estimateid = $this->input->post('estimateid');
		$otherlabor = $this->input->post('otherlabor');

		$this->estimate_model->addotherlabor_list($estimateid,$otherlabor);
		
		//echo json_encode($duplicatecount);
		
	}
	public function getpartsdetails(){
		$itemno = $this->input->post('itemno');
		$labordetails = $this->estimate_model->getpartsdetails($itemno);
		echo json_encode($labordetails);
	}
	
	public function addpartsamount(){
		$itemno = $this->input->post('itemno');
		$itemqty = $this->input->post('itemqty');
		$partsamount = $this->input->post('partsamount');
		$estimateid = $this->input->post('estimateid');

		$this->estimate_model->addpartsamount($itemno,$itemqty,$partsamount,$estimateid);
		
		//echo json_encode($duplicatecount);
		
	}
	
	public function savepartscost(){
		$partsid = $this->input->post('partsid');
		$sp_amount = $this->input->post('sp_amount');
		$lastid = $this->estimate_model->savepartscost($partsid,$sp_amount);
		echo $lastid;
		//echo json_encode($duplicatecount);
		
	}
	public function deletepartsitem(){
		$partsid = $this->input->post('partsid');
		$this->estimate_model->deletepartsitem($partsid);
	}
	public function printestimate($id)
	{
		/*
		$data = $this->data;
		$js = $this->js;
		$data['estimateid'] = $id;
		$data['estimatemaindetails'] = $this->estimate_model->getestimatemaindetails($id);
		
		//show apr list
		$data['estimate_ls_items'] = $this->estimate_model->get_ls_items($id);
		$data['estimate_parts_items'] = $this->estimate_model->get_parts_items($id);
		$data['labor_list'] = $this->estimate_model->getlaborlist($id);
	
		$data['customer_list'] = $this->estimate_model->getcustomerlist();
		$data['labor_services_list'] = $this->estimate_model->labor_services();
		$data['parts_list'] = $this->estimate_model->parts_list();
		$data['addedparts_list'] = $this->estimate_model->addedparts_list($id);
		
		
		$this->load->view('inc/header_view');
		$this->load->view('services/estimate_details_view',$data);
		$this->load->view('inc/footer_view',$js);
		*/
		echo "test";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public function getitemlist(){
		
		$items = $this->apr_model->getitemlist();
		$tokens = array();
		foreach($items as $items_array){
			$tokens[] = $items_array['itemNo'] . "-". $items_array['description'];
		}
		echo json_encode($tokens);

	}
	
	public function saveapritem(){
		$itemid = $this->input->post('itemid');
		$description = $this->input->post('description');
		$unit = $this->input->post('unit');
		$unitcost = $this->input->post('unitcost');
		$aprid = $this->input->post('aprid');
		$itemqty = $this->input->post('itemqty');
		$this->apr_model->saveapritem($itemid,$aprid,$description,$itemqty,$unit,$unitcost);
	}
	
	public function getitemdetails(){
		
		$itemid = $this->input->post('itemid');
		if($itemid==0){
			echo "0";
		}else{
			$items_details = $this->apr_model->getitemdetails($itemid);
			echo $items_details;
		}
		
				
	}
	
	public function deleteapritem(){
		$aprid = $this->input->post('aprid');
		$sql = "DELETE from purchase_apr_items where apritemsid='".$aprid."'";
		$this->db->query($sql);
		
	}
	public function deleteapr(){
		$aprid = $this->input->post('aprid');
		$this->db->delete('purchase_apr', array('aprid' => $aprid));
		$this->db->delete('purchase_apr_items', array('aprid' => $aprid));
		//$sql = "DELETE from purchase_apr where aprid='".$aprid."'";
		//$this->db->query($sql);
		
	}
	
	public function checkaprduplicate(){
		$aprno = $this->input->post('aprno');
		$duplicatecount = $this->apr_model->checkaprdupliate($aprno);
		echo $duplicatecount;
		//echo json_encode($duplicatecount);
		
	}
	
	public function updateunitprice(){
		$apritemsid = $this->input->post('apritemsid');
		$unitprice = $this->input->post('unitprice');
		$availability = $this->input->post('availability');
		
		$this->apr_model->updateunitprice($apritemsid,$unitprice,$availability);
	}

}