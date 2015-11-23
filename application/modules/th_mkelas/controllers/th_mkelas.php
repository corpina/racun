<?php if (!defined('BASEPATH'))  exit('No direct script access allowed');

/**
 * Controller th_mkelas
 * @created on : Saturday, 31-Oct-2015 00:55:53
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */


class th_mkelas extends CI_Controller
{

    public function __construct() 
    {
        parent::__construct();         
        $this->load->model('th_mkelass');
    }
    

    /**
    * List all data th_mkelas
    *
    */
    public function index() 
    {
        $config = array(
            'base_url'          => site_url('th_mkelas/index/'),
            'total_rows'        => $this->th_mkelass->count_all(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
            
        );
        
        $this->pagination->initialize($config);
        $data['title']          = "Pembuatan Kelas";
        $data['total']          = $config['total_rows'];
        $data['pagination']     = $this->pagination->create_links();
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['th_mkelass']       = $this->th_mkelass->get_all($config['per_page'], $this->uri->segment(3));
        $this->template->display('th_mkelas/view',$data);
	      
    }

    

    /**
    * Call Form to Add  New th_mkelas
    *
    */
    public function add() 
    {       
        $data['th_mkelas'] = $this->th_mkelass->add();
        $data['action']  = 'th_mkelas/save';
        $data['fa_unitxxs']         = $this->th_mkelass->get_fa_unitxx();
        $data['tb_descthnajar']         = $this->th_mkelass->get_tb_descthn_ajar();
        $data['get_fa_kelas']         = $this->th_mkelass->get_fa_kelas();
        $data['title']          = "Pembuatan Kelas";
     
        $this->template->display('th_mkelas/form',$data);

    }

    

    /**
    * Call Form to Modify th_mkelas
    *
    */
    public function edit($id='') 
    {
        if ($id != '') 
        {
			$data['fa_unitxxs']         = $this->th_mkelass->get_fa_unitxx();
			$data['tb_descthnajar']         = $this->th_mkelass->get_tb_descthn_ajar();
			$data['get_fa_kelas']         = $this->th_mkelass->get_fa_kelas();
            $data['th_mkelas']      = $this->th_mkelass->get_one($id);
            $data['action']       = 'th_mkelas/save/' . $id;   
            $data['title']          = "Pembuatan Kelas";
            $this->template->display('th_mkelas/form',$data);
			
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('th_mkelas'));
        }
    }


    
    /**
    * Save & Update data  th_mkelas
    *
    */
    public function save($id =NULL) 
    {
        // validation config
        $config = array(
                  
                    array(
                        'field' => 'BUSS_CODE',
                        'label' => 'BUSS CODE',
                        'rules' => 'trim'
                        ),
                    
                    array(
                        'field' => 'NAMA_KLSX',
                        'label' => 'NAMA KLSX',
                        'rules' => 'trim'
                        ),
                    
                    array(
                        'field' => 'STAT_AKTF',
                        'label' => 'STAT AKTF',
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
                          
                          $this->th_mkelass->save();
                          $this->session->set_flashdata('notif', notify('Data berhasil di simpan','success'));
                          redirect('th_mkelas');
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
                        $this->th_mkelass->update($id);
                        $this->session->set_flashdata('notif', notify('Data berhasil di update','success'));
                        redirect('th_mkelas');
                    }
                } 
                else // If validation incorrect 
                {
                    $this->edit($id);
                }
         }
    }

    
    
    /**
    * Detail th_mkelas
    *
    */
    public function show($id='') 
    {
        if ($id != '') 
        {

            $data['th_mkelas'] = $this->th_mkelass->get_one($id);            
            $this->template->display('th_mkelas/_show',$data);
            
        }
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','info'));
            redirect(site_url('th_mkelas'));
        }
    }
    
    
    /**
    * Search th_mkelas like ""
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
            'base_url'          => site_url('th_mkelas/search/'),
            'total_rows'        => $this->th_mkelass->count_all_search(),
            'per_page'          => $this->config->item('per_page'),
            'uri_segment'       => 3,
            'num_links'         => 9,
            'use_page_numbers'  => FALSE
        );
        
        $this->pagination->initialize($config);
        $data['title']          = "Pembuatan Kelas";
        $data['total']          = $config['total_rows'];
        $data['number']         = (int)$this->uri->segment(3) +1;
        $data['pagination']     = $this->pagination->create_links();
        $data['th_mkelass']       = $this->th_mkelass->get_search($config['per_page'], $this->uri->segment(3));
       
        $this->template->display('th_mkelas/view',$data);
    }
    
    
    /**
    * Delete th_mkelas by ID
    *
    */
    public function destroy($id) 
    {        
        if ($id) 
        {
            $this->th_mkelass->destroy($id);           
             $this->session->set_flashdata('notif', notify('Data berhasil di hapus','success'));
             redirect('th_mkelas');
        } 
        else 
        {
            $this->session->set_flashdata('notif', notify('Data tidak ditemukan','warning'));
            redirect('th_mkelas');
        }       
    }

}

?>
