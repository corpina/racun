<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Controller lokasi_sekolah
 * @created on : Sunday, 25-Oct-2015 12:25:35
 * Copyright 2015
 *
 *
 */
class lokasi_sekolah extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('lokasi_sekolahs');
    }

    /**
     * List all data lokasi_sekolah
     *
     */
    public function index() {
        $config = array(
            'base_url' => site_url('lokasi_sekolah/index/'),
            'total_rows' => $this->lokasi_sekolahs->count_all(),
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
        $data['lokasi_sekolahs'] = $this->lokasi_sekolahs->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('lokasi_sekolah/view', $data);
    }

    /**
     * Call Form to Add  New lokasi_sekolah
     *
     */
    public function add() {
        $data['lokasi_sekolah'] = $this->lokasi_sekolahs->add();
        $data['action'] = 'lokasi_sekolah/save';
        $data['title'] = "Lokasi";

        $this->template->display('lokasi_sekolah/form', $data);
    }

    /**
     * Call Form to Modify lokasi_sekolah
     *
     */
    public function edit($id = '') {
        if ($id != '') {
            $data['title'] = "Lokasi";
            $data['lokasi_sekolah'] = $this->lokasi_sekolahs->get_one($id);
            $data['action'] = 'lokasi_sekolah/save/' . $id;


            $this->template->display('lokasi_sekolah/form', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('lokasi_sekolah'));
        }
    }

    /**
     * Save & Update data  lokasi_sekolah
     *
     */
    public function save($id = NULL) {
        // validation config
        $config = array(
            array(
                'field' => 'nama_lokasi',
                'label' => 'NAMA LOKX',
                'rules' => 'trim'
            ),
            array(
                'field' => 'alamat_lokasi',
                'label' => 'ALMT LOKX',
                'rules' => 'trim'
            ),
            array(
                'field' => 'telepon_sekolah',
                'label' => 'TLPX LOKX',
                'rules' => 'trim'
            ),
            array(
                'field' => 'fax_lokasi',
                'label' => 'FAXX LOKX',
                'rules' => 'trim'
            ),
        );

        // if id NULL then add new data
        if (!$id) {
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {

                    $this->lokasi_sekolahs->save();
                    $this->session->set_flashdata('notif', notify('Data berhasil di simpan', 'success'));
                    redirect('lokasi_sekolah');
                }
            } else { // If validation incorrect 
                $this->add();
            }
        } else { // Update data if Form Edit send Post and ID available
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {
                    $this->lokasi_sekolahs->update($id);
                    $this->session->set_flashdata('notif', notify('Data berhasil di update', 'success'));
                    redirect('lokasi_sekolah');
                }
            } else { // If validation incorrect 
                $this->edit($id);
            }
        }
    }

    /**
     * Detail lokasi_sekolah
     *
     */
    public function show($id = '') {
        if ($id != '') {

            $data['lokasi_sekolah'] = $this->lokasi_sekolahs->get_one($id);
            $this->template->display('lokasi_sekolah/_show', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('lokasi_sekolah'));
        }
    }

    /**
     * Search lokasi_sekolah like ""
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
            'base_url' => site_url('lokasi_sekolah/search/'),
            'total_rows' => $this->lokasi_sekolahs->count_all_search(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['total'] = $config['total_rows'];
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['pagination'] = $this->pagination->create_links();
        $data['lokasi_sekolahs'] = $this->lokasi_sekolahs->get_search($config['per_page'], $this->uri->segment(3));

        $this->template->display('lokasi_sekolah/view', $data);
    }

    /**
     * Delete lokasi_sekolah by ID
     *
     */
    public function destroy($id) {
		
		
        if ($id) {
            $this->lokasi_sekolahs->destroy($id);
            $this->session->set_flashdata('notif', notify('Data berhasil di hapus', 'success'));
            redirect('lokasi_sekolah');
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'warning'));
            redirect('lokasi_sekolah');
        }
    }

}

?>
