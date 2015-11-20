<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Controller tahun_ajar
 * @created on : Sunday, 25-Oct-2015 10:50:09
 * Copyright 2015
 *
 *
 */
class tahun_ajar extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('tahun_ajars');
        $this->load->library('breadcrumb');
    }

    /**
     * List all data tahun_ajar
     *
     */
    public function index() {


    
        $config = array(
            'base_url' => site_url('tahun_ajar/index/'),
            'total_rows' => $this->tahun_ajars->count_all(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['total'] = $config['total_rows'];
        $data['pagination'] = $this->pagination->create_links();
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['tahun_ajars'] = $this->tahun_ajars->get_all($config['per_page'], $this->uri->segment(3));
        $data['title'] = "Tahun Ajar";
        $this->template->display('tahun_ajar/view', $data);
    }

    /**
     * Call Form to Add  New tahun_ajar
     *
     */
    public function add() {
        $data['tahun_ajar'] = $this->tahun_ajars->add();
        $data['action'] = 'tahun_ajar/save';
        $data['title'] = "Tahun Ajar";

        $this->template->display('tahun_ajar/form_tambah', $data);
    }

    /**
     * Call Form to Modify tahun_ajar
     *
     */
    public function edit($id = '') {
        if ($id != '') {
            $data['title'] = "Tahun Ajar";
            $data['tahun_ajar'] = $this->tahun_ajars->get_one($id);
            $data['action'] = 'tahun_ajar/destroy/' . $id;



            $this->template->display('tahun_ajar/form', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('tahun_ajar'));
        }
    }

    /**
     * Save & Update data  tahun_ajar
     *
     */
    public function save($id = NULL) {
        // validation config
        $config = array(
            array(
                'field' => 'KETX_THN',
                'label' => 'KETX THN',
                'rules' => 'trim'
            ),
            array(
                'field' => 'TGLX_STRT',
                'label' => 'TGLX STRT',
                'rules' => 'trim'
            ),
            array(
                'field' => 'TGLX_ENDX',
                'label' => 'TGLX ENDX',
                'rules' => 'trim'
            ),
        );

        // if id NULL then add new data
        if (!$id) {
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {

                    $this->tahun_ajars->save();
                    $this->session->set_flashdata('notif', notify('Data berhasil di simpan', 'success'));
                    redirect('tahun_ajar');
                }
            } else { // If validation incorrect 
                $this->add();
            }
        } else { // Update data if Form Edit send Post and ID available
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {
                    $this->tahun_ajars->update($id);
                    $this->session->set_flashdata('notif', notify('Data berhasil di update', 'success'));
                    redirect('tahun_ajar');
                }
            } else { // If validation incorrect 
                $this->edit($id);
            }
        }
    }

    /**
     * Detail tahun_ajar
     *
     */
    public function show($id = '') {
        if ($id != '') {

            $data['tahun_ajar'] = $this->tahun_ajars->get_one($id);
            $this->template->display('tahun_ajar/_show', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('tahun_ajar'));
        }
    }

    /**
     * Search tahun_ajar like ""
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
            'base_url' => site_url('tahun_ajar/search/'),
            'total_rows' => $this->tahun_ajars->count_all_search(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['title'] = "Tahun Ajar";
        $data['total'] = $config['total_rows'];
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['pagination'] = $this->pagination->create_links();
        $data['tahun_ajars'] = $this->tahun_ajars->get_search($config['per_page'], $this->uri->segment(3));

        $this->template->display('tahun_ajar/view', $data);
    }

    /**
     * Delete tahun_ajar by ID
     *
     */
    public function destroy($id) {
        if ($id) {
            $this->tahun_ajars->destroy($id);
            $this->session->set_flashdata('notif', notify('Data berhasil di hapus', 'success'));
            redirect('tahun_ajar');
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'warning'));
            redirect('tahun_ajar');
        }
    }

}

?>
