<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Industrial_and_security_products extends CI_Controller
    {
        public function index($id='all')
        {
            $data['active_page'] = 3;
            if($id == 'all')
            {
                $data['categories'] = $this->industrial_and_security_products_model->get_categories();
                $data['title'] = 'Industrial and Security Products';
                $data['industrial_and_security_products'] = $this->industrial_and_security_products_model->get_all();
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/industrial_and_security_products', $data);
                $this->load->view('templates/footer');
            }
            else
            {
                $data['categories'] = $this->industrial_and_security_products_model->get_categories();
                $data['title'] = ucfirst($this->industrial_and_security_products_model->get_category_by_id($id)->category);
                $data['industrial_and_security_products'] = $this->industrial_and_security_products_model->get_all_by_id($id);
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/industrial_and_security_products', $data);
                $this->load->view('templates/footer');
            }
        }
        public function product_info($id)
        {
            $data['active_page'] = 3;
            $data['title'] = $this->industrial_and_security_products_model->get_product_title_by_id($id)->title;
            $data['industrial_and_security_product'] = $this->industrial_and_security_products_model->get_product_by_id($id);
            $data['industrial_and_security_products_more_infos'] = $this->industrial_and_security_products_model->get_other_info($id);
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('pages/industrial_and_security_product_item', $data);
            $this->load->view('templates/footer');
        }
    }
?>