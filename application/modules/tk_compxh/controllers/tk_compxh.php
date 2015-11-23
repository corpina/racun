<?php if (!defined('BASEPATH'))  exit('No direct script access allowed');

/**
 * Controller tk_compxh
 * @created on : Saturday, 14-Nov-2015 04:36:41
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */


class tk_compxh extends CI_Controller
{

    public function __construct() 
    {
        parent::__construct();         
        $this->load->model('tk_compxhs');
    }
    

    /**
    * List all data tk_compxh
    *
    */
    public function index() 
    {
        $config = array(
            'base_url'          => site_url('tk_compxh/index/'),
            'total_rows'        => $this->tk_compxhs->count_all(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
            
        );
        
        $this->pagination->initialize($config);
        $data['total']          = $config['total_rows'];
        $data['pagination']     = $this->pagination->create_links();
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['tk_compxhs']       = $this->tk_compxhs->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('tk_compxh/view',$data);
	      
    }

    

    /**
    * Call Form to Add  New tk_compxh
    *
    */
    public function add() 
    {       
        $data['tk_compxh'] = $this->tk_compxhs->add();
        $data['action']  = 'tk_compxh/save';
      
        $this->template->display('tk_compxh/form',$data);

    }

    

    /**
    * Call Form to Modify tk_compxh
    *
    */
    public function edit($id='') 
    {
        if ($id != '') 
        {

            $data['tk_compxh']      = $this->tk_compxhs->get_one($id);
            $data['action']       = 'tk_compxh/save/' . $id;           
      
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('tk_compxh'));
        }
    }


    
    /**
    * Save & Update data  tk_compxh
    *
    */
    public function save($id =NULL) 
    {
        // validation config
        $config = array(
                  
                    array(
                        'field' => 'CODH_LENG',
                        'label' => 'CODH LENG',
                        'rules' => 'trim|xss_clean'
                        ),
                    
                    array(
                        'field' => 'CODH_DESC',
                        'label' => 'CODH DESC',
                        'rules' => 'trim|xss_clean'
                        ),
                    
                    array(
                        'field' => 'CODH_HELP',
                        'label' => 'CODH HELP',
                        'rules' => 'trim|xss_clean'
                        ),
                    
                    array(
                        'field' => 'CODH_TYPE',
                        'label' => 'CODH TYPE',
                        'rules' => 'trim|xss_clean'
                        ),
                    
                    array(
                        'field' => 'CODH_CHR1',
                        'label' => 'CODH CHR1',
                        'rules' => 'trim|xss_clean'
                        ),
                    
                    array(
                        'field' => 'CODH_CHR2',
                        'label' => 'CODH CHR2',
                        'rules' => 'trim|xss_clean'
                        ),
                    
                    array(
                        'field' => 'CODH_CHR3',
                        'label' => 'CODH CHR3',
                        'rules' => 'trim|xss_clean'
                        ),
                    
                    array(
                        'field' => 'TRAN_DATE',
                        'label' => 'TRAN DATE',
                        'rules' => 'trim|xss_clean'
                        ),
                    
                    array(
                        'field' => 'TRAN_USID',
                        'label' => 'TRAN USID',
                        'rules' => 'trim|xss_clean'
                        ),
                    
                    array(
                        'field' => 'TRAN_TYPE',
                        'label' => 'TRAN TYPE',
                        'rules' => 'trim|xss_clean'
                        ),
                    
                    array(
                        'field' => 'TRAN_COMP',
                        'label' => 'TRAN COMP',
                        'rules' => 'trim|xss_clean'
                        ),
                               
                  );
            
        // if id NULL then add new data
        if(!$id)
        {    
                  $this->form_validation->set_rules($config);

                  if ($this->form_validation->run() == TRUE) 
                  {
                      if ($this->input->post()) 
                      {
                          
                          $this->tk_compxhs->save();
                          $this->session->set_flashdata('notif', notify('Data berhasil di simpan','success'));
                          redirect('tk_compxh');
                      }
                  } 
                  else // If validation incorrect 
                  {
                      $this->add();
                  }
         }
         else // Update data if Form Edit send Post and ID available
         {               
                $this->form_validation->set_rules($config);

                if ($this->form_validation->run() == TRUE) 
                {
                    if ($this->input->post()) 
                    {
                        $this->tk_compxhs->update($id);
                        $this->session->set_flashdata('notif', notify('Data berhasil di update','success'));
                        redirect('tk_compxh');
                    }
                } 
                else // If validation incorrect 
                {
                    $this->edit($id);
                }
         }
    }

    
    
    /**
    * Detail tk_compxh
    *
    */
    public function show($id='') 
    {
        if ($id != '') 
        {

            $data['tk_compxh'] = $this->tk_compxhs->get_one($id);            
            $this->template->display('tk_compxh/_show',$data);
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('tk_compxh'));
        }
    }
    
    
    /**
    * Search tk_compxh like ""
    *
    */   
    public function search()
    {
        if($this->input->post('q'))
        {
            $keyword = $this->input->post('q');
            
            $this->session->set_userdata(
                        array('keyword' => $this->input->post('q',TRUE))
                    );
        }
        
         $config = array(
            'base_url'          => site_url('tk_compxh/search/'),
            'total_rows'        => $this->tk_compxhs->count_all_search(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
        );
        
        $this->pagination->initialize($config);
        $data['total']          = $config['total_rows'];
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['pagination']     = $this->pagination->create_links();
        $data['tk_compxhs']       = $this->tk_compxhs->get_search($config['per_page'], $this->uri->segment(3));
       
        $this->template->display('tk_compxh/view',$data);
    }
    
    
    /**
    * Delete tk_compxh by ID
    *
    */
    public function destroy($id) 
    {        
        if ($id) 
        {
            $this->tk_compxhs->destroy($id);           
             $this->session->set_flashdata('notif', notify('Data berhasil di hapus','success'));
             redirect('tk_compxh');
        } 
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','warning'));
            redirect('tk_compxh');
        }       
    }

}

?>
