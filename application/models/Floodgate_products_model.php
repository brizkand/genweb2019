<?php
    class Floodgate_products_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        //GET ALL RECORDS
        public function get_all()
        {
            $query = $this->db->get('floodgate_products');
            return $query->result_array();
        }
        //GETTING ROW BY ID
        public function get_product_by_id($id)
        {
            $query = $this->db->get_where('floodgate_products', array('id' => $id));
            return $query->row_array();
        }
        //GETTING THE OTHER IMAGES AND INFO
        public function get_other_info()
        {
            $query = $this->db->get('floodgate_products_images');
            return $query->result_array();
        }
        //GETTING VIDEOS
        public function get_videos()
        {
            $query = $this->db->get('floodgate_products_videos');
            return $query->result_array();
        }
    }
?>