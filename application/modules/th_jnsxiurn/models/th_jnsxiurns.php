<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Description of th_jnsxiurn
 * @created on : Thursday, 19-Nov-2015 00:24:03
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015    
 */
 
 
class th_jnsxiurns extends CI_Model 
{

    public function __construct() 
    {
        parent::__construct();
    }


    /**
     *  Get All data th_jnsxiurn
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) 
    {

        $result = $this->db->get('th_jnsxiurn', $limit, $offset);

        if ($result->num_rows() > 0) 
        {
            return $result->result_array();
        } 
        else 
        {
            return array();
        }
    }

    

    /**
     *  Count All th_jnsxiurn
     *    
     *  @return Integer
     *
     */
    public function count_all()
    {
        $this->db->from('th_jnsxiurn');
        return $this->db->count_all_results();
    }
    

    /**
    * Search All th_jnsxiurn
    *
    *  @param limit   : Integer
    *  @param offset  : Integer
    *  @param keyword : mixed
    *
    *  @return array
    *
    */
    public function get_search($limit, $offset) 
    {
        $keyword = $this->session->userdata('keyword');
                
        $this->db->like('BUSS_CODE', $keyword);  
                
        $this->db->like('CODD_FLNM', $keyword);  
                
        $this->db->like('CODD_VALU', $keyword);  
                
        $this->db->like('CODD_DESC', $keyword);  
                
        $this->db->like('CODD_VARC', $keyword);  
                
        $this->db->like('CODD_VAR1', $keyword);  
                
        $this->db->like('CODD_CHR1', $keyword);  
                
        $this->db->like('CODD_CHR2', $keyword);  
                
        $this->db->like('CODD_CHR3', $keyword);  
                
        $this->db->like('CODD_CHR4', $keyword);  
                
        $this->db->like('CODD_CHR5', $keyword);  
                
        $this->db->like('DELE_STAT', $keyword);  
                
        $this->db->like('TRAN_USID', $keyword);  
                
        $this->db->like('TRAN_TYPE', $keyword);  
                
        $this->db->like('TRAN_COMP', $keyword);  
        
        $this->db->limit($limit, $offset);
        $result = $this->db->get('th_jnsxiurn');

        if ($result->num_rows() > 0) 
        {
            return $result->result_array();
        } 
        else 
        {
            return array();
        }
    }

    
    
    
    
    
    /**
    * Search All th_jnsxiurn
    * @param keyword : mixed
    *
    * @return Integer
    *
    */
    public function count_all_search()
    {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('th_jnsxiurn');        
                
        $this->db->like('BUSS_CODE', $keyword);  
                
        $this->db->like('CODD_FLNM', $keyword);  
                
        $this->db->like('CODD_VALU', $keyword);  
                
        $this->db->like('CODD_DESC', $keyword);  
                
        $this->db->like('CODD_VARC', $keyword);  
                
        $this->db->like('CODD_VAR1', $keyword);  
                
        $this->db->like('CODD_CHR1', $keyword);  
                
        $this->db->like('CODD_CHR2', $keyword);  
                
        $this->db->like('CODD_CHR3', $keyword);  
                
        $this->db->like('CODD_CHR4', $keyword);  
                
        $this->db->like('CODD_CHR5', $keyword);  
                
        $this->db->like('DELE_STAT', $keyword);  
                
        $this->db->like('TRAN_USID', $keyword);  
                
        $this->db->like('TRAN_TYPE', $keyword);  
                
        $this->db->like('TRAN_COMP', $keyword);  
        
        return $this->db->count_all_results();
    }


    
    
    
    /**
    *  Get One th_jnsxiurn
    *
    *  @param id : Integer
    *
    *  @return array
    *
    */
    public function get_one($id) 
    {
        $this->db->where('', $id);
        $result = $this->db->get('th_jnsxiurn');

        if ($result->num_rows() == 1) 
        {
            return $result->row_array();
        } 
        else 
        {
            return array();
        }
    }

    
    
    
    /**
    *  Default form data th_jnsxiurn
    *  @return array
    *
    */
    public function add()
    {
        $data = array(
            
                'BUSS_CODE' => '',
            
                'CODD_FLNM' => '',
            
                'CODD_VALU' => '',
            
                'CODD_DESC' => '',
            
                'CODD_VARC' => '',
            
                'CODD_VAR1' => '',
            
                'CODD_DECI' => '',
            
                'CODD_CHR1' => '',
            
                'CODD_CHR2' => '',
            
                'CODD_CHR3' => '',
            
                'CODD_CHR4' => '',
            
                'CODD_CHR5' => '',
            
                'CODD_DEC1' => '',
            
                'CODD_DEC2' => '',
            
                'DELE_STAT' => '',
            
                'TRAN_DATE' => '',
            
                'TRAN_USID' => '',
            
                'TRAN_TYPE' => '',
            
                'TRAN_COMP' => '',
            
        );

        return $data;
    }

    
    
    
    
    /**
    *  Save data Post
    *
    *  @return void
    *
    */
    public function save() 
    {
        $data = array(
        
            'BUSS_CODE' => strip_tags($this->input->post('BUSS_CODE', TRUE)),
        
            'CODD_FLNM' => strip_tags($this->input->post('CODD_FLNM', TRUE)),
        
            'CODD_VALU' => strip_tags($this->input->post('CODD_VALU', TRUE)),
        
            'CODD_DESC' => strip_tags($this->input->post('CODD_DESC', TRUE)),
        
            'CODD_VARC' => strip_tags($this->input->post('CODD_VARC', TRUE)),
        
            'CODD_VAR1' => strip_tags($this->input->post('CODD_VAR1', TRUE)),
        
            'CODD_DECI' => strip_tags($this->input->post('CODD_DECI', TRUE)),
        
            'CODD_CHR1' => strip_tags($this->input->post('CODD_CHR1', TRUE)),
        
            'CODD_CHR2' => strip_tags($this->input->post('CODD_CHR2', TRUE)),
        
            'CODD_CHR3' => strip_tags($this->input->post('CODD_CHR3', TRUE)),
        
            'CODD_CHR4' => strip_tags($this->input->post('CODD_CHR4', TRUE)),
        
            'CODD_CHR5' => strip_tags($this->input->post('CODD_CHR5', TRUE)),
        
            'CODD_DEC1' => strip_tags($this->input->post('CODD_DEC1', TRUE)),
        
            'CODD_DEC2' => strip_tags($this->input->post('CODD_DEC2', TRUE)),
        
            'DELE_STAT' => strip_tags($this->input->post('DELE_STAT', TRUE)),
        
            'TRAN_DATE' => strip_tags($this->input->post('TRAN_DATE', TRUE)),
        
            'TRAN_USID' => strip_tags($this->input->post('TRAN_USID', TRUE)),
        
            'TRAN_TYPE' => strip_tags($this->input->post('TRAN_TYPE', TRUE)),
        
            'TRAN_COMP' => strip_tags($this->input->post('TRAN_COMP', TRUE)),
        
        );
        
        
        $this->db->insert('th_jnsxiurn', $data);
    }
    
    
    

    
    /**
    *  Update modify data
    *
    *  @param id : Integer
    *
    *  @return void
    *
    */
    public function update($id)
    {
        $data = array(
        
                'BUSS_CODE' => strip_tags($this->input->post('BUSS_CODE', TRUE)),
        
                'CODD_FLNM' => strip_tags($this->input->post('CODD_FLNM', TRUE)),
        
                'CODD_VALU' => strip_tags($this->input->post('CODD_VALU', TRUE)),
        
                'CODD_DESC' => strip_tags($this->input->post('CODD_DESC', TRUE)),
        
                'CODD_VARC' => strip_tags($this->input->post('CODD_VARC', TRUE)),
        
                'CODD_VAR1' => strip_tags($this->input->post('CODD_VAR1', TRUE)),
        
                'CODD_DECI' => strip_tags($this->input->post('CODD_DECI', TRUE)),
        
                'CODD_CHR1' => strip_tags($this->input->post('CODD_CHR1', TRUE)),
        
                'CODD_CHR2' => strip_tags($this->input->post('CODD_CHR2', TRUE)),
        
                'CODD_CHR3' => strip_tags($this->input->post('CODD_CHR3', TRUE)),
        
                'CODD_CHR4' => strip_tags($this->input->post('CODD_CHR4', TRUE)),
        
                'CODD_CHR5' => strip_tags($this->input->post('CODD_CHR5', TRUE)),
        
                'CODD_DEC1' => strip_tags($this->input->post('CODD_DEC1', TRUE)),
        
                'CODD_DEC2' => strip_tags($this->input->post('CODD_DEC2', TRUE)),
        
                'DELE_STAT' => strip_tags($this->input->post('DELE_STAT', TRUE)),
        
                'TRAN_DATE' => strip_tags($this->input->post('TRAN_DATE', TRUE)),
        
                'TRAN_USID' => strip_tags($this->input->post('TRAN_USID', TRUE)),
        
                'TRAN_TYPE' => strip_tags($this->input->post('TRAN_TYPE', TRUE)),
        
                'TRAN_COMP' => strip_tags($this->input->post('TRAN_COMP', TRUE)),
        
        );
        
        
        $this->db->where('', $id);
        $this->db->update('th_jnsxiurn', $data);
    }


    
    
    
    /**
    *  Delete data by id
    *
    *  @param id : Integer
    *
    *  @return void
    *
    */
    public function destroy($id)
    {       
        $this->db->where('', $id);
        $this->db->delete('th_jnsxiurn');
        
    }





    // get tb_descthn_ajar
    public function get_sekolah() {


        $result = $this->db->get('fa_unitxx')->result();

        $ret [''] = 'Pilih Unit Sekolah :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->KODE_UNIT] = $row->NAMA_UNIT;
            }
        }

        return $ret;
    }

    
    // get tb_descthn_ajar
    public function get_jenis_iuran() {

		$this->db->select('CODD_VALU,CODD_DESC');
        $result = $this->db->get('th_jnsxiurn')->result();

        $ret [''] = 'Pilih Jenis Iuran :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->CODD_DESC] = $row->CODD_DESC;//.' - '.$row->CODD_VALU;
            }
        }

        return $ret;
    }
	
	
	public function get_pendapatan() {

		$this->db->select('ACCT_CODE,ACCT_NAMA');
		$this->db->where('acct_type','02');
		$this->db->order_by('ACCT_NAMA','asc');
        $result = $this->db->get('tb_coaxxx')->result();

        $ret [''] = 'Pilih Jenis Pendapatan :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->ACCT_CODE] = $row->ACCT_NAMA;//.' - '.$row->ACCT_CODE;
            }
        }

        return $ret;
    }

	public function get_piutang() {

		$this->db->select('ACCT_CODE,ACCT_NAMA');
		$this->db->where('acct_type','02');
		$this->db->order_by('ACCT_NAMA','asc');
        $result = $this->db->get('tb_coaxxx')->result();

        $ret [''] = 'Pilih Jenis Piutang :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->ACCT_CODE] = $row->ACCT_NAMA;//.' - '.$row->ACCT_CODE;
            }
        }

        return $ret;
    }
	
	public function get_terima_dimuka() {

		$this->db->select('ACCT_CODE,ACCT_NAMA');
		$this->db->where('acct_type','02');
		$this->db->order_by('ACCT_NAMA','asc');
        $result = $this->db->get('tb_coaxxx')->result();

        $ret [''] = 'Pilih :';
        if ($result) {

            foreach ($result as $key => $row) {
                $ret [$row->ACCT_CODE] = $row->ACCT_NAMA;//.' - '.$row->ACCT_CODE;
            }
        }

        return $ret;
    }




}
