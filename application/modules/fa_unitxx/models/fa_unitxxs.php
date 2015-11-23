<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of fa_unitxx
 * @created on : Friday, 30-Oct-2015 15:23:22
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015    
 */
class fa_unitxxs extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *  Get All data fa_unitxx
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) {

        //$result = $this->db->get('fa_unitxx', $limit, $offset);
        $this->db->select('*');
        $this->db->from("fa_lokxxx fl");
        $this->db->join('fa_unitxx fu', 'fl.KODE_LOKX=fu.KODE_LOKX');
        $this->db->limit($limit, $offset);
        $result = $this->db->get();
        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     *  Count All fa_unitxx
     *    
     *  @return Integer
     *
     */
    public function count_all() {
        $this->db->from('fa_unitxx');
        return $this->db->count_all_results();
    }

    /**
     * Search All fa_unitxx
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
        $this->db->from("fa_lokxxx fl");
        $this->db->join('fa_unitxx fu', 'fl.KODE_LOKX=fu.KODE_LOKX');
        //$this->db->limit($limit,$offset);
//					$result = $this->db->get();

        $this->db->like('KODE_UNIT', $keyword);

        $this->db->or_like('NAMA_LOKX', $keyword);

        $this->db->or_like('fl.KODE_LOKX', $keyword);

        $this->db->or_like('KETX_UNIT', $keyword);

        $this->db->limit($limit, $offset);
        $result = $this->db->get();


        if ($result->num_rows() > 0) {
            return $result->result_array();
        } else {
            return array();
        }
    }

    /**
     * Search All fa_unitxx
     * @param keyword : mixed
     *
     * @return Integer
     *
     */
    public function count_all_search() {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('fa_unitxx');

        $this->db->or_like('KODE_UNIT', $keyword);

        $this->db->or_like('NAMA_UNIT', $keyword);

        $this->db->or_like('KODE_LOKX', $keyword);

        $this->db->or_like('KETX_UNIT', $keyword);

        return $this->db->count_all_results();
    }

    /**
     *  Get One fa_unitxx
     *
     *  @param id : Integer
     *
     *  @return array
     *
     */
    public function get_one($id) {
        $this->db->where('KODE_UNIT', $id);
        $result = $this->db->get('fa_unitxx');



        if ($result->num_rows() == 1) {
            return $result->row_array();
        } else {
            return array();
        }
    }

    /**
     *  Default form data fa_unitxx
     *  @return array
     *
     */
    public function add() {
        $data = array(
            'NAMA_UNIT' => '',
            'KODE_LOKX' => '',
            'KETX_UNIT' => '',
            'KODE_UNIT' => '',
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
            'KODE_UNIT' => strip_tags($this->input->post('KODE_UNIT', TRUE)),
            'NAMA_UNIT' => strip_tags($this->input->post('NAMA_UNIT', TRUE)),
            'KODE_LOKX' => strip_tags($this->input->post('KODE_LOKX', TRUE)),
            'KETX_UNIT' => strip_tags($this->input->post('KETX_UNIT', TRUE)),
        );


        $this->db->insert('fa_unitxx', $data);
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
            'NAMA_UNIT' => strip_tags($this->input->post('NAMA_UNIT', TRUE)),
            'NAMA_UNIT' => strip_tags($this->input->post('NAMA_UNIT', TRUE)),
            'KODE_LOKX' => strip_tags($this->input->post('KODE_LOKX', TRUE)),
            'KETX_UNIT' => strip_tags($this->input->post('KETX_UNIT', TRUE)),
        );


        $this->db->where('KODE_UNIT', $id);
        $this->db->update('fa_unitxx', $data);
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
        $this->db->where('KODE_UNIT', $id);
        $this->db->delete('fa_unitxx');
    }

    // get fa_lokxxx
    public function get_fa_lokxxx() {

        $result = $this->db->get('fa_lokxxx')
                ->result();

        $ret [''] = 'Pilih Lokasi Unit :';
        if ($result) {
            foreach ($result as $key => $row) {
                $ret [$row->KODE_LOKX] = $row->NAMA_LOKX;
            }
        }

        return $ret;
    }

}
