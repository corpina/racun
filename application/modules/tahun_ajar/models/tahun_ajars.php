<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of tahun_ajar
 * @created on : Sunday, 25-Oct-2015 10:50:09

 * Copyright 2015    
 */
class tahun_ajars extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data tahun_ajar
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        $result = $this->db->get('tahun_ajar', $limit, $offset);

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All tahun_ajar
     *    
     *  @return Integer
     *
     */
    public function count_all() {
        $this->db->from('tahun_ajar');
        return $this->db->count_all_results();
    }

    /**
     * Search All tahun_ajar
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

        $this->db->like('kode_thn_ajar', $keyword);
        $this->db->or_like('thn_ajar', $keyword);
        $this->db->or_like('ket_thn_ajar', $keyword);
        $this->db->limit($limit, $offset);
        $result = $this->db->get('tahun_ajar');

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All tahun_ajar
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('tahun_ajar');

        $this->db->like('kode_thn_ajar', $keyword);

        $this->db->or_like('thn_ajar', $keyword);

        $this->db->or_like('ket_thn_ajar', $keyword);

        return $this->db->count_all_results();
    }

    /**
     *  Get One tahun_ajar
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        $this->db->where('thn_ajar', $id);
        $result = $this->db->get('tahun_ajar');

        if ($result->num_rows() == 1) {
            return $result->row_array();
        } else {
            return array();
        }
    }

    /**
     *  Default form data tahun_ajar
     *  @return array
     *
     */
    public function add() {
        $data = array(
            'tanggal_awal' => '',
            'tangga_akhir' => '',
            'tahun_awal' => '',
            'tahun_akhir' => '',
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
        $tanggal_awal = strip_tags($this->input->post('tanggal_awal', TRUE));
        $tanggal_akhir = strip_tags($this->input->post('tanggal_akhir', TRUE));
        $tahun_awal = strip_tags($this->input->post('tahun_awal', TRUE));
        $tahun_akhir = strip_tags($this->input->post('tahun_akhir', TRUE));

        $thn = "$tahun_awal/$tahun_akhir";

        $thn_awal = substr($tahun_awal, 2);
        $thn_akhir = substr($tahun_akhir, 2);

        $date = date_format($tanggal_awal, date('Y-m-d'));


        $data = array(
            'kode_thn_ajar' => '01',
            'thn_ajar' => "$thn_awal$thn_akhir",
            'ket_thn_ajar' => $thn,
            'tgl_mulai' => "$tahun_awal-07-01",
            'tgl_akhir' => "$tahun_akhir-06-30"
        );




        $this->db->insert('tahun_ajar', $data);
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
            'ket_tahun_ajar' => strip_tags($this->input->post('ket_tahun_ajar', TRUE)),
            'tgl_mulai' => strip_tags($this->input->post('tgl_mulai', TRUE)),
            'tgl_akhir' => strip_tags($this->input->post('tgl_akhir', TRUE)),
        );


        $this->db->where('tahun_ajar', $id);
        $this->db->update('tahun_ajar', $data);
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
        $this->db->where('thn_ajar', $id);
        $this->db->delete('tahun_ajar');
    }

}
