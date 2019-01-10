<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Business_partners extends CI_Controller
    {
        public function view($category_id = 'all')
        {
            $data['active_page'] = 2;
            if($category_id == 'all')
            {
                $data['partners'] = $this->business_partners_model->get_business_partners();
                $data['title'] = 'Genserv Business Partners';
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/business_partners', $data);
                $this->load->view('templates/footer');
            }
            else
            {
                $data['partners'] = $this->business_partners_model->get_business_partners_with_category($category_id);
                $data['title'] = ucfirst($this->business_partners_model->get_business_partners_category_title($category_id));
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/business_partners', $data);
                $this->load->view('templates/footer');                
            }    
        }
    } 
?>