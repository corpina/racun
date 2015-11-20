<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of lokasi_sekolah
 * @created on : Sunday, 25-Oct-2015 12:25:35
 * Copyright 2015    
 */
class lokasi_sekolahs extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data lokasi_sekolah
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        $result = $this->db->get('lokasi_sekolah', $limit, $offset);

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All lokasi_sekolah
     *    
     *  @return Integer
     *
     */
    public function count_all() {
        $this->db->from('lokasi_sekolah');
        return $this->db->count_all_results();
    }

    /**
     * Search All lokasi_sekolah
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

        $this->db->like('kode_lokasi', $keyword);

        $this->db->or_like('nama_lokasi', $keyword);

        $this->db->or_like('alamat_lokasi', $keyword);

        $this->db->or_like('telepon_lokasi', $keyword);

        $this->db->or_like('fax_lokasi', $keyword);

        $this->db->limit($limit, $offset);
        $result = $this->db->get('lokasi_sekolah');

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All lokasi_sekolah
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('lokasi_sekolah');

        $this->db->like('kode_lokasi', $keyword);

        $this->db->or_like('nama_lokasi', $keyword);

        $this->db->or_like('alamat_lokasi', $keyword);

        $this->db->or_like('telepon_lokasi', $keyword);

        $this->db->or_like('fax_lokasi', $keyword);

        return $this->db->count_all_results();
    }

    /**
     *  Get One lokasi_sekolah
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        $this->db->where('kode_lokasi', $id);
        $result = $this->db->get('lokasi_sekolah');

        if ($result->num_rows() == 1) {
            return $result->row_array();
        } else {
            return array();
        }
    }

    /**
     *  Default form data lokasi_sekolah
     *  @return array
     *
     */
    public function add() {
        $data = array(
            'nama_lokasi' => '',
            'alamat_lokasi' => '',
            'telepon_lokasi' => '',
            'fax_lokasi' => '',
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
            'nama_lokasi' => strip_tags($this->input->post('nama_lokasi', TRUE)),
            'alamat_lokasi' => strip_tags($this->input->post('alamat_lokasi', TRUE)),
            'telepon_lokasi' => strip_tags($this->input->post('telepon_lokasi', TRUE)),
            'fax_lokasi' => strip_tags($this->input->post('fax_lokasi', TRUE)),
        );


        $this->db->insert('lokasi_sekolah', $data);
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
            'nama_lokasi' => strip_tags($this->input->post('nama_lokasi', TRUE)),
            'alamat_lokasi' => strip_tags($this->input->post('alamat_lokasi', TRUE)),
            'telepon_lokasi' => strip_tags($this->input->post('telepon_lokasi', TRUE)),
            'fax_lokasi' => strip_tags($this->input->post('fax_lokasi', TRUE)),
        );


        $this->db->where('kode_lokasi', $id);
        $this->db->update('lokasi_sekolah', $data);
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
        $this->db->where('kode_lokasi', $id);
        $this->db->delete('lokasi_sekolah');
    }

}
