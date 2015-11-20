<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of unit_sekolah
 * @created on : Friday, 30-Oct-2015 15:23:22
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015    
 */
class unit_sekolahs extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data unit_sekolah
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        //$result = $this->db->get('unit_sekolah', $limit, $offset);
        $this->db->select('*');
        $this->db->from("lokasi_sekolah fl");
        $this->db->join('unit_sekolah fu', 'fl.kode_lokasi=fu.kode_lokasi');
        $this->db->limit($limit, $offset);
        $result = $this->db->get();
        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All unit_sekolah
     *    
     *  @return Integer
     *
     */
    public function count_all() {
        $this->db->from('unit_sekolah');
        return $this->db->count_all_results();
    }

    /**
     * Search All unit_sekolah
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
        $this->db->select('*');
        $this->db->from("lokasi_sekolah fl");
        $this->db->join('unit_sekolah fu', 'fl.kode_lokasi=fu.kode_lokasi');
        //$this->db->limit($limit,$offset);
//					$result = $this->db->get();

        $this->db->like('kode_unit', $keyword);

        $this->db->or_like('nama_lokasi', $keyword);

        $this->db->or_like('fl.kode_lokasi', $keyword);

        $this->db->or_like('keterangan', $keyword);

        $this->db->limit($limit, $offset);
        $result = $this->db->get();


        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All unit_sekolah
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('unit_sekolah');

        $this->db->or_like('kode_unit', $keyword);

        $this->db->or_like('nama_unit', $keyword);

        $this->db->or_like('kode_lokasi', $keyword);

        $this->db->or_like('keterangan', $keyword);

        return $this->db->count_all_results();
    }

    /**
     *  Get One unit_sekolah
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        $this->db->where('kode_unit', $id);
        $result = $this->db->get('unit_sekolah');



        if ($result->num_rows() == 1) {
            return $result->row_array();
        } else {
            return array();
        }
    }

    /**
     *  Default form data unit_sekolah
     *  @return array
     *
     */
    public function add() {
        $data = array(
            'nama_unit' => '',
            'kode_lokasi' => '',
            'keterangan' => '',
            'kode_unit' => '',
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
            'kode_unit' => strip_tags($this->input->post('kode_unit', TRUE)),
            'nama_unit' => strip_tags($this->input->post('nama_unit', TRUE)),
            'kode_lokasi' => strip_tags($this->input->post('kode_lokasi', TRUE)),
            'keterangan' => strip_tags($this->input->post('keterangan', TRUE)),
        );


        $this->db->insert('unit_sekolah', $data);
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
            'nama_unit' => strip_tags($this->input->post('nama_unit', TRUE)),
            'nama_unit' => strip_tags($this->input->post('nama_unit', TRUE)),
            'kode_lokasi' => strip_tags($this->input->post('kode_lokasi', TRUE)),
            'keterangan' => strip_tags($this->input->post('keterangan', TRUE)),
        );


        $this->db->where('kode_unit', $id);
        $this->db->update('unit_sekolah', $data);
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
        $this->db->where('kode_unit', $id);
        $this->db->delete('unit_sekolah');
    }

    // get lokasi_sekolah
    public function get_lokasi_sekolah() {

        $result = $this->db->get('lokasi_sekolah')
                ->result();

        $ret [''] = 'Pilih Lokasi Unit :';
        if ($result) {
            foreach ($result as $key => $row) {
                $ret [$row->kode_lokasi] = $row->nama_lokasi;
            }
        }

        return $ret;
    }

}
