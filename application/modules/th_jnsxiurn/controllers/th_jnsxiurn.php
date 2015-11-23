<?php if (!defined('BASEPATH'))  exit('No direct script access allowed');

/**
 * Controller th_jnsxiurn
 * @created on : Thursday, 19-Nov-2015 00:24:03
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */


class th_jnsxiurn extends CI_Controller
{

    public function __construct() 
    {
        parent::__construct();         
        $this->load->model('th_jnsxiurns');
    }
    

    /**
    * List all data th_jnsxiurn
    *
    */
    public function index() 
    {
        $config = array(
            'base_url'          => site_url('th_jnsxiurn/index/'),
            'total_rows'        => $this->th_jnsxiurns->count_all(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
            
        );
        
        $this->pagination->initialize($config);
        $data['total']          = $config['total_rows'];
        $data['pagination']     = $this->pagination->create_links();
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['th_jnsxiurns']       = $this->th_jnsxiurns->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('th_jnsxiurn/view',$data);
	      
    }

    

    /**
    * Call Form to Add  New th_jnsxiurn
    *
    */
    public function add() 
    {       
        $data['th_jnsxiurn'] = $this->th_jnsxiurns->add();
        $data['action']  = 'th_jnsxiurn/save';
		$data['get_sekolah'] = $this->th_jnsxiurns->get_sekolah();
				$data['get_jenis_iuran'] = $this->th_jnsxiurns->get_jenis_iuran();
				$data['get_pendapatan'] = $this->th_jnsxiurns->get_pendapatan();
				$data['get_piutang'] = $this->th_jnsxiurns->get_piutang();
				$data['get_terima_dimuka'] = $this->th_jnsxiurns->get_terima_dimuka();

		
      
        $this->template->display('th_jnsxiurn/form',$data);

    }

    

    /**
    * Call Form to Modify th_jnsxiurn
    *
    */
    public function edit($id='') 
    {
        if ($id != '') 
        {

            $data['th_jnsxiurn']      = $this->th_jnsxiurns->get_one($id);
            $data['action']       = 'th_jnsxiurn/save/' . $id;           
      
           
            
            $this->template->display('th_jnsxiurn/form',$data);
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('th_jnsxiurn'));
        }
    }


    
    /**
    * Save & Update data  th_jnsxiurn
    *
    */
    public function save($id =NULL) 
    {
        // validation config
        $config = array(
                  
                  
                    
                    array(
                        'field' => 'CODD_VALU',
                        'label' => 'CODD VALU',
                        'rules' => 'trim'
                        ),
                    
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
                          
                          $this->th_jnsxiurns->save();
                          $this->session->set_flashdata('notif', notify('Data berhasil di simpan','success'));
                          redirect('th_jnsxiurn');
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
                        $this->th_jnsxiurns->update($id);
                        $this->session->set_flashdata('notif', notify('Data berhasil di update','success'));
                        redirect('th_jnsxiurn');
                    }
                } 
                else // If validation incorrect 
                {
                    $this->edit($id);
                }
         }
    }

    
    
    /**
    * Detail th_jnsxiurn
    *
    */
    public function show($id='') 
    {
        if ($id != '') 
        {

            $data['th_jnsxiurn'] = $this->th_jnsxiurns->get_one($id);            
            $this->template->display('th_jnsxiurn/_show',$data);
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('th_jnsxiurn'));
        }
    }
    
    
    /**
    * Search th_jnsxiurn like ""
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
            'base_url'          => site_url('th_jnsxiurn/search/'),
            'total_rows'        => $this->th_jnsxiurns->count_all_search(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
        );
        
        $this->pagination->initialize($config);
        $data['total']          = $config['total_rows'];
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['pagination']     = $this->pagination->create_links();
        $data['th_jnsxiurns']       = $this->th_jnsxiurns->get_search($config['per_page'], $this->uri->segment(3));
       
        $this->template->display('th_jnsxiurn/view',$data);
    }
    
    
    /**
    * Delete th_jnsxiurn by ID
    *
    */
    public function destroy($id) 
    {        
        if ($id) 
        {
            $this->th_jnsxiurns->destroy($id);           
             $this->session->set_flashdata('notif', notify('Data berhasil di hapus','success'));
             redirect('th_jnsxiurn');
        } 
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','warning'));
            redirect('th_jnsxiurn');
        }       
    }

}

?>
