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
        $this->db->select("CODD_FLNM,CODD_VALU,CODD_DESC");
        $this->db->where('CODD_FLNM', 'KODE_LEVL');
        $result = $this->db->get('th_codexd', $limit, $offset);

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


        //$result = $this->db->get('jenjang_pend', $limit, $offset);
        /* $this->db->select("CODD_FLNM,CODD_VALU,CODD_DESC");
          $this->db->where('CODD_FLNM','KODE_LEVL');
          $this->db->get('jenjang_pend');
          return $this->db->count_all_results();
         */

        $this->db->from('th_codexd');
        $this->db->where('CODD_FLNM', 'KODE_LEVL');

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

        $this->db->select("CODD_FLNM,CODD_VALU,CODD_DESC");
        $this->db->where('CODD_FLNM', 'KODE_LEVL');
        $this->db->like('CODD_FLNM', $keyword);
        $this->db->or_like('CODD_VALU', $keyword);
        $this->db->or_like('CODD_DESC', $keyword);
        $this->db->limit($limit, $offset);
        $result = $this->db->get('th_codexd');

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
        $this->db->from('th_codexd');

        $this->db->like('CODD_FLNM', $keyword);

        $this->db->or_like('CODD_VALU', $keyword);

        $this->db->or_like('CODD_DESC', $keyword);
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
        $this->db->where('CODD_VALU', $id);
		$this->db->where('CODD_FLNM', "KODE_LEVL");
        $result = $this->db->get('th_codexd');

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
            'CODD_DESC' => '',
            'CODD_FLNM' => '',
            'CODD_VALU' => '',
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

        $query = $this->db->query("select CODD_FLNM,CODD_VALU,CODD_DESC from th_codexd where CODD_FLNM ='KODE_LEVL' ORDER BY CODD_VALU DESC")->row();

        $kode = $query->CODD_VALU;
        
        //var_dump($kode);
        //exit();


        $kode_val = "";
        if ($kode == "") {
            $kode_val = "00";
        } else {
            if ($kode < 10) {
                $kode_val = '0' . (int) $kode + 1;
            } else {
                $kode_val = (int) $kode + 1;
            }
        }
        //var_dump($kode);
        //		var_dump($kode_val);
//var_dump($this->input->post('CODD_DESC', TRUE));
        //	exit();

        $data = array(
            'CODD_DESC' => strip_tags($this->input->post('CODD_DESC', TRUE)),
            'CODD_FLNM' => 'KODE_LEVL',
            'CODD_VALU' => $kode_val,
        );

        $this->db->insert('th_codexd', $data);
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
            //'CODD_DESC' => strip_tags($this->input->post('CODD_DESC', TRUE)),
            'CODD_FLNM' => strip_tags($this->input->post('CODD_FLNM', TRUE)),
            'CODD_VALU' => strip_tags($this->input->post('CODD_FLNM', TRUE)),
        );


        $this->db->where('CODD_VALU', $id);
        $this->db->update('th_codexd', $data);
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
        $this->db->where('CODD_VALU', $id);
        $this->db->delete('th_codexd');
    }

}
