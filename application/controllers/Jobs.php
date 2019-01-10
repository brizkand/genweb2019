<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Jobs extends CI_Controller
    {
        public function index($id = NULL)
        {
            if($id == NULL)
            {
                $data['active_page'] = 6;
                $data['title'] = 'Jobs @ Genserv';
                $data['jobs'] = $this->job_model->get_all();
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/jobs', $data);
                $this->load->view('templates/footer');
            }
            else
            {
                $data['active_page'] = 6;
                $data['title'] = ucfirst($this->job_model->get_jobs_title_by_id($id)->title);
                $data['jobs'] = $this->job_model->get_jobs_by_id($id);
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/jobs_item', $data);
                $this->load->view('templates/footer');
            }
        }
    }
?>