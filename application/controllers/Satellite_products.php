<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    class Satellite_products extends CI_Controller
    {
        public function index($id = 'all', $id2 = NULL)
        {
            $data['active_page'] = 3;
            if($id == 'all')
            {
                $data['title'] = 'Satellite and Digital Set-up Box Products';
                $data['satellite_products'] = $this->satellite_products_model->get_all();
                $data['categories'] = $this->satellite_products_model->get_categories();
                
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/satellite_products', $data);
                $this->load->view('templates/footer');
            }
            else
            {
                $data['title'] = ucfirst($this->satellite_products_model->get_category_by_id($id)->category);
                $data['satellite_products'] = $this->satellite_products_model->get_all_by_categories($id);
                $data['categories'] = $this->satellite_products_model->get_categories();
                
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/satellite_products', $data);
                $this->load->view('templates/footer');
            }
        }
        //GETTING PRODUCT INFO
        public function product_info($id)
        {
            $data['active_page'] = 3;
            $data['title'] = $this->satellite_products_model->get_product_title_by_id($id)->title;
            $data['satellite_product'] = $this->satellite_products_model->get_product_by_id($id);
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('pages/satellite_product_item', $data);
            $this->load->view('templates/footer');
        }
    }
?>