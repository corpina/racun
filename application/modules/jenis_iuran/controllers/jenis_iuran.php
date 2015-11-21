<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Controller jenis_iuran
 * @created on : Thursday, 19-Nov-2015 00:24:03
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */
class jenis_iuran extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('jenis_iurans');
    }

    /**
     * List all data jenis_iuran
     *
     */
    public function index() {
        $config = array(
            'base_url' => site_url('jenis_iuran/index/'),
            'total_rows' => $this->jenis_iurans->count_all(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['total'] = $config['total_rows'];
        $data['pagination'] = $this->pagination->create_links();
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['jenis_iurans'] = $this->jenis_iurans->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('jenis_iuran/view', $data);
    }

    /**
     * Call Form to Add  New jenis_iuran
     *
     */
    public function add() {
        $data['jenis_iuran'] = $this->jenis_iurans->add();
        $data['action'] = 'jenis_iuran/save';
        $data['get_sekolah'] = $this->jenis_iurans->get_sekolah();
        $data['get_jenis_iuran'] = $this->jenis_iurans->get_jenis_iuran();
        $data['get_pendapatan'] = $this->jenis_iurans->get_pendapatan();
        $data['get_kas_tujuan'] = $this->jenis_iurans->get_kas_tujuan();

        $data['get_piutang'] = $this->jenis_iurans->get_piutang();
        $data['get_terima_dimuka'] = $this->jenis_iurans->get_terima_dimuka();



        $this->template->display('jenis_iuran/form', $data);
    }

    /**
     * Call Form to Modify jenis_iuran
     *
     */
    public function edit($id = '') {
        if ($id != '') {

            $data['jenis_iuran'] = $this->jenis_iurans->get_one($id);
            $data['action'] = 'jenis_iuran/save/' . $id;
            $data['action'] = 'jenis_iuran/save';
            $data['get_sekolah'] = $this->jenis_iurans->get_sekolah();
            $data['get_jenis_iuran'] = $this->jenis_iurans->get_jenis_iuran();
            $data['get_pendapatan'] = $this->jenis_iurans->get_pendapatan();
            $data['get_kas_tujuan'] = $this->jenis_iurans->get_kas_tujuan();

            $data['get_piutang'] = $this->jenis_iurans->get_piutang();
            $data['get_terima_dimuka'] = $this->jenis_iurans->get_terima_dimuka();
            $this->template->display('jenis_iuran/form', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('jenis_iuran'));
        }
    }

    /**
     * Save & Update data  jenis_iuran
     *
     */
    public function save($id = NULL) {
        // validation config
        $config = array(
            array(
                'field' => 'CODD_VALU',
                'label' => 'CODD VALU',
                'rules' => 'trim'
            ),
            array(
                'field' => 'CODD_DESC',
                'label' => 'CODD DESC',
                'rules' => 'trim'
            ),
        );

        // if id NULL then add new data
        if (!$id) {
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {

                    $this->jenis_iurans->save();
                    $this->session->set_flashdata('notif', notify('Data berhasil di simpan', 'success'));
                    redirect('jenis_iuran');
                }
            } else { // If validation incorrect 
                $this->add();
            }
        } else { // Update data if Form Edit send Post and ID available
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {
                    $this->jenis_iurans->update($id);
                    $this->session->set_flashdata('notif', notify('Data berhasil di update', 'success'));
                    redirect('jenis_iuran');
                }
            } else { // If validation incorrect 
                $this->edit($id);
            }
        }
    }

    /**
     * Detail jenis_iuran
     *
     */
    public function show($id = '') {
        if ($id != '') {

            $data['jenis_iuran'] = $this->jenis_iurans->get_one($id);
            $this->template->display('jenis_iuran/_show', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('jenis_iuran'));
        }
    }

    /**
     * Search jenis_iuran like ""
     *
     */
    public function search() {
        if ($this->input->post('q')) {
            $keyword = $this->input->post('q');

            $this->session->set_userdata(
                    array('keyword' => $this->input->post('q', TRUE))
            );
        }

        $config = array(
            'base_url' => site_url('jenis_iuran/search/'),
            'total_rows' => $this->jenis_iurans->count_all_search(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['total'] = $config['total_rows'];
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['pagination'] = $this->pagination->create_links();
        $data['jenis_iurans'] = $this->jenis_iurans->get_search($config['per_page'], $this->uri->segment(3));

        $this->template->display('jenis_iuran/view', $data);
    }

    /**
     * Delete jenis_iuran by ID
     *
     */
    public function destroy($id) {
        if ($id) {
            $this->jenis_iurans->destroy($id);
            $this->session->set_flashdata('notif', notify('Data berhasil di hapus', 'success'));
            redirect('jenis_iuran');
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'warning'));
            redirect('jenis_iuran');
        }
    }

}

?>
