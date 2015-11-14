<?php if (!defined('BASEPATH'))  exit('No direct script access allowed');

/**
 * Controller fa_unitxx
 * @created on : Friday, 30-Oct-2015 15:23:22
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */


class fa_unitxx extends CI_Controller
{

    public function __construct() 
    {
        parent::__construct();         
        $this->load->model('fa_unitxxs');
    }
    

    /**
    * List all data fa_unitxx
    *
    */
    public function index() 
    {
        $config = array(
            'base_url'          => site_url('fa_unitxx/index/'),
            'total_rows'        => $this->fa_unitxxs->count_all(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
            
        );
        
        $this->pagination->initialize($config);
        $data['total']          = $config['total_rows'];
        $data['pagination']     = $this->pagination->create_links();
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['fa_unitxxs']       = $this->fa_unitxxs->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('fa_unitxx/view',$data);
	      
    }

    

    /**
    * Call Form to Add  New fa_unitxx
    *
    */
    public function add() 
    {       
        $data['fa_unitxx'] = $this->fa_unitxxs->add();
        $data['action']  = 'fa_unitxx/save';
     
       $data['fa_lokxxx'] = $this->fa_unitxxs->get_fa_lokxxx();
     
        
        $this->template->display('fa_unitxx/form',$data);

    }

    

    /**
    * Call Form to Modify fa_unitxx
    *
    */
    public function edit($id='') 
    {
        if ($id != '') 
        {

            $data['fa_unitxx']      = $this->fa_unitxxs->get_one($id);
			
		//	var_dump($data['fa_unitxx']);
			//exit();
            $data['action']       = 'fa_unitxx/save/' . $id;           
      
           $data['fa_lokxxx'] = $this->fa_unitxxs->get_fa_lokxxx();
       
            
            $this->template->display('fa_unitxx/form',$data);
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('fa_unitxx'));
        }
    }


    
    /**
    * Save & Update data  fa_unitxx
    *
    */
    public function save($id =NULL) 
    {
        // validation config
        $config = array(
                  
				  
				  array(
                        'field' => 'KODE_UNIT',
                        'label' => 'KODE UNIT',
                        'rules' => 'trim'
                        ),
				  
                    array(
                        'field' => 'NAMA_UNIT',
                        'label' => 'NAMA UNIT',
                        'rules' => 'trim'
                        ),
                    
                    array(
                        'field' => 'KODE_LOKX',
                        'label' => 'KODE LOKX',
                        'rules' => 'trim'
                        ),
                    
                    array(
                        'field' => 'KETX_UNIT',
                        'label' => 'KETX UNIT',
                        'rules' => 'trim'
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
                          
                          $this->fa_unitxxs->save();
                          $this->session->set_flashdata('notif', notify('Data berhasil di simpan','success'));
                          redirect('fa_unitxx');
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
                        $this->fa_unitxxs->update($id);
                        $this->session->set_flashdata('notif', notify('Data berhasil di update','success'));
                        redirect('fa_unitxx');
                    }
                } 
                else // If validation incorrect 
                {
                    $this->edit($id);
                }
         }
    }

    
    
    /**
    * Detail fa_unitxx
    *
    */
    public function show($id='') 
    {
        if ($id != '') 
        {

            $data['fa_unitxx'] = $this->fa_unitxxs->get_one($id);            
            $this->template->display('fa_unitxx/_show',$data);
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('fa_unitxx'));
        }
    }
    
    
    /**
    * Search fa_unitxx like ""
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
            'base_url'          => site_url('fa_unitxx/search/'),
            'total_rows'        => $this->fa_unitxxs->count_all_search(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
        );
        
        $this->pagination->initialize($config);
        $data['total']          = $config['total_rows'];
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['pagination']     = $this->pagination->create_links();
        $data['fa_unitxxs']       = $this->fa_unitxxs->get_search($config['per_page'], $this->uri->segment(3));
       
        $this->template->display('fa_unitxx/view',$data);
    }
    
    
    /**
    * Delete fa_unitxx by ID
    *
    */
    public function destroy($id) 
    {        
        if ($id) 
        {
            $this->fa_unitxxs->destroy($id);           
             $this->session->set_flashdata('notif', notify('Data berhasil di hapus','success'));
             redirect('fa_unitxx');
        } 
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','warning'));
            redirect('fa_unitxx');
        }       
    }

}

?>
