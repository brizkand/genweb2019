<?php
    class Elevator_products_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        //GET ALL RECORDS
        public function get_all()
        {
            $query = $this->db->get('elevator_products');
            return $query->result_array();
        }
        //GET CATEGORY BY ID
        public function get_category_by_id($id)
        {
            $query = $this->db->get_where('elevator_products', array('category_id' => $id));
            return $query->row();
        }
        //GET ALL BY CATEGORY ID
        public function get_all_by_id($id)
        {
            $this->db->where('category_id', $id);
            $query = $this->db->get('elevator_products');
            return $query->result_array();
        }
        //GETTING ALL THE UNIQUE CATEGORY IN ELEVATOR PRODUCTS TABLE
        public function get_categories()
        {
            $this->db->distinct();
            $this->db->select('category, category_id');
            $this->db->from('elevator_products');
            $query = $this->db->get();
            return $query->result_array();
        }
        //GETTING ROW BY ID
        public function get_product_by_id($id)
        {
            $query = $this->db->get_where('elevator_products', array('id' => $id));
            return $query->row_array();
        }
        //GETTING TITLE BY ID
        public function get_product_title_by_id($id)
        {   
            $this->db->select('title');
            $query = $this->db->get_where('elevator_products', array('id' => $id));
            return $query->row();
        }
        //GETTING THE OTHER IMAGES AND INFO
        public function get_other_info($id)
        {
            $this->db->select('*');
            $this->db->from('elevator_products_images');
            $this->db->where('elevator_id', $id);
            $query = $this->db->get();
            return $query->result_array();
        }
    }
?>