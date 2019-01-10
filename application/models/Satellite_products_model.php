<?php
    class Satellite_products_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        //GETTING ALL THE DATA IN SATELLITE PRODUCTS TABLE
        public function get_all()
        {
            $query = $this->db->get('satellite_products');
            return $query->result_array();
        }
        //GETTING ALL THE UNIQUE CATEGORY IN SATELLITE PRODUCTS TABLE
        public function get_categories()
        {
            $this->db->distinct();
            $this->db->select('category, category_id');
            $this->db->from('satellite_products');
            $query = $this->db->get();
            return $query->result_array();
        }
        //GETTING ALL DATA BY IT'S CATEGORY
        public function get_all_by_categories($id)
        {
            $this->db->where('category_id', $id);
            $query = $this->db->get('satellite_products');
            return $query->result_array();
        }
        //GETTING ROW BY CATEGORY ID
        public function get_category_by_id($id)
        {
            $query = $this->db->get_where('satellite_products', array('category_id' => $id));
            return $query->row();
        }
        //GETTING ROW BY ID
        public function get_product_by_id($id)
        {
            $query = $this->db->get_where('satellite_products', array('id' => $id));
            return $query->row_array();
        }
        //GETTING TITLE BY ID
        public function get_product_title_by_id($id)
        {   
            $this->db->select('title');
            $query = $this->db->get_where('satellite_products', array('id' => $id));
            return $query->row();
        }
    }
?>