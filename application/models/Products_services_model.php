<?php
    class Products_services_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        public function get_products_services()
        {
            $query = $this->db->get('products_services');
            return $query->result_array();
        }
    }
?>