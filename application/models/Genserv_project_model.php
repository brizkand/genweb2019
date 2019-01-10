<?php
    class Genserv_project_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        //GET ALL RECORDS
        public function get_all()
        {
            $this->db->order_by('product_id');
            $query = $this->db->get('genserv_projects');
            return $query->result_array();
        }
        //GETTING ALL THE UNIQUE CATEGORY IN SATELLITE PRODUCTS TABLE
        public function get_categories()
        {
            $this->db->distinct();
            $this->db->select('category, product_id');
            $this->db->from('genserv_projects');
            $query = $this->db->get();
            return $query->result_array();
        }
        //GETTING ALL DATA BY IT'S CATEGORY
        public function get_all_by_categories($id)
        {
            $this->db->order_by('id', 'desc');
            $this->db->where('product_id', $id);
            $query = $this->db->get('genserv_projects');
            return $query->result_array();
        }
        //GETTING ROW BY CATEGORY ID
        public function get_category_by_id($id)
        {
            $query = $this->db->get_where('genserv_projects', array('product_id' => $id));
            return $query->row();
        }
        //GETTING TITLE BY ID
        public function get_product_title_by_id($id)
        {   
            $this->db->select('project_name');
            $query = $this->db->get_where('genserv_projects', array('id' => $id));
            return $query->row();
        }
        //GETTING PROJECT ITEM BY ITS ID
        public function get_project_by_id($id)
        {
            $query = $this->db->get_where('genserv_projects', array('id' => $id));
            return $query->row_array();
        }
        //GETTING ALL OTHER IMAGES OF PROJECT BY ITS ID
        public function get_project_images_by_id($id)
        {
            $query = $this->db->get_where('genserv_project_images', array('project_id' => $id));
            return $query->result_array();
        }
    }
?>