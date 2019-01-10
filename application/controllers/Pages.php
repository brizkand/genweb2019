<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {
    
	public function view($page = "home")
	{
        if(!file_exists(APPPATH . '/views/pages/' . $page . '.php')){
            show_404();
        }
        $data['title'] = ucfirst($page);
        //GETTING DATA IN CAROUSEL TABLE
        if($page == 'home'){
            $data['active_page'] = 1;
            $data['carousels'] = $this->carousel_model->get_carousel();
            $data['products_services'] = $this->products_services_model->get_products_services();
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('templates/carousel', $data);
            $this->load->view('pages/' . $page, $data);
            $this->load->view('templates/footer');
        }
        if($page == 'about'){
            $data['active_page'] = 2;
            $data['title'] = 'About Us';
            $data['abouts'] = $this->about_model->get_about();
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('pages/' . $page, $data);
            $this->load->view('templates/footer');
        }
        if($page == 'genserv_story'){
            $data['active_page'] = 2;
            $data['title'] = 'Genserv History';
            $data['stories'] = $this->genserv_story_model->get_genserv_story();
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('pages/' . $page, $data);
            $this->load->view('templates/footer');
        }
        if($page == 'genserv_map'){
            $data['active_page'] = 2;
            $data['title'] = 'Genserv Location Map';
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('pages/' . $page, $data);
            $this->load->view('templates/footer');
        }
        // $this->load->view('templates/header', $data);
        // $this->load->view('templates/navigation');
        // $this->load->view('pages/' . $page, $data);
        // $this->load->view('templates/footer');
	}
}
