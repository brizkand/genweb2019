<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    class Genserv_projects extends CI_Controller
    {
        public function index($id = 'all')
        {
            $data['active_page'] = 4;
            if($id == 'all')
            {
                $data['title'] = 'Our Finished Projects';
                $data['projects'] = $this->genserv_project_model->get_all();
                $data['categories'] = $this->genserv_project_model->get_categories();
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/genserv_projects', $data);
                $this->load->view('templates/footer');
            }
            else
            {
                $data['title'] = ucfirst($this->genserv_project_model->get_category_by_id($id)->category);
                $data['projects'] = $this->genserv_project_model->get_all_by_categories($id);
                $data['categories'] = $this->genserv_project_model->get_categories();
                
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/genserv_projects', $data);
                $this->load->view('templates/footer');
            }
        }
        //GETTING PRODUCT INFO
        public function project_info($id)
        {
            $data['active_page'] = 4;
            $data['title'] = $this->genserv_project_model->get_product_title_by_id($id)->project_name;
            $data['project_item'] = $this->genserv_project_model->get_project_by_id($id);
            $data['project_images'] = $this->genserv_project_model->get_project_images_by_id($id);
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('pages/genserv_project_item', $data);
            $this->load->view('templates/footer');
        }
    }
?>