<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Brochures extends CI_Controller
{
    public function index()
    {
        $data['active_page'] = 5;
        $data['title'] = 'Brochure';
        $data['brochures'] = $this->brochure_model->get_brochure();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/navigation');
        $this->load->view('pages/brochure', $data);
        $this->load->view('templates/footer');
    }
    public function get_brochure_id($id)
    {
        $data['active_page'] = 5;
        $data['title'] = $this->brochure_model->get_brochure_item($id)['title'];
        $data['brochure_item'] = $this->brochure_model->get_brochure_item($id);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/navigation');
        $this->load->view('pages/brochure_item', $data);
        $this->load->view('templates/footer');    
    }
}

?>