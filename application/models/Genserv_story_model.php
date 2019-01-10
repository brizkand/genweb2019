<?php
    class Genserv_story_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        public function get_genserv_story()
        {
            $query = $this->db->get('genserv_story');
            return $query->result_array();    
        }
    }
?>