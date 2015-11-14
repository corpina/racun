<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Controller fa_lokxxx
 * @created on : Sunday, 25-Oct-2015 12:25:35
 * Copyright 2015
 *
 *
 */
class fa_lokxxx extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('fa_lokxxxs');
    }

    /**
     * List all data fa_lokxxx
     *
     */
    public function index() {
        $config = array(
            'base_url' => site_url('fa_lokxxx/index/'),
            'total_rows' => $this->fa_lokxxxs->count_all(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $data['title'] = "Lokasi";
        $this->pagination->initialize($config);
        $data['total'] = $config['total_rows'];
        $data['pagination'] = $this->pagination->create_links();
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['fa_lokxxxs'] = $this->fa_lokxxxs->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('fa_lokxxx/view', $data);
    }

    /**
     * Call Form to Add  New fa_lokxxx
     *
     */
    public function add() {
        $data['fa_lokxxx'] = $this->fa_lokxxxs->add();
        $data['action'] = 'fa_lokxxx/save';
        $data['title'] = "Lokasi";

        $this->template->display('fa_lokxxx/form', $data);
    }

    /**
     * Call Form to Modify fa_lokxxx
     *
     */
    public function edit($id = '') {
        if ($id != '') {
            $data['title'] = "Lokasi";
            $data['fa_lokxxx'] = $this->fa_lokxxxs->get_one($id);
            $data['action'] = 'fa_lokxxx/save/' . $id;


            $this->template->display('fa_lokxxx/form', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('fa_lokxxx'));
        }
    }

    /**
     * Save & Update data  fa_lokxxx
     *
     */
    public function save($id = NULL) {
        // validation config
        $config = array(
            array(
                'field' => 'NAMA_LOKX',
                'label' => 'NAMA LOKX',
                'rules' => 'trim'
            ),
            array(
                'field' => 'ALMT_LOKX',
                'label' => 'ALMT LOKX',
                'rules' => 'trim'
            ),
            array(
                'field' => 'TLPX_LOKX',
                'label' => 'TLPX LOKX',
                'rules' => 'trim'
            ),
            array(
                'field' => 'FAXX_LOKX',
                'label' => 'FAXX LOKX',
                'rules' => 'trim'
            ),
        );

        // if id NULL then add new data
        if (!$id) {
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {

                    $this->fa_lokxxxs->save();
                    $this->session->set_flashdata('notif', notify('Data berhasil di simpan', 'success'));
                    redirect('fa_lokxxx');
                }
            } else { // If validation incorrect 
                $this->add();
            }
        } else { // Update data if Form Edit send Post and ID available
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {
                    $this->fa_lokxxxs->update($id);
                    $this->session->set_flashdata('notif', notify('Data berhasil di update', 'success'));
                    redirect('fa_lokxxx');
                }
            } else { // If validation incorrect 
                $this->edit($id);
            }
        }
    }

    /**
     * Detail fa_lokxxx
     *
     */
    public function show($id = '') {
        if ($id != '') {

            $data['fa_lokxxx'] = $this->fa_lokxxxs->get_one($id);
            $this->template->display('fa_lokxxx/_show', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('fa_lokxxx'));
        }
    }

    /**
     * Search fa_lokxxx like ""
     *
     */
    
    public function search() {
        if ($this->input->post('q')) {
            $keyword = $this->input->post('q');

            $this->session->set_userdata(
                    array('keyword' => $this->input->post('q', TRUE))
            );
        }
        $data['title'] = "Lokasi";
        $config = array(
            'base_url' => site_url('fa_lokxxx/search/'),
            'total_rows' => $this->fa_lokxxxs->count_all_search(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['total'] = $config['total_rows'];
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['pagination'] = $this->pagination->create_links();
        $data['fa_lokxxxs'] = $this->fa_lokxxxs->get_search($config['per_page'], $this->uri->segment(3));

        $this->template->display('fa_lokxxx/view', $data);
    }

    /**
     * Delete fa_lokxxx by ID
     *
     */
    public function destroy($id) {
		
		
        if ($id) {
            $this->fa_lokxxxs->destroy($id);
            $this->session->set_flashdata('notif', notify('Data berhasil di hapus', 'success'));
            redirect('fa_lokxxx');
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'warning'));
            redirect('fa_lokxxx');
        }
    }

}

?>
