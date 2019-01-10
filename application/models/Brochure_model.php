<?php
    class Brochure_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        public function get_brochure()
        {
            $query = $this->db->get('brochure');
            return $query->result_array();
        }
        public function get_brochure_item($id)
        {
            $query = $this->db->get_where('brochure', array('id'=> $id));
            return $query->row_array();
        }
    }
?>