<?php
    class Carousel_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        public function get_carousel()
        {
            $query = $this->db->get('carousel');
            return $query->result_array();    
        }
    }
?>