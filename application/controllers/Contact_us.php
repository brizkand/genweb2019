<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Contact_us extends CI_Controller
    {
        public function index()
        {
            $data['active_page'] = 6;
            $data['title'] = 'Contact Us';
            $this->load->view('templates/header', $data);
            $this->load->view('templates/navigation');
            $this->load->view('pages/contact_us', $data);
            $this->load->view('templates/footer');
        }
        public function send_mail()
        {
            $data['active_page'] = 6;
            $this->form_validation->set_rules('name', 'Name', 'required|xss_clean');
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email|xss_clean');
            $this->form_validation->set_rules('subject', 'Subject', 'required|xss_clean');
            $this->form_validation->set_rules('message', 'Message', 'required|xss_clean');

            if($this->form_validation->run() === FALSE)
            {
                $data['title'] = 'Contact Us';
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/contact_us', $data);
                $this->load->view('templates/footer');
            }
            else
            {
                $this->email->from(set_value('email'), set_value('name'));
                $this->email->to('kevin@genserv-ph.com');
                //$this->email->cc('another@another-example.com');
                //$this->email->bcc('them@their-example.com');

                $this->email->subject(set_value('subject'));
                $this->email->message(set_value('message'));

                $this->email->send();
                //echo $this->email->print_debugger();
                $this->session->set_flashdata('success_email', 'You successfully sent an email.');

                $data['title'] = 'Contact Us';
                $this->load->view('templates/header', $data);
                $this->load->view('templates/navigation');
                $this->load->view('pages/contact_us', $data);
                $this->load->view('templates/footer');     
            }
        }
    }
    
?>