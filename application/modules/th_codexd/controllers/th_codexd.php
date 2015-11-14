<?php if (!defined('BASEPATH'))  exit('No direct script access allowed');

/**
 * Controller th_codexd
 * @created on : Saturday, 31-Oct-2015 08:44:53
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */


class th_codexd extends CI_Controller
{

    public function __construct() 
    {
        parent::__construct();         
        $this->load->model('th_codexds');
    }
    

    /**
    * List all data th_codexd
    *
    */
    public function index() 
    {
        $config = array(
            'base_url'          => site_url('th_codexd/index/'),
            'total_rows'        => $this->th_codexds->count_all(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
            
        );
        
        $this->pagination->initialize($config);
        $data['total']          = $config['total_rows'];
        $data['pagination']     = $this->pagination->create_links();
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['th_codexds']       = $this->th_codexds->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('th_codexd/view',$data);
	      
    }

    

    /**
    * Call Form to Add  New th_codexd
    *
    */
    public function add() 
    {       
        $data['th_codexd'] = $this->th_codexds->add();
        $data['action']  = 'th_codexd/save';
     
      
        $this->template->display('th_codexd/form',$data);

    }

    

    /**
    * Call Form to Modify th_codexd
    *
    */
    public function edit($id='') 
    {
        if ($id != '') 
        {

            $data['th_codexd']      = $this->th_codexds->get_one($id);
            $data['action']       = 'th_codexd/save/' . $id;           
      
          
            $this->template->display('th_codexd/form',$data);
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('th_codexd'));
        }
    }


    
    /**
    * Save & Update data  th_codexd
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
                          
                          $this->th_codexds->save();
                          $this->session->set_flashdata('notif', notify('Data berhasil di simpan','success'));
                          redirect('th_codexd');
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
                        $this->th_codexds->update($id);
                        $this->session->set_flashdata('notif', notify('Data berhasil di update','success'));
                        redirect('th_codexd');
                    }
                } 
                else // If validation incorrect 
                {
                    $this->edit($id);
                }
         }
    }

    
    
    /**
    * Detail th_codexd
    *
    */
    public function show($id='') 
    {
        if ($id != '') 
        {

            $data['th_codexd'] = $this->th_codexds->get_one($id);            
            $this->template->display('th_codexd/_show',$data);
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('th_codexd'));
        }
    }
    
    
    /**
    * Search th_codexd like ""
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
            'base_url'          => site_url('th_codexd/search/'),
            'total_rows'        => $this->th_codexds->count_all_search(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
        );
        
        $this->pagination->initialize($config);
        $data['total']          = $config['total_rows'];
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['pagination']     = $this->pagination->create_links();
        $data['th_codexds']       = $this->th_codexds->get_search($config['per_page'], $this->uri->segment(3));
       
        $this->template->display('th_codexd/view',$data);
    }
    
    
    /**
    * Delete th_codexd by ID
    *
    */
    public function destroy($id) 
    {        
        if ($id) 
        {
            $this->th_codexds->destroy($id);           
             $this->session->set_flashdata('notif', notify('Data berhasil di hapus','success'));
             redirect('th_codexd');
        } 
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','warning'));
            redirect('th_codexd');
        }       
    }

}

?>
