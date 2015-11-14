<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class m_login extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    // model untuk melakukan registrasi
    public function doRegis() {
        $this->load->library('encrypt');
        $namaRegis = trim(strip_tags($this->input->post("namaRegis")));
        $passwordRegis = $this->input->post("passwordRegis");
        $pass = $this->encrypt->hash($passwordRegis);
        $emailRegis = trim(strip_tags($this->input->post("emailRegis")));
        $nomor_ktp = trim(strip_tags($this->input->post("nik")));
        $token = $this->encrypt->hash($emailRegis.$nomor_ktp);

        //    return $this->db->query("insert into usertab (password,email,nama_lengkap) values('$pass','$emailRegis','$namaRegis')");
        return $this->db->query("call sp_insert_usertab('$pass','$namaRegis','$emailRegis','newuser','$nomor_ktp', '$token')");
    }

    //model untuk melakuakan login
    public function doLogin($email, $password) {
        return $query = $this->db->query("call doLogin('" . $email . "','" . $password . "')");
    }

    //model untuk update login jika user login
    public function update_login() {
        $this->db->where('email', $this->session->userdata("email"));
        $this->db->update('usertab', array("is_login" => 0));
    }

    //model untuk proses registrasi
    public function proses_registrasi($token) {
        //TODO : ganti ke stored procedure
        
//        $this->db->where('email', $this->encryption->decrypt($mail));
        $this->db->where('token', $token);
        $result = $this->db->get('usertab')->result();
        
        if (count($result)>0){
            $email = $result[0]->email;
            
            //todo ganti ke store procedure
            //kode group: 9afa806a-6673-11e5-9
            $data_insert = [
                'kode_group' => '9afa806a-6673-11e5-9',
                'email' => $email
            ];
            $this->db->insert('userrole', $data_insert);
            
            $this->db->where('token', $token);
            $data = array(
                    'is_aktif'  => 1,
                    'token'     => 1
                );
            return $this->db->update('usertab', $data);
        }
        else
        {
            return false;
        }
    }

    //model untuk lupa password
    public function do_forgot() {
        $email_forgot = trim(strip_tags($this->input->post("email_forgot")));

        $password = $this->encrypt->hash($this->input->post("passwordRegis"));
        $data = array('password' => $password);
        $this->db->where('email', $email_forgot);
        $this->db->update('usertab', $data);
    }

}
