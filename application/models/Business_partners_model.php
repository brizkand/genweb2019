<?php
    class Business_partners_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        public function get_business_partners()
        {
            $query = $this->db->get('business_partners');
            return $query->result_array();    
        }
        public function get_business_partners_with_category($category_id)
        {
            $query = $this->db->get_where('business_partners', array('category_id' => $category_id));
            return $query->result_array();   
        }
        public function get_business_partners_category_title($category_id)
        {
            $query = $this->db->get_where('business_partners', array('category_id' => $category_id));
            return $query->row('category');
        }
    }
?>