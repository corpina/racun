<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of th_mkelas
 * @created on : Saturday, 31-Oct-2015 00:55:53
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015    
 */
class th_mkelass extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data th_mkelas
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        //$result = $this->db->get('th_mkelas', $limit, $offset);

        $this->db->select('*');
        $this->db->from('th_mkelas tm');
        $this->db->join('tb_descthnajar td', 'tm.THNX_AJAR=td.THNX_AJAR');
        $this->db->join('fa_unitxx fu', 'fu.KODE_UNIT=tm.BUSS_CODE');
        $this->db->limit($limit, $offset);
        $result = $this->db->get();
        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All th_mkelas
     *    
     *  @return Integer
     *
     */
    public function count_all() {
        $this->db->from('th_mkelas');
        return $this->db->count_all_results();
    }

    /**
     * Search All th_mkelas
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
        $this->db->from('th_mkelas tm');
        $this->db->join('tb_descthnajar td', 'tm.THNX_AJAR=td.THNX_AJAR');
        $this->db->join('fa_unitxx fu', 'fu.KODE_UNIT=tm.BUSS_CODE');
        $this->db->like('NAMA_KLSX', $keyword);
        $this->db->limit($limit, $offset);
        $result = $this->db->get();

        //$this->db->like('NAMA_KLSX', $keyword);
        //$this->db->limit($limit, $offset);
        //$result = $this->db->get('th_mkelas');

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All th_mkelas
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('th_mkelas');

        $this->db->like('NAMA_KLSX', $keyword);


        return $this->db->count_all_results();
    }

    /**
     *  Get One th_mkelas
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        //$this->db->where('KODE_KLSX', $id);
        //$result = $this->db->get('th_mkelas');

        $this->db->select('*');
        $this->db->from('th_mkelas tm');
        $this->db->join('tb_descthnajar td', 'tm.THNX_AJAR=td.THNX_AJAR');
        $this->db->join('fa_unitxx fu', 'fu.KODE_UNIT=tm.BUSS_CODE');
        $this->db->where('KODE_KLSX', $id);
        $result = $this->db->get();

        //var_dump($result->row_array());
        //exit();

        if ($result->num_rows() == 1) {
            return $result->row_array();
        } else {
            return array();
        }
    }

    /**
     *  Default form data th_mkelas
     *  @return array
     *
     */
    public function add() {
        $data = array(
            'BUSS_CODE' => '',
            'KODE_UNIT' => '',
            'KODE_KLSX' => '',
            'NAMA_KLSX' => '',
            'STAT_AKTF' => '',
            'THNX_AJAR' => '',
            'TKTX_KLSX' => '',
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
        $kode = $this->input->post('TKTX_KLSX', TRUE);
        $thn = $this->input->post('THNX_AJAR', TRUE);
        $query = $this->db->query("SELECT * FROM th_mkelas WHERE TKTX_KLSX='$kode' AND THNX_AJAR ='$thn' order by KODE_KLSX DESC")->row();
        //$q = $this->db->query("select MAX(RIGHT(kode_barang,4)) as kd_max from tbl_barang");



        $kode_kelas = $query->KODE_KLSX;

        //var_dump($kode_kelas);
        //exit();

        $kd = "";
        if ($kode_kelas != "") {
            $tmp = (int) substr($query->KODE_KLSX, 3, 4) + 1;
            //var_dump(substr((int)$query->KODE_KLSX,3,4));
            $kd = $kode . sprintf("%02s", $tmp);
            //var_dump($kd);
            //exit();
        } else {
            $kd = $kode . "00";
        }


        $data = array(
            'BUSS_CODE' => strip_tags($this->input->post('BUSS_CODE', TRUE)),
            'THNX_AJAR' => strip_tags($this->input->post('THNX_AJAR', TRUE)),
            'KODE_KLSX' => $kd,
            'NAMA_KLSX' => strip_tags($this->input->post('NAMA_KLSX', TRUE)),
            'TKTX_KLSX' => strip_tags($this->input->post('TKTX_KLSX', TRUE)),
        );
        $this->db->insert('th_mkelas', $data);
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
            'BUSS_CODE' => strip_tags($this->input->post('BUSS_CODE', TRUE)),
            'THNX_AJAR' => strip_tags($this->input->post('THNX_AJAR', TRUE)),
            'KODE_KLSX' => strip_tags($this->input->post('KODE_KLSX', TRUE)),
            'NAMA_KLSX' => strip_tags($this->input->post('NAMA_KLSX', TRUE)),
            'STAT_AKTF' => strip_tags($this->input->post('STAT_AKTF', TRUE)),
        );


        $this->db->where('KODE_KLSX', $id);
        $this->db->update('th_mkelas', $data);
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
        $this->db->where('KODE_KLSX', $id);
        $this->db->delete('th_mkelas');
    }

    // get tb_descthn_ajar
    public function get_tb_descthn_ajar() {

        $result = $this->db->get('tb_descthnajar')
                ->result();

        $ret [''] = 'Pilih Tahun Ajar :';
        if ($result) {
            foreach ($result as $key => $row) {
                $ret [$row->THNX_AJAR] = $row->KETX_THN;
            }
        }

        return $ret;
    }

    // get tb_descthn_ajar
    public function get_fa_unitxx() {

        $result = $this->db->query('select * from fa_unitxx')
                ->result();

        $ret [''] = 'Pilih Lokasi Unit :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->KODE_UNIT] = $row->NAMA_UNIT;
            }
        }

        return $ret;
    }

    // get tb_descthn_ajar
    public function get_fa_kelas() {

        //$result = $this->db->get('fa_unitxx')->result();
        $this->db->select("CODD_FLNM,CODD_VALU,CODD_DESC");
        $this->db->where('CODD_FLNM', 'KODE_LEVL');
        $result = $this->db->get('th_codexd')->result();

        $ret [''] = 'Pilih Tingkatan Kelas :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->CODD_VALU] = $row->CODD_DESC;
            }
        }

        return $ret;
    }

}
