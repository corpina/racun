<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of jenis_iuran
 * @created on : Thursday, 19-Nov-2015 00:24:03
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015    
 */
class jenis_iurans extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data jenis_iuran
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        if ($offset == NULL) {
            $offset = 0;
        } else {
            $offset = $offset;
        }

        $result = $this->db->get('jenis_iuran', $limit, $offset);
//        $result = $this->db->query("            
//SELECT * FROM jenis_iuran ji LEFT JOIN tb_coaxxx tc ON tc.ACCT_CODE = ji.kode_pendapatan INNER JOIN
//(SELECT  CODD_FLNM,CODD_VALU,CODD_DESC FROM th_codexd WHERE CODD_FLNM = 'KASX_TUJX') AS kt ON
// kt.CODD_VALU = ji.kode_tujuan LIMIT $offset, $limit
//    ");


        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All jenis_iuran
     *    
     *  @return Integer
     *
     */
    public function count_all() {
        $this->db->from('jenis_iuran');
        return $this->db->count_all_results();
    }

    /**
     * Search All jenis_iuran
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

        $this->db->like('kode_unit', $keyword);
        $this->db->limit($limit, $offset);
        $result = $this->db->get('jenis_iuran');
        
        /// var_dump($keyword);
//        var_dump($result->result);
//        exit();

        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All jenis_iuran
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('jenis_iuran');

        $this->db->like('kode_unit', $keyword);



        return $this->db->count_all_results();
    }

    /**
     *  Get One jenis_iuran
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        $this->db->where('kode_jenis_iuran', $id);
        $result = $this->db->get('jenis_iuran');

        //var_dump($id);
        //var_dump($result->num_rows());
        //    exit();
        if ($result->num_rows() == 1) {
            return $result->row_array();
        } else {
            return array();
        }
    }

    /**
     *  Default form data jenis_iuran
     *  @return array
     *
     */
    public function add() {
        $data = array(
            'kode_unit' => '',
            'type_iuran' => '',
            'kode_jenis_iuran' => '',
            'nama_iuran' => '',
            'kode_tujuan' => '',
            'kode_pendapatan' => '',
            'kode_chr1' => '',
            'kode_piutang' => '',
            'kode_iuran' => '',
            'kode_chr4' => '',
            'kode_diterima' => '',
            'kode_dec1' => '',
            'kode_dec2' => '',
            'delete_status' => '',
            'created_date' => '',
        );

        return $data;
    }

    /**
     *  Save data Post
     *
     *  @return void
     *     * note : di tabel jenis_iuran banyak kolom yang ga dipake ..
     */
    public function save() {

        $kode_jenis_iuran = $this->db->query('select max(kode_jenis_iuran) as kode_jenis_iuran from jenis_iuran ')->row();

        $kd = $kode_jenis_iuran->kode_jenis_iuran;

        $kode = "";
        if ($kd == NULL) {
            $kode = "01";
        } else {
            if ($kd < 10) {
                $dbwh_10 = (int) $kd + 1;
                $kode = '0' . $dbwh_10;
            } else {
                $kode = (int) $kd + 1;
            }
        }

        //print_r($kode);
        //exit();


        $data = array(
            'kode_unit' => strip_tags($this->input->post('kode_unit', TRUE)),
            'type_iuran' => 'JNSX_IURN', // strip_tags($this->input->post('type_iuran', TRUE)),
            'kode_jenis_iuran' => $kode,
            'nama_iuran' => strip_tags($this->input->post('nama_iuran', TRUE)),
            'kode_tujuan' => strip_tags($this->input->post('kode_tujuan', TRUE)),
            'kode_pendapatan' => strip_tags($this->input->post('kode_pendapatan', TRUE)),
            'kode_piutang' => strip_tags($this->input->post('kode_piutang', TRUE)),
            'kode_iuran' => strip_tags($this->input->post('kode_iuran', TRUE)),
            'kode_diterima' => strip_tags($this->input->post('kode_diterima', TRUE)),
            
            'delete_status' => strip_tags($this->input->post('delete_status', TRUE)),
            'created_date' => strip_tags($this->input->post('created_date', TRUE)),
        );


        $this->db->insert('jenis_iuran', $data);
    }

    /**
     *  Update modify data
     *
     *  @param id : Integer
     *
     *  @return void
     *
     * 
     * note : di tabel jenis_iuran banyak kolom yang ga dipake ..
     */
    public function update($id) {
        $data = array(
            'kode_unit' => strip_tags($this->input->post('kode_unit', TRUE)),
            'type_iuran' => 'JNSX_IURN',
            'kode_jenis_iuran' => strip_tags($this->input->post('kode_jenis_iuran', TRUE)),
            'nama_iuran' => strip_tags($this->input->post('nama_iuran', TRUE)),
            'kode_tujuan' => strip_tags($this->input->post('kode_tujuan', TRUE)),
            'kode_pendapatan' => strip_tags($this->input->post('kode_pendapatan', TRUE)),
            'kode_piutang' => strip_tags($this->input->post('kode_piutang', TRUE)),
            'kode_iuran' => strip_tags($this->input->post('kode_iuran', TRUE)),
            'kode_diterima' => strip_tags($this->input->post('kode_diterima', TRUE)),
            'delete_status' => strip_tags($this->input->post('delete_status', TRUE)),
            'created_date' => strip_tags($this->input->post('created_date', TRUE)),
        );


        $this->db->where('kode_jenis_iuran', $id);
        $this->db->update('jenis_iuran', $data);
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
        $this->db->where('kode_jenis_iuran', $id);
        $this->db->delete('jenis_iuran');
    }

    // get tb_descthn_ajar
    public function get_sekolah() {


        $result = $this->db->get('unit_sekolah')->result();

        $ret [''] = 'Pilih Unit Sekolah :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->kode_unit] = $row->nama_unit;
            }
        }

        return $ret;
    }

    // get jenis iuran diambil dari master_iuran
    public function get_jenis_iuran() {

        $result = $this->db->get('tabel_iuran')->result();
        $ret [''] = 'Pilih Jenis Iuran :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->kode_iuran] = $row->nama_iuran; //.' - '.$row->kode_jenis_iuran;
            }
        }

        return $ret;
    }

    public function get_pendapatan() {

        $this->db->select('ACCT_CODE,ACCT_NAMA');
        $this->db->where('ACCT_TYPE', '02');
        $this->db->order_by('ACCT_NAMA', 'asc');
        $result = $this->db->get('tb_coaxxx')->result();

        $ret [''] = 'Pilih Jenis Pendapatan :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->ACCT_CODE] = $row->ACCT_NAMA; //.' - '.$row->ACCT_CODE;
            }
        }

        return $ret;
    }

    public function get_piutang() {

        $this->db->select('ACCT_CODE,ACCT_NAMA');
        $this->db->where('ACCT_TYPE', '02');
        $this->db->order_by('ACCT_NAMA', 'asc');
        $result = $this->db->get('tb_coaxxx')->result();

        $ret [''] = 'Pilih Jenis Piutang :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->ACCT_CODE] = $row->ACCT_NAMA; //.' - '.$row->ACCT_CODE;
            }
        }

        return $ret;
    }

    public function get_terima_dimuka() {

        $this->db->select('ACCT_CODE,ACCT_NAMA');
        $this->db->where('acct_type', '02');
        $this->db->order_by('ACCT_NAMA', 'asc');
        $result = $this->db->get('tb_coaxxx')->result();

        $ret [''] = 'Pilih :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->ACCT_CODE] = $row->ACCT_NAMA; //.' - '.$row->ACCT_CODE;
            }
        }

        return $ret;
    }

    public function get_kas_tujuan() {


        $this->db->select("*");
        $this->db->where('type', 'kas_tujuan');
        $result = $this->db->get('tabel_umum')->result();
        $ret [''] = 'Pilih Kas Tujuan :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->kode_umum] = $row->nama; //.' - '.$row->kode_jenis_iuran;
            }
        }

        return $ret;
    }

    public function get_unit_sekolah() {
        return $this->db->get('unit_sekolah');
    }

}
