<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Controller tabel_kelas
 * @created on : Saturday, 31-Oct-2015 00:55:53
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */
class tabel_kelas extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('tabel_kelass');
    }

    /**
     * List all data tabel_kelas
     *
     */
    public function index() {
        $config = array(
            'base_url' => site_url('tabel_kelas/index/'),
            'total_rows' => $this->tabel_kelass->count_all(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['title'] = "Pembuatan Kelas";
        $data['total'] = $config['total_rows'];
        $data['pagination'] = $this->pagination->create_links();
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['tabel_kelass'] = $this->tabel_kelass->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('tabel_kelas/view', $data);
    }

    /**
     * Call Form to Add  New tabel_kelas
     *
     */
    public function add() {
        $data['tabel_kelas'] = $this->tabel_kelass->add();
        $data['action'] = 'tabel_kelas/save';
        $data['get_unit_sekolah'] = $this->tabel_kelass->get_unit_sekolah();
        $data['get_tahun_ajar'] = $this->tabel_kelass->get_tahun_ajar();
        $data['get_fa_kelas'] = $this->tabel_kelass->get_fa_kelas();
        $data['title'] = "Pembuatan Kelas";

        
        
        $this->template->display('tabel_kelas/form', $data);
    }

    /**
     * Call Form to Modify tabel_kelas
     *
     */
    public function edit($id = '') {
        if ($id != '') {
            $data['get_unit_sekolah'] = $this->tabel_kelass->get_unit_sekolah();
            $data['get_tahun_ajar'] = $this->tabel_kelass->get_tahun_ajar();
            $data['get_fa_kelas'] = $this->tabel_kelass->get_fa_kelas();
            $data['tabel_kelas'] = $this->tabel_kelass->get_one($id);
            $data['action'] = 'tabel_kelas/save/' . $id;
            $data['title'] = "Pembuatan Kelas";
         
            $this->template->display('tabel_kelas/form', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('tabel_kelas'));
        }
    }

    /**
     * Save & Update data  tabel_kelas
     *
     */
    public function save($id = NULL) {
        // validation config
        $config = array(
            array(
                'field' => 'BUSS_CODE',
                'label' => 'BUSS CODE',
                'rules' => 'trim'
            ),
            array(
                'field' => 'NAMA_KLSX',
                'label' => 'NAMA KLSX',
                'rules' => 'trim'
            ),
            array(
                'field' => 'STAT_AKTF',
                'label' => 'STAT AKTF',
                'rules' => 'trim'
            ),
        );

        // if id NULL then add new data
        if (!$id) {
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {

                    $this->tabel_kelass->save();
                    $this->session->set_flashdata('notif', notify('Data berhasil di simpan', 'success'));
                    redirect('tabel_kelas');
                }
            } else { // If validation incorrect 
                $this->add();
            }
        } else { // Update data if Form Edit send Post and ID available
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {
                    $this->tabel_kelass->update($id);
                    $this->session->set_flashdata('notif', notify('Data berhasil di update', 'success'));
                    redirect('tabel_kelas');
                }
            } else { // If validation incorrect 
                $this->edit($id);
            }
        }
    }

    /**
     * Detail tabel_kelas
     *
     */
    public function show($id = '') {
        if ($id != '') {

            $data['tabel_kelas'] = $this->tabel_kelass->get_one($id);
            $this->template->display('tabel_kelas/_show', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('tabel_kelas'));
        }
    }

    /**
     * Search tabel_kelas like ""
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
            'base_url' => site_url('tabel_kelas/search/'),
            'total_rows' => $this->tabel_kelass->count_all_search(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['title'] = "Pembuatan Kelas";
        $data['total'] = $config['total_rows'];
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['pagination'] = $this->pagination->create_links();
        $data['tabel_kelass'] = $this->tabel_kelass->get_search($config['per_page'], $this->uri->segment(3));

        $this->template->display('tabel_kelas/view', $data);
    }

    /**
     * Delete tabel_kelas by ID
     *
     */
    public function destroy($id) {
        if ($id) {
            $this->tabel_kelass->destroy($id);
            $this->session->set_flashdata('notif', notify('Data berhasil di hapus', 'success'));
            redirect('tabel_kelas');
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'warning'));
            redirect('tabel_kelas');
        }
    }

}

?>
