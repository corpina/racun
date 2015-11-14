<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of tb_descthnajar
 * @created on : Sunday, 25-Oct-2015 10:50:09

 * Copyright 2015    
 */
class tb_descthnajars extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data tb_descthnajar
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        $result = $this->db->get('tb_descthnajar', $limit, $offset);

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All tb_descthnajar
     *    
     *  @return Integer
     *
     */
    public function count_all() {
        $this->db->from('tb_descthnajar');
        return $this->db->count_all_results();
    }

    /**
     * Search All tb_descthnajar
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

        $this->db->like('CABX_CODE', $keyword);

        $this->db->or_like('THNX_AJAR', $keyword);

        $this->db->or_like('KETX_THN', $keyword);



        $this->db->limit($limit, $offset);
        $result = $this->db->get('tb_descthnajar');

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All tb_descthnajar
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('tb_descthnajar');

        $this->db->like('CABX_CODE', $keyword);

        $this->db->or_like('THNX_AJAR', $keyword);

        $this->db->or_like('KETX_THN', $keyword);

        return $this->db->count_all_results();
    }

    /**
     *  Get One tb_descthnajar
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        $this->db->where('THNX_AJAR', $id);
        $result = $this->db->get('tb_descthnajar');

        if ($result->num_rows() == 1) {
            return $result->row_array();
        } else {
            return array();
        }
    }

    /**
     *  Default form data tb_descthnajar
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
            'THNX_AJAR' => "$thn_awal$thn_akhir",
            'KETX_THN' => $thn,
            'TGLX_STRT' => "$tahun_awal-07-01",
            'TGLX_ENDX' => "$tahun_akhir-06-30"
        );




        $this->db->insert('tb_descthnajar', $data);
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
            'KETX_THN' => strip_tags($this->input->post('KETX_THN', TRUE)),
            'TGLX_STRT' => strip_tags($this->input->post('TGLX_STRT', TRUE)),
            'TGLX_ENDX' => strip_tags($this->input->post('TGLX_ENDX', TRUE)),
        );


        $this->db->where('THNX_AJAR', $id);
        $this->db->update('tb_descthnajar', $data);
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
        $this->db->where('THNX_AJAR', $id);
        $this->db->delete('tb_descthnajar');
    }

}
