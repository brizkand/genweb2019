<?php
    class Job_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        //GET ALL RECORDS
        public function get_all()
        {
            $this->db->order_by('id', 'desc');
            $query = $this->db->get('jobs');
            return $query->result_array();
        }
        //GET NEWS ITEM BY ID
        public function get_jobs_by_id($id)
        {
            $query = $this->db->get_where('jobs', array('id' => $id));
            return $query->row_array();
        }
        public function get_jobs_title_by_id($id)
        {
            $query = $this->db->get_where('jobs', array('id' => $id));
            return $query->row();
        }
    }
?>