<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Elevator_products extends CI_Controller
    {
        public function index($id='all')
        {
            $data['active_page'] = 3;
            if($id == 'all')
            {
                $data['categories'] = $this->elevator_products_model->get_categories();
                $data['title'] = 'Elevator Products';
                $data['elevator_products'] = $this->elevator_products_model->get_all();
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/elevator_products', $data);
                $this->load->view('templates/footer');
            }
            else
            {
                $data['categories'] = $this->elevator_products_model->get_categories();
                $data['title'] = ucfirst($this->elevator_products_model->get_category_by_id($id)->category);
                $data['elevator_products'] = $this->elevator_products_model->get_all_by_id($id);
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/elevator_products', $data);
                $this->load->view('templates/footer');
            }
        }
        public function product_info($id)
        {
            $data['active_page'] = 3;
            $data['title'] = $this->elevator_products_model->get_product_title_by_id($id)->title;
            $data['elevator_product'] = $this->elevator_products_model->get_product_by_id($id);
            $data['elevator_more_infos'] = $this->elevator_products_model->get_other_info($id);
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('pages/elevator_product_item', $data);
            $this->load->view('templates/footer');
        }
    }
?>