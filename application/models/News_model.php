<?php
    class News_model extends CI_Model
    {
        public function __construct()
        {
            $this->load->database();
        }
        //GET ALL RECORDS
        public function get_all()
        {
            $this->db->order_by('id', 'desc');
            $query = $this->db->get('news');
            return $query->result_array();
        }
        //GET NEWS ITEM BY ID
        public function get_news_by_id($id)
        {
            $query = $this->db->get_where('news', array('id' => $id));
            return $query->row_array();
        }
        public function get_news_title_by_id($id)
        {
            $query = $this->db->get_where('news', array('id' => $id));
            return $query->row();
        }
    }
?>