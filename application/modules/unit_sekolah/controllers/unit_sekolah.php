<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Controller unit_sekolah
 * @created on : Friday, 30-Oct-2015 15:23:22
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */
class unit_sekolah extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('unit_sekolahs');
    }

    /**
     * List all data unit_sekolah
     *
     */
    public function index() {
        $config = array(
            'base_url' => site_url('unit_sekolah/index/'),
            'total_rows' => $this->unit_sekolahs->count_all(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['title'] = "Unit";
        $data['total'] = $config['total_rows'];
        $data['pagination'] = $this->pagination->create_links();
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['unit_sekolahs'] = $this->unit_sekolahs->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('unit_sekolah/view', $data);
    }

    /**
     * Call Form to Add  New unit_sekolah
     *
     */
    public function add() {
        $data['unit_sekolah'] = $this->unit_sekolahs->add();
        $data['action'] = 'unit_sekolah/save';

        $data['lokasi_sekolah'] = $this->unit_sekolahs->get_lokasi_sekolah();
        $data['title'] = "Unit";

        $this->template->display('unit_sekolah/form', $data);
    }

    /**
     * Call Form to Modify unit_sekolah
     *
     */
    public function edit($id = '') {
        if ($id != '') {

            $data['unit_sekolah'] = $this->unit_sekolahs->get_one($id);

            //	var_dump($data['unit_sekolah']);
            //exit();
            $data['action'] = 'unit_sekolah/save/' . $id;

            $data['lokasi_sekolah'] = $this->unit_sekolahs->get_lokasi_sekolah();
            $data['title'] = "Unit";

            $this->template->display('unit_sekolah/form', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('unit_sekolah'));
        }
    }

    /**
     * Save & Update data  unit_sekolah
     *
     */
    public function save($id = NULL) {
        // validation config
        $config = array(
            array(
                'field' => 'KODE_UNIT',
                'label' => 'KODE UNIT',
                'rules' => 'trim'
            ),
            array(
                'field' => 'NAMA_UNIT',
                'label' => 'NAMA UNIT',
                'rules' => 'trim'
            ),
            array(
                'field' => 'KODE_LOKX',
                'label' => 'KODE LOKX',
                'rules' => 'trim'
            ),
            array(
                'field' => 'KETX_UNIT',
                'label' => 'KETX UNIT',
                'rules' => 'trim'
            ),
        );

        // if id NULL then add new data
        if (!$id) {
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {

                    $this->unit_sekolahs->save();
                    $this->session->set_flashdata('notif', notify('Data berhasil di simpan', 'success'));
                    redirect('unit_sekolah');
                }
            } else { // If validation incorrect 
                $this->add();
            }
        } else { // Update data if Form Edit send Post and ID available
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {
                    $this->unit_sekolahs->update($id);
                    $this->session->set_flashdata('notif', notify('Data berhasil di update', 'success'));
                    redirect('unit_sekolah');
                }
            } else { // If validation incorrect 
                $this->edit($id);
            }
        }
    }

    /**
     * Detail unit_sekolah
     *
     */
    public function show($id = '') {
        if ($id != '') {

            $data['unit_sekolah'] = $this->unit_sekolahs->get_one($id);
            $this->template->display('unit_sekolah/_show', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('unit_sekolah'));
        }
    }

    /**
     * Search unit_sekolah like ""
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
            'base_url' => site_url('unit_sekolah/search/'),
            'total_rows' => $this->unit_sekolahs->count_all_search(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['title'] = "Unit";
        $data['total'] = $config['total_rows'];
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['pagination'] = $this->pagination->create_links();
        $data['unit_sekolahs'] = $this->unit_sekolahs->get_search($config['per_page'], $this->uri->segment(3));

        $this->template->display('unit_sekolah/view', $data);
    }

    /**
     * Delete unit_sekolah by ID
     *
     */
    public function destroy($id) {
        if ($id) {
            $this->unit_sekolahs->destroy($id);
            $this->session->set_flashdata('notif', notify('Data berhasil di hapus', 'success'));
            redirect('unit_sekolah');
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'warning'));
            redirect('unit_sekolah');
        }
    }

}

?>
