<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    class floodgate_products extends CI_Controller
    {
        public function index()
        {
            $data['active_page'] = 3;
            $data['title'] = 'Floodgate Product';
            $data['floodgate_products'] = $this->floodgate_products_model->get_all();
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('pages/floodgate_products', $data);
            $this->load->view('templates/footer');
        }
        public function product_info($id)
        {
            $data['active_page'] = 3;
            $data['title'] = 'Floodgate Product';
            $data['floodgate_product'] = $this->floodgate_products_model->get_product_by_id($id);
            $data['floodgate_more_infos'] = $this->floodgate_products_model->get_other_info();
            $data['floodgate_videos'] = $this->floodgate_products_model->get_videos();
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('pages/floodgate_product_item', $data);
            $this->load->view('templates/footer');
        }
    }
?>