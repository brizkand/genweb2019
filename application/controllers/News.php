<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class News extends CI_Controller
    {
        public function index($id = NULL)
        {
            if($id == NULL)
            {
                $data['active_page'] = 6;
                $data['title'] = 'News';
                $data['news'] = $this->news_model->get_all();
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/news', $data);
                $this->load->view('templates/footer');
            }
            else
            {
                $data['active_page'] = 6;
                $data['title'] = ucfirst($this->news_model->get_news_title_by_id($id)->title);
                $data['news'] = $this->news_model->get_news_by_id($id);
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/news_item', $data);
                $this->load->view('templates/footer');
            }
        }
    }
?>