<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of tabel_kelas
 * @created on : Saturday, 31-Oct-2015 00:55:53
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015    
 */
class tabel_kelass extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data tabel_kelas
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        //$result = $this->db->get('tabel_kelas', $limit, $offset);

        $this->db->select('*');
        $this->db->from('tabel_kelas tm');
        $this->db->join('tahun_ajar td', 'tm.thn_ajar=td.thn_ajar');
        $this->db->join('unit_sekolah fu', 'fu.kode_unit=tm.kode_unit');
        $this->db->join('tabel_jenjang tj', 'tj.kode_jenjang=tm.kode_jenjang');

        $this->db->limit($limit, $offset);
        $result = $this->db->get();
        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All tabel_kelas
     *    
     *  @return Integer
     *
     */
    public function count_all() {
        $this->db->from('tabel_kelas');
        return $this->db->count_all_results();
    }

    /**
     * Search All tabel_kelas
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
        $this->db->from('tabel_kelas tm');
        $this->db->join('tahun_ajar td', 'tm.thn_ajar=td.thn_ajar');
        $this->db->join('unit_sekolah fu', 'fu.kode_unit=tm.kode_unit');
        $this->db->join('tabel_jenjang tj', 'tj.kode_jenjang=tm.kode_jenjang');
        $this->db->like('nama_kelas', $keyword);
        $this->db->or_like('nama_unit', $keyword);

        $this->db->limit($limit, $offset);
        $result = $this->db->get();


        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All tabel_kelas
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('tabel_kelas');

        $this->db->like('nama_kelas', $keyword);


        return $this->db->count_all_results();
    }

    /**
     *  Get One tabel_kelas
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        //$this->db->where('kode_kelas', $id);
        //$result = $this->db->get('tabel_kelas');

        $this->db->select('*');
        $this->db->from('tabel_kelas tm');
        $this->db->join('tahun_ajar td', 'tm.thn_Ajar=td.thn_ajar');
        $this->db->join('unit_sekolah fu', 'fu.kode_unit=tm.kode_unit');
        $this->db->join('tabel_jenjang tj', 'tj.kode_jenjang=tm.kode_jenjang');
        $this->db->where('kode_kelas', $id);
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
     *  Default form data tabel_kelas
     *  @return array
     *
     */
    public function add() {
        $data = array(
            'kode_unit' => '',
            'kode_unit' => '',
            'kode_kelas' => '',
            'nama_kelas' => '',
            'status_aktif' => '',
            'tahun_ajar' => '',
            'thn_ajar' => '',
            'kode_jenjang' => '',
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
        $kode = $this->input->post('kode_jenjang', TRUE);
        $thn = $this->input->post('thn_ajar', TRUE);
        $query = $this->db->query("SELECT * FROM tabel_kelas WHERE kode_jenjang='$kode' AND thn_ajar ='$thn' order by kode_kelas DESC")->row();

        $kode_kelas = $query->kode_kelas;
        $kd = "";
        if ($kode_kelas != "") {
            $tmp = (int) substr($query->kode_kelas, 3, 4) + 1;
            $kd = $kode . sprintf("%02s", $tmp);
        } else {
            $kd = $kode . "00";
        }


        $data = array(
            'kode_unit' => strip_tags($this->input->post('kode_unit', TRUE)),
            'thn_ajar' => strip_tags($this->input->post('thn_ajar', TRUE)),
            'kode_kelas' => $kd,
            'nama_kelas' => strip_tags($this->input->post('nama_kelas', TRUE)),
            'kode_jenjang' => strip_tags($this->input->post('kode_jenjang', TRUE)),
        );
        $this->db->insert('tabel_kelas', $data);
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
            'kode_unit' => strip_tags($this->input->post('kode_unit', TRUE)),
            'thn_ajar' => strip_tags($this->input->post('thn_ajar', TRUE)),
            'kode_kelas' => $id,
            'nama_kelas' => strip_tags($this->input->post('nama_kelas', TRUE)),
            'kode_jenjang' => strip_tags($this->input->post('kode_jenjang', TRUE)),
                //'status_aktif' => strip_tags($this->input->post('status_aktif', TRUE)),
        );


        $this->db->where('kode_kelas', $id);
        $this->db->update('tabel_kelas', $data);
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
        $this->db->where('kode_kelas', $id);
        $this->db->delete('tabel_kelas');
    }

    // get tahun_ajar
    public function get_tahun_ajar() {

        $result = $this->db->get('tahun_ajar')
                ->result();

        $ret [''] = 'Pilih Tahun Ajar :';
        if ($result) {
            foreach ($result as $key => $row) {
                $ret [$row->thn_ajar] = $row->ket_thn_ajar;
            }
        }

        return $ret;
    }

    // get tahun_ajar
    public function get_unit_sekolah() {

        $result = $this->db->query('select * from unit_sekolah')
                ->result();

        $ret [''] = 'Pilih Lokasi Unit :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->kode_unit] = $row->nama_unit;
            }
        }

        return $ret;
    }

    // get tahun_ajar
    public function get_fa_kelas() {

        $result = $this->db->get('tabel_jenjang')->result();

        $ret [''] = 'Pilih Tingkatan Kelas :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->kode_jenjang] = $row->nama_jenjang;
            }
        }

        return $ret;
    }

}
