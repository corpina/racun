<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Controller tb_descthnajar
 * @created on : Sunday, 25-Oct-2015 10:50:09
 * Copyright 2015
 *
 *
 */
class tb_descthnajar extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('tb_descthnajars');
        $this->load->library('breadcrumb');
    }

    /**
     * List all data tb_descthnajar
     *
     */
    public function index() {


    
        $config = array(
            'base_url' => site_url('tb_descthnajar/index/'),
            'total_rows' => $this->tb_descthnajars->count_all(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['total'] = $config['total_rows'];
        $data['pagination'] = $this->pagination->create_links();
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['tb_descthnajars'] = $this->tb_descthnajars->get_all($config['per_page'], $this->uri->segment(3));
        $data['title'] = "Tahun Ajar";
        $this->template->display('tb_descthnajar/view', $data);
    }

    /**
     * Call Form to Add  New tb_descthnajar
     *
     */
    public function add() {
        $data['tb_descthnajar'] = $this->tb_descthnajars->add();
        $data['action'] = 'tb_descthnajar/save';
        $data['title'] = "Tahun Ajar";

        $this->template->display('tb_descthnajar/form_tambah', $data);
    }

    /**
     * Call Form to Modify tb_descthnajar
     *
     */
    public function edit($id = '') {
        if ($id != '') {
            $data['title'] = "Tahun Ajar";
            $data['tb_descthnajar'] = $this->tb_descthnajars->get_one($id);
            $data['action'] = 'tb_descthnajar/destroy/' . $id;



            $this->template->display('tb_descthnajar/form', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('tb_descthnajar'));
        }
    }

    /**
     * Save & Update data  tb_descthnajar
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

                    $this->tb_descthnajars->save();
                    $this->session->set_flashdata('notif', notify('Data berhasil di simpan', 'success'));
                    redirect('tb_descthnajar');
                }
            } else { // If validation incorrect 
                $this->add();
            }
        } else { // Update data if Form Edit send Post and ID available
            $this->form_validation->set_rules($config);

            if ($this->form_validation->run() == TRUE) {
                if ($this->input->post()) {
                    $this->tb_descthnajars->update($id);
                    $this->session->set_flashdata('notif', notify('Data berhasil di update', 'success'));
                    redirect('tb_descthnajar');
                }
            } else { // If validation incorrect 
                $this->edit($id);
            }
        }
    }

    /**
     * Detail tb_descthnajar
     *
     */
    public function show($id = '') {
        if ($id != '') {

            $data['tb_descthnajar'] = $this->tb_descthnajars->get_one($id);
            $this->template->display('tb_descthnajar/_show', $data);
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'info'));
            redirect(site_url('tb_descthnajar'));
        }
    }

    /**
     * Search tb_descthnajar like ""
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
            'base_url' => site_url('tb_descthnajar/search/'),
            'total_rows' => $this->tb_descthnajars->count_all_search(),
            'per_page' => $this->config->item('per_page'),
            'uri_segment' => 3,
            'num_links' => 9,
            'use_page_numbers' => FALSE
        );

        $this->pagination->initialize($config);
        $data['total'] = $config['total_rows'];
        $data['number'] = (int) $this->uri->segment(3) + 1;
        $data['pagination'] = $this->pagination->create_links();
        $data['tb_descthnajars'] = $this->tb_descthnajars->get_search($config['per_page'], $this->uri->segment(3));

        $this->template->display('tb_descthnajar/view', $data);
    }

    /**
     * Delete tb_descthnajar by ID
     *
     */
    public function destroy($id) {
        if ($id) {
            $this->tb_descthnajars->destroy($id);
            $this->session->set_flashdata('notif', notify('Data berhasil di hapus', 'success'));
            redirect('tb_descthnajar');
        } else {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan', 'warning'));
            redirect('tb_descthnajar');
        }
    }

}

?>
