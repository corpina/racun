<?php if (!defined('BASEPATH'))  exit('No direct script access allowed');

/**
 * Controller master_iuran
 * @created on : Saturday, 31-Oct-2015 08:44:53
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */


class master_iuran extends CI_Controller
{

    public function __construct() 
    {
        parent::__construct();         
        $this->load->model('master_iurans');
    }
    

    /**
    * List all data master_iuran
    *
    */
    public function index() 
    {
        $config = array(
            'base_url'          => site_url('master_iuran/index/'),
            'total_rows'        => $this->master_iurans->count_all(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
            
        );
        
        $this->pagination->initialize($config);
        $data['title']          = "Master Iuran";
        $data['total']          = $config['total_rows'];
        $data['pagination']     = $this->pagination->create_links();
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['master_iurans']       = $this->master_iurans->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('master_iuran/view',$data);
	      
    }

    

    /**
    * Call Form to Add  New master_iuran
    *
    */
    public function add() 
    {       
        $data['master_iuran'] = $this->master_iurans->add();
        $data['action']  = 'master_iuran/save';
        $data['title']          = "Master Iuran";
     
      
        $this->template->display('master_iuran/form',$data);

    }

    

    /**
    * Call Form to Modify master_iuran
    *
    */
    public function edit($id='') 
    {
        if ($id != '') 
        {

            $data['master_iuran']      = $this->master_iurans->get_one($id);
            $data['action']       = 'master_iuran/save/' . $id;
            $data['title']          = "Master Iuran";           
      
          
            $this->template->display('master_iuran/form',$data);
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('master_iuran'));
        }
    }


    
    /**
    * Save & Update data  master_iuran
    *
    */
    public function save($id =NULL) 
    {
        // validation config
        $config = array(
                  
                    array(
                        'field' => 'CODD_DESC',
                        'label' => 'CODD DESC',
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
                          
                          $this->master_iurans->save();
                          $this->session->set_flashdata('notif', notify('Data berhasil di simpan','success'));
                          redirect('master_iuran');
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
                        $this->master_iurans->update($id);
                        $this->session->set_flashdata('notif', notify('Data berhasil di update','success'));
                        redirect('master_iuran');
                    }
                } 
                else // If validation incorrect 
                {
                    $this->edit($id);
                }
         }
    }

    
    
    /**
    * Detail master_iuran
    *
    */
    public function show($id='') 
    {
        if ($id != '') 
        {

            $data['master_iuran'] = $this->master_iurans->get_one($id);   
            $data['title']          = "Master Iuran";         
            $this->template->display('master_iuran/_show',$data);
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('master_iuran'));
        }
    }
    
    
    /**
    * Search master_iuran like ""
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
            'base_url'          => site_url('master_iuran/search/'),
            'total_rows'        => $this->master_iurans->count_all_search(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
        );
        
        $this->pagination->initialize($config);
        $data['title']          = "Master Iuran";
        $data['total']          = $config['total_rows'];
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['pagination']     = $this->pagination->create_links();
        $data['master_iurans']       = $this->master_iurans->get_search($config['per_page'], $this->uri->segment(3));
       
        $this->template->display('master_iuran/view',$data);
    }
    
    
    /**
    * Delete master_iuran by ID
    *
    */
    public function destroy($id) 
    {        
        if ($id) 
        {
            $this->master_iurans->destroy($id);           
             $this->session->set_flashdata('notif', notify('Data berhasil di hapus','success'));
             redirect('master_iuran');
        } 
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','warning'));
            redirect('master_iuran');
        }       
    }

}

?>
