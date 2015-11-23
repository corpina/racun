<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of jenjang_pend
 * @created on : Saturday, 31-Oct-2015 08:44:53
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015    
 */
class jenjang_pends extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data jenjang_pend
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        //4result = $this->db->get('jenjang_pend', $limit, $offset);
        $result = $this->db->get('tabel_jenjang', $limit, $offset);

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All jenjang_pend
     *    
     *  @return Integer
     *
     */
    public function count_all() {

        $this->db->from('tabel_jenjang');
        return $this->db->count_all_results();
    }

    /**
     * Search All jenjang_pend
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

        $this->db->select("*");
        $this->db->where('nama_jenjang');
        $this->db->like('nama_jenjang', $keyword);
        $this->db->limit($limit, $offset);
        $result = $this->db->get('tabel_jenjang');

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All jenjang_pend
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('tabel_jenjang');
        $this->db->like('nama_jenjang', $keyword);
       
        return $this->db->count_all_results();
    }

    /**
     *  Get One jenjang_pend
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        $this->db->where('kode_jenjang', $id);
        $result = $this->db->get('tabel_jenjang');

        if ($result->num_rows() == 1) {
            return $result->row_array();
        } else {
            return array();
        }
    }

    /**
     *  Default form data jenjang_pend
     *  @return array
     *
     */
    public function add() {
        $data = array(
            'kode_jenjang' => '',
            'CODD_FLNM' => '',
            'nama_jenjang' => '',
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
            'kode_jenjang' => strip_tags($this->input->post('kode_jenjang', TRUE)),
            'nama_jenjang' =>  strip_tags($this->input->post('nama_jenjang', TRUE)),
        );
        $this->db->insert('tabel_jenjang', $data);
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
            'kode_jenjang' => strip_tags($this->input->post('kode_jenjang', TRUE)),
            'nama_jenjang' =>  strip_tags($this->input->post('nama_jenjang', TRUE)),
        );

        $this->db->where('kode_jenjang', $id);
        $this->db->update('tabel_jenjang', $data);
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
        $this->db->where('kode_jenjang', $id);
        $this->db->delete('tabel_jenjang');
    }

}
