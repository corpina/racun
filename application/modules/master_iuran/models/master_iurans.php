<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of tabel_iuran
 * @created on : Saturday, 31-Oct-2015 08:44:53
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015    
 */
class master_iurans extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data tabel_iuran
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        $result = $this->db->get('tabel_iuran', $limit, $offset);

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All tabel_iuran
     *    
     *  @return Integer
     *
     */
    public function count_all() {
        $this->db->from('tabel_iuran');
        return $this->db->count_all_results();
    }

    /**
     * Search All tabel_iuran
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
        $this->db->from('tabel_iuran');
        $this->db->like('nama_iuran', $keyword);
        $this->db->limit($limit, $offset);
        $result = $this->db->get();

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All tabel_iuran
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->select("*");
        $this->db->from('tabel_iuran');
        $this->db->like('nama_iuran', $keyword);

        return $this->db->count_all_results();
    }

    /**
     *  Get One tabel_iuran
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        $this->db->where('kode_iuran', $id);
        $result = $this->db->get('tabel_iuran');


        if ($result->num_rows() == 1) {
            return $result->row_array();
        } else {
            return array();
        }
    }

    /**
     *  Default form data tabel_iuran
     *  @return array
     *
     */
    public function add() {
        $data = array(
            'kode_iuran' => '',
            'nama_iuran' => '',
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
            'kode_iuran' => strip_tags($this->input->post('kode_iuran', TRUE)),
            'nama_iuran' => strip_tags($this->input->post('nama_iuran', TRUE)),
        );

        $this->db->insert('tabel_iuran', $data);
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
            'kode_iuran' => strip_tags($this->input->post('kode_iuran', TRUE)),
            'nama_iuran' => strip_tags($this->input->post('nama_iuran', TRUE)),
        );


        $this->db->where('kode_iuran', $id);
        $this->db->update('tabel_iuran', $data);
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
        $this->db->where('kode_iuran', $id);
        $this->db->delete('tabel_iuran');
    }

}
