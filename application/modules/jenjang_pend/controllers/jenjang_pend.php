<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Controller jenjang_pend
 * @created on : Saturday, 31-Oct-2015 08:44:53
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */
class jenjang_pend extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('jenjang_pends');
    }

    /**
     * List all data jenjang_pend
     *
     */
    public function index() {
        $config = array(
            'base_url' => site_url('jenjang_pend/index/'),
            'total_rows' => $this->jenjang_pends->count_all(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['title'] = "Jenjang Pendidikan";
        $data['total'] = $config['total_rows'];
        $data['pagination'] = $this->pagination->create_links();
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['jenjang_pends'] = $this->jenjang_pends->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('jenjang_pend/view', $data);
    }

    /**
     * Call Form to Add  New jenjang_pend
     *
     */
    public function add() {
        $data['jenjang_pend'] = $this->jenjang_pends->add();
        $data['action'] = 'jenjang_pend/save';
        $data['title'] = "Jenjang Pendidikan";


        $this->template->display('jenjang_pend/form', $data);
    }

    /**
     * Call Form to Modify jenjang_pend
     *
     */
    public function edit($id = '') {
        if ($id != '') {

            $data['jenjang_pend'] = $this->jenjang_pends->get_one($id);
            $data['action'] = 'jenjang_pend/save/' . $id;
            $data['title'] = "Jenjang Pendidikan";


            $this->template->display('jenjang_pend/form', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('jenjang_pend'));
        }
    }

    /**
     * Save & Update data  jenjang_pend
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

                    $this->jenjang_pends->save();
                    $this->session->set_flashdata('notif', notify('Data berhasil di simpan', 'success'));
                    redirect('jenjang_pend');
                }
            } else { // If validation incorrect 
                $this->add();
            }
        } else { // Update data if Form Edit send Post and ID available
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {
                    $this->jenjang_pends->update($id);
                    $this->session->set_flashdata('notif', notify('Data berhasil di update', 'success'));
                    redirect('jenjang_pend');
                }
            } else { // If validation incorrect 
                $this->edit($id);
            }
        }
    }

    /**
     * Detail jenjang_pend
     *
     */
    public function show($id = '') {
        if ($id != '') {

            $data['jenjang_pend'] = $this->jenjang_pends->get_one($id);
            $this->template->display('jenjang_pend/_show', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('jenjang_pend'));
        }
    }

    /**
     * Search jenjang_pend like ""
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
            'base_url' => site_url('jenjang_pend/search/'),
            'total_rows' => $this->jenjang_pends->count_all_search(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['title'] = "Jenjang Pendidikan";
        $data['total'] = $config['total_rows'];
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['pagination'] = $this->pagination->create_links();
        $data['jenjang_pends'] = $this->jenjang_pends->get_search($config['per_page'], $this->uri->segment(3));

        $this->template->display('jenjang_pend/view', $data);
    }

    /**
     * Delete jenjang_pend by ID
     *
     */
    public function destroy($id) {
        if ($id) {
            $this->jenjang_pends->destroy($id);
            $this->session->set_flashdata('notif', notify('Data berhasil di hapus', 'success'));
            redirect('jenjang_pend');
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'warning'));
            redirect('jenjang_pend');
        }
    }

}

?>
