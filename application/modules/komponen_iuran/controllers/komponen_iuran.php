<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Controller komponen_iuran
 * @created on : Saturday, 31-Oct-2015 08:44:53
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */
class komponen_iuran extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('komponen_iurans');
    }

    /**
     * List all data komponen_iuran
     *
     */
    public function index() {
        $config = array(
            'base_url' => site_url('komponen_iuran/index/'),
            'total_rows' => $this->komponen_iurans->count_all(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['title'] = "Komponan Iuran Siswa";
        $data['total'] = $config['total_rows'];
        $data['pagination'] = $this->pagination->create_links();
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['komponen_iurans'] = $this->komponen_iurans->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('komponen_iuran/view', $data);
    }

    /**
     * Call Form to Add  New komponen_iuran
     *
     */
    public function add() {
        $data['komponen_iuran'] = $this->komponen_iurans->add();
        $data['action'] = 'komponen_iuran/save';
        $data['title'] = "Komponan Iuran Siswa";


        $this->template->display('komponen_iuran/form', $data);
    }

    /**
     * Call Form to Modify komponen_iuran
     *
     */
    public function edit($id = '') {
        if ($id != '') {

            $data['komponen_iuran'] = $this->komponen_iurans->get_one($id);
            $data['action'] = 'komponen_iuran/save/' . $id;
            $data['title'] = "Komponan Iuran Siswa";


            $this->template->display('komponen_iuran/form', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('komponen_iuran'));
        }
    }

    /**
     * Save & Update data  komponen_iuran
     *
     */
    public function save($id = NULL) {
        // validation config
        $config = array(
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

                    $this->komponen_iurans->save();
                    $this->session->set_flashdata('notif', notify('Data berhasil di simpan', 'success'));
                    redirect('komponen_iuran');
                }
            } else { // If validation incorrect 
                $this->add();
            }
        } else { // Update data if Form Edit send Post and ID available
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {
                    $this->komponen_iurans->update($id);
                    $this->session->set_flashdata('notif', notify('Data berhasil di update', 'success'));
                    redirect('komponen_iuran');
                }
            } else { // If validation incorrect 
                $this->edit($id);
            }
        }
    }

    /**
     * Detail komponen_iuran
     *
     */
    public function show($id = '') {
        if ($id != '') {

            $data['komponen_iuran'] = $this->komponen_iurans->get_one($id);
            $this->template->display('komponen_iuran/_show', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('komponen_iuran'));
        }
    }

    /**
     * Search komponen_iuran like ""
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
            'base_url' => site_url('komponen_iuran/search/'),
            'total_rows' => $this->komponen_iurans->count_all_search(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['title'] = "Komponan Iuran Siswa";
        $data['total'] = $config['total_rows'];
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['pagination'] = $this->pagination->create_links();
        $data['komponen_iurans'] = $this->komponen_iurans->get_search($config['per_page'], $this->uri->segment(3));

        $this->template->display('komponen_iuran/view', $data);
    }

    /**
     * Delete komponen_iuran by ID
     *
     */
    public function destroy($id) {
        if ($id) {
            $this->komponen_iurans->destroy($id);
            $this->session->set_flashdata('notif', notify('Data berhasil di hapus', 'success'));
            redirect('komponen_iuran');
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'warning'));
            redirect('komponen_iuran');
        }
    }

}

?>
