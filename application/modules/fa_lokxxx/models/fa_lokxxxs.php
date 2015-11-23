<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of fa_lokxxx
 * @created on : Sunday, 25-Oct-2015 12:25:35
 * Copyright 2015    
 */
class fa_lokxxxs extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data fa_lokxxx
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        $result = $this->db->get('fa_lokxxx', $limit, $offset);

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All fa_lokxxx
     *    
     *  @return Integer
     *
     */
    public function count_all() {
        $this->db->from('fa_lokxxx');
        return $this->db->count_all_results();
    }

    /**
     * Search All fa_lokxxx
     *
     *  @param limit   : Integer
     *  @param offset  : Integer
     *  @param keyword : mixed
     *
     *  @return array
     *
     */
    public function get_search($limit, $offset) {
        $keyword = $this->session->userdata('keyword');

        $this->db->like('KODE_LOKX', $keyword);

        $this->db->or_like('NAMA_LOKX', $keyword);

        $this->db->or_like('ALMT_LOKX', $keyword);

        $this->db->or_like('TLPX_LOKX', $keyword);

        $this->db->or_like('FAXX_LOKX', $keyword);

        $this->db->limit($limit, $offset);
        $result = $this->db->get('fa_lokxxx');

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All fa_lokxxx
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('fa_lokxxx');

        $this->db->like('KODE_LOKX', $keyword);

        $this->db->or_like('NAMA_LOKX', $keyword);

        $this->db->or_like('ALMT_LOKX', $keyword);

        $this->db->or_like('TLPX_LOKX', $keyword);

        $this->db->or_like('FAXX_LOKX', $keyword);

        return $this->db->count_all_results();
    }

    /**
     *  Get One fa_lokxxx
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        $this->db->where('KODE_LOKX', $id);
        $result = $this->db->get('fa_lokxxx');

        if ($result->num_rows() == 1) {
            return $result->row_array();
        } else {
            return array();
        }
    }

    /**
     *  Default form data fa_lokxxx
     *  @return array
     *
     */
    public function add() {
        $data = array(
            'NAMA_LOKX' => '',
            'ALMT_LOKX' => '',
            'TLPX_LOKX' => '',
            'FAXX_LOKX' => '',
        );

        return $data;
    }

    /**
     *  Save data Post
     *
     *  @return void
     *
     */
    public function save() {
        $data = array(
            'NAMA_LOKX' => strip_tags($this->input->post('NAMA_LOKX', TRUE)),
            'ALMT_LOKX' => strip_tags($this->input->post('ALMT_LOKX', TRUE)),
            'TLPX_LOKX' => strip_tags($this->input->post('TLPX_LOKX', TRUE)),
            'FAXX_LOKX' => strip_tags($this->input->post('FAXX_LOKX', TRUE)),
        );


        $this->db->insert('fa_lokxxx', $data);
    }

    /**
     *  Update modify data
     *
     *  @param id : Integer
     *
     *  @return void
     *
     */
    public function update($id) {
        $data = array(
            'NAMA_LOKX' => strip_tags($this->input->post('NAMA_LOKX', TRUE)),
            'ALMT_LOKX' => strip_tags($this->input->post('ALMT_LOKX', TRUE)),
            'TLPX_LOKX' => strip_tags($this->input->post('TLPX_LOKX', TRUE)),
            'FAXX_LOKX' => strip_tags($this->input->post('FAXX_LOKX', TRUE)),
        );


        $this->db->where('KODE_LOKX', $id);
        $this->db->update('fa_lokxxx', $data);
    }

    /**
     *  Delete data by id
     *
     *  @param id : Integer
     *
     *  @return void
     *
     */
    public function destroy($id) {
        $this->db->where('KODE_LOKX', $id);
        $this->db->delete('fa_lokxxx');
    }

}
