<?php


class Estimate_model extends CI_Model
{
	
	
	public function saveestimate()
	{
		$this->load->library('session');
		$this->session;
		$uid = $this->session->userdata('uid');
		
		$this->load->helper('date');
		$now = new DateTime();
		$now->setTimezone(new DateTimezone('Asia/Manila'));
		$now_date= $now->format('Y-m-d');
		
		
		$sql = "INSERT INTO services_estimate (estimate_date,addedby) VALUES (".$this->db->escape($now_date).", ".$this->db->escape($uid).")";
		$this->db->query($sql);
		
		
		$sqlselect = $this->db->query("SELECT MAX(estimateid) AS lastid FROM services_estimate");
		$lastidinserted = $sqlselect->result_array();
		//echo json_encode($lastidinserted[0]);
		$currentid = $lastidinserted[0]['lastid'];
		echo $currentid;
		
		
	}
	public function getestimatemaindetails($id)
	{
		$sql = $this->db->query("SELECT * from services_estimate where estimateid=".$this->db->escape($id)."");
		$main = $sql->result_array();
		return $main[0];
	}
	
	public function get_ls_items($estimateid)
	{
		$itemlist = $this->db->query("SELECT * from services_estimate_ls_items where ls_estimateid=".$this->db->escape($estimateid)."");
		return $itemlist->result_array();
		
		
	}
	public function get_parts_items($estimateid)
	{
		$itemlist = $this->db->query("SELECT * from services_estimate_parts_items where parts_estimateid=".$this->db->escape($estimateid)."");
		return $itemlist->result_array();
		
		
	}
	
	public function getestimatelist()
	{
		$users = $this->db->query("SELECT * from services_estimate left join services_customer on services_estimate.customerid = services_customer.customerid");
		return $users->result_array();
		
		
	}
	
	
	public function getlaborlist($estimateid)
	{
		$itemlist = $this->db->query("SELECT * from services_estimate_ls_items where ls_estimateid=".$this->db->escape($estimateid)."");
		return $itemlist->result_array();
		
		
	}
	
	public function savelaborcost($laborserviceid,$ls_amount)
	{
		
		
		$sql = "update services_estimate_ls_items set ls_amount=".$this->db->escape($ls_amount)." where laborserviceid=".$this->db->escape($laborserviceid)."";

		$this->db->query($sql);
		
		
	}
	public function updateestimate($estimateid,$estimate_date,$customerid,$platenumber,$vehicletype)
	{
		
		$data = array(
               'estimate_date' => $estimate_date,
               'customerid' => $customerid,
               'platenumber' => $platenumber,
               'vehicletype' => $vehicletype
            );

		$this->db->where('estimateid', $estimateid);
		$this->db->update('services_estimate', $data); 

	}
	
	public function getcustomerlist()
	{

		$query = $this->db->get('customer');
		return $query->result_array();
		
		
	}
	public function labor_services()
	{

		$query = $this->db->get('labor_services');
		return $query->result_array();
		
		
	}
	public function getlabordetails($laborid)
	{

		$query = $this->db->get_where('labor_services', array('laborid' => $laborid));
		return $query->result_array();
		
		
	}
	
	public function addlabor_list($estimateid,$laborid,$laboramount)
	{
		
		$this->db->select('laborname');
		$laborname = $this->db->get_where('labor_services', array('laborid' => $laborid));
		$labor_name = $laborname->result_array();
		print_r($labor_name);
		
		$data = array(
               'ls_estimateid' => $estimateid,
               'ls_jobdescription' => $labor_name[0]['laborname'],
               'ls_amount' => $laboramount
            );

		//$this->db->where('estimateid', $estimateid);
		$this->db->insert('services_estimate_ls_items', $data); 

	}
	
	public function savenewcustomer($cfullname,$caddress,$ccontactno,$ccompany)
	{
		
		$data = array(
               'cfullname' => $cfullname,
               'caddress' => $caddress,
               'ccontactno' => $ccontactno,
               'ccompany' => $ccompany
            );

		$this->db->insert('customer', $data); 

	}
	
	public function addotherlabor_list($estimateid,$otherlabor)
	{

		$data = array(
               'ls_estimateid' => $estimateid,
               'ls_jobdescription' => $otherlabor
            );

		$this->db->insert('services_estimate_ls_items', $data); 

	}
	
		public function parts_list()
	{

		//$this->db->get('items');
		$this->db->select('*');
		$this->db->where('inventory_qty >', 0);
		$query = $this->db->get('items');
		//$query = $this->db->get_where('items', array('inventory_qty' >= 1));
		return $query->result_array();
		
		
	}
	public function getpartsdetails($itemno)
	{

		$query = $this->db->get_where('items', array('itemNo' => $itemno));
		return $query->result_array();
		
		
	}
	public function addpartsamount($itemno,$itemqty,$partsamount,$estimateid)
	{
		//$this->db->select("*");
		$query = $this->db->get_where('items', array('itemNo' => 2));
		$partsprofile = $query->result_array();
		//print_r($partsprofile[0]['unit']);

		
		$data = array(
               'parts_itemno' => $itemno,
               'parts_qty' => $itemqty,
               'parts_unit' => $partsprofile[0]['unit'],
               'parts_particular' => $partsprofile[0]['itemname'],
               'parts_amount' => $partsamount,
               'parts_estimateid' => $estimateid
               
            );

		$this->db->insert('services_estimate_parts_items', $data); 
		
	}
	public function addedparts_list($id)
	{

		$query = $this->db->get_where('services_estimate_parts_items', array('parts_estimateid' => $id));
		return $query->result_array();
		
	}
	public function savepartscost($partsid,$sp_amount)
	{
		$data = array(
               'parts_amount' => $sp_amount
            );
		$this->db->where('partsid', $partsid);
		$this->db->update('services_estimate_parts_items', $data); 

	}
	
	public function deletepartsitem($partsid)
	{
		$this->db->delete('services_estimate_parts_items', array('partsid' => $partsid)); 

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public function getaprmaindetails($id)
	{
		$sql = $this->db->query("SELECT * from purchase_apr where aprid='$id'");
		$aprmain = $sql->result_array();
		return $aprmain[0];
	}
	
	public function saveapr($aprdate,$aprno)
	{
		$this->load->library('session');
		$this->session;
		$uid = $this->session->userdata('uid');
		
		$sql = "INSERT INTO purchase_apr (aprdate,aprno,addedby) VALUES (".$this->db->escape($aprdate).", ".$this->db->escape($aprno).", ".$this->db->escape($uid).")";
		$this->db->query($sql);
		//echo $this->db->affected_rows();
		
		$sqlselect = $this->db->query("SELECT MAX(aprid) AS lastid FROM purchase_apr");
		$lastidinserted = $sqlselect->result_array();
		//echo json_encode($lastidinserted[0]);
		$currentid = $lastidinserted[0]['lastid'];
		echo $currentid;
		
		
	}
	
	public function getitemlist()
	{
		$itemlist = $this->db->query("SELECT * from items");
		return $itemlist->result_array();
		
		
	}
	
	public function saveapritem($itemid,$aprid,$description,$itemqty,$unit,$unitcost)
	{
		
		$sql = "INSERT INTO purchase_apr_items (itemid,aprid,description,qty,unit,unitprice) VALUES (".$this->db->escape($itemid).",".$this->db->escape($aprid).",".$this->db->escape($description).",".$this->db->escape($itemqty).",".$this->db->escape($unit).",".$this->db->escape($unitcost).")";
		$this->db->query($sql);
				
		
	}
	
	public function getitemdetails($itemid){
		$sqlselect = $this->db->query("SELECT * FROM items where itemNo=$itemid");
		$itemdetails = $sqlselect->result_array();
		echo json_encode($itemdetails[0]);
	}

	public function get_list_items($aprid)
	{
		$itemlist = $this->db->query("SELECT * from purchase_apr_items where aprid='$aprid'");
		return $itemlist->result_array();
		
		
	}
	public function checkaprdupliate($aprno)
	{
		$duplicatecount = $this->db->query("SELECT count(*) as duplicate from purchase_apr where aprno='$aprno'");
		$duplic = $duplicatecount->result_array();
		echo json_encode($duplic[0]);
		
		
		
	}
	public function updateunitprice($apritemsid,$unitprice,$availability)
	{
				
		$sql = "update purchase_apr_items set unitprice=".$this->db->escape($unitprice).",availability=".$this->db->escape($availability)." where apritemsid=".$this->db->escape($apritemsid)."";

		$this->db->query($sql);
		
		
		
		
	}
	
	
	
}

?>