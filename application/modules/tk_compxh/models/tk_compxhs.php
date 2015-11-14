<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Description of tk_compxh
 * @created on : Saturday, 14-Nov-2015 04:36:41
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015    
 */
 
 
class tk_compxhs extends CI_Model 
{

    public function __construct() 
    {
        parent::__construct();
    }


    /**
     *  Get All data tk_compxh
     *
     *  @param limit  : Integer
     *  @param offset : Integer
     *
     *  @return array
     *
     */
    public function get_all($limit, $offset) 
    {

        $result = $this->db->get('tk_compxh', $limit, $offset);

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
     *  Count All tk_compxh
     *    
     *  @return Integer
     *
     */
    public function count_all()
    {
        $this->db->from('tk_compxh');
        return $this->db->count_all_results();
    }
    

    /**
    * Search All tk_compxh
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
                
        $this->db->like('CODH_FLNM', $keyword);  
                
        $this->db->like('CODH_DESC', $keyword);  
                
        $this->db->like('CODH_TYPE', $keyword);  
                
        $this->db->like('CODH_CHR1', $keyword);  
                
        $this->db->like('CODH_CHR2', $keyword);  
                
        $this->db->like('CODH_CHR3', $keyword);  
                
        $this->db->like('TRAN_USID', $keyword);  
                
        $this->db->like('TRAN_COMP', $keyword);  
        
        $this->db->limit($limit, $offset);
        $result = $this->db->get('tk_compxh');

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
    * Search All tk_compxh
    * @param keyword : mixed
    *
    * @return Integer
    *
    */
    public function count_all_search()
    {
        $keyword = $this->session->userdata('keyword');
        $this->db->from('tk_compxh');        
                
        $this->db->like('CODH_FLNM', $keyword);  
                
        $this->db->like('CODH_DESC', $keyword);  
                
        $this->db->like('CODH_TYPE', $keyword);  
                
        $this->db->like('CODH_CHR1', $keyword);  
                
        $this->db->like('CODH_CHR2', $keyword);  
                
        $this->db->like('CODH_CHR3', $keyword);  
                
        $this->db->like('TRAN_USID', $keyword);  
                
        $this->db->like('TRAN_COMP', $keyword);  
        
        return $this->db->count_all_results();
    }


    
    
    
    /**
    *  Get One tk_compxh
    *
    *  @param id : Integer
    *
    *  @return array
    *
    */
    public function get_one($id) 
    {
        $this->db->where('CODH_FLNM', $id);
        $result = $this->db->get('tk_compxh');

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
    *  Default form data tk_compxh
    *  @return array
    *
    */
    public function add()
    {
        $data = array(
            
                'CODH_LENG' => '',
            
                'CODH_DESC' => '',
            
                'CODH_HELP' => '',
            
                'CODH_TYPE' => '',
            
                'CODH_CHR1' => '',
            
                'CODH_CHR2' => '',
            
                'CODH_CHR3' => '',
            
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
        
            'CODH_LENG' => strip_tags($this->input->post('CODH_LENG', TRUE)),
        
            'CODH_DESC' => strip_tags($this->input->post('CODH_DESC', TRUE)),
        
            'CODH_HELP' => strip_tags($this->input->post('CODH_HELP', TRUE)),
        
            'CODH_TYPE' => strip_tags($this->input->post('CODH_TYPE', TRUE)),
        
            'CODH_CHR1' => strip_tags($this->input->post('CODH_CHR1', TRUE)),
        
            'CODH_CHR2' => strip_tags($this->input->post('CODH_CHR2', TRUE)),
        
            'CODH_CHR3' => strip_tags($this->input->post('CODH_CHR3', TRUE)),
        
            'TRAN_DATE' => strip_tags($this->input->post('TRAN_DATE', TRUE)),
        
            'TRAN_USID' => strip_tags($this->input->post('TRAN_USID', TRUE)),
        
            'TRAN_TYPE' => strip_tags($this->input->post('TRAN_TYPE', TRUE)),
        
            'TRAN_COMP' => strip_tags($this->input->post('TRAN_COMP', TRUE)),
        
        );
        
        
        $this->db->insert('tk_compxh', $data);
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
        
                'CODH_LENG' => strip_tags($this->input->post('CODH_LENG', TRUE)),
        
                'CODH_DESC' => strip_tags($this->input->post('CODH_DESC', TRUE)),
        
                'CODH_HELP' => strip_tags($this->input->post('CODH_HELP', TRUE)),
        
                'CODH_TYPE' => strip_tags($this->input->post('CODH_TYPE', TRUE)),
        
                'CODH_CHR1' => strip_tags($this->input->post('CODH_CHR1', TRUE)),
        
                'CODH_CHR2' => strip_tags($this->input->post('CODH_CHR2', TRUE)),
        
                'CODH_CHR3' => strip_tags($this->input->post('CODH_CHR3', TRUE)),
        
                'TRAN_DATE' => strip_tags($this->input->post('TRAN_DATE', TRUE)),
        
                'TRAN_USID' => strip_tags($this->input->post('TRAN_USID', TRUE)),
        
                'TRAN_TYPE' => strip_tags($this->input->post('TRAN_TYPE', TRUE)),
        
                'TRAN_COMP' => strip_tags($this->input->post('TRAN_COMP', TRUE)),
        
        );
        
        
        $this->db->where('CODH_FLNM', $id);
        $this->db->update('tk_compxh', $data);
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
        $this->db->where('CODH_FLNM', $id);
        $this->db->delete('tk_compxh');
        
    }







    



}
