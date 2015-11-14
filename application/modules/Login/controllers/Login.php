<?php

/**

 * @created on : Tuesday, 19-sept-2015 
 * @author Arief Manggala Putra <manggala.corp@gmail.com>
 * Copyright 2015
 *
 *
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class login extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('encrypt');
        $this->load->model('m_login', 'login');
        $this->load->library('template');
    }

// load form_login
    public function index() {


        //$this->load->view('form_login');
        $data['title'] = "Dashboard";
        $this->template->display("dashboard", $data);
    }

// function login  jika benar ke halaman dashboard jika salah kembali ke form login


    public function doLoginUser() {
        $email = trim(strip_tags($this->input->post('email')));
        $password = $this->input->post('password');
        $remember = trim(strip_tags($this->input->post('remember_me')));
        $pass = $this->encrypt->hash($password);



        if ($this->agent->is_browser()) {
            $agent = $this->agent->browser() . ' ' . $this->agent->version();
        } elseif ($this->agent->is_robot()) {
            $agent = $this->agent->robot();
        } elseif ($this->agent->is_mobile()) {
            $agent = $this->agent->mobile();
        } else {
            $agent = 'Unidentified User Agent';
        }
        $cek = $this->validasi_login($email, $pass);


        if ($cek == FALSE) {
//redirect("login");            

            $this->session->set_flashdata('valid', 'Maaf Email dan Password Salah');
            //redirect("login");
            echo "no";
        } else {
            if ($remember != NULL) {
                setcookie('email', base64_encode($email), time() + (86400 * 30), "/");
                setcookie('password', base64_encode($pass), time() + (86400 * 30), "/");
            }

            //$call = $this->db->query("call user_log('$email','" . gethostbyaddr($_SERVER['REMOTE_ADDR']) . "','" . $this->input->ip_address() . "','" . $this->agent->platform() . "','" . $agent . "','1')");

            $this->session->set_userdata('nama_lengkap', $cek['nama_lengkap']);
            $this->session->set_userdata('email', $cek['email']);
//redirect("login/dashboard");
            echo "ok";
            //redirect("login/dashboard");
        }
    }

    public function doLogin() {
        $email = trim(strip_tags($this->input->post('email')));
        $password = $this->input->post('password');
        $remember = trim(strip_tags($this->input->post('remember_me')));
        $pass = $this->encrypt->hash($password);


        if ($this->agent->is_browser()) {
            $agent = $this->agent->browser() . ' ' . $this->agent->version();
        } elseif ($this->agent->is_robot()) {
            $agent = $this->agent->robot();
        } elseif ($this->agent->is_mobile()) {
            $agent = $this->agent->mobile();
        } else {
            $agent = 'Unidentified User Agent';
        }
        $cek = $this->validasi_login($email, $pass);


        if ($cek == FALSE) {
//redirect("login");            

            $this->session->set_flashdata('valid', 'Maaf Email dan Password Salah');
            redirect("login");
            //echo "no";
        } else {
            if ($remember != NULL) {
                setcookie('email', base64_encode($email), time() + (86400 * 30), "/");
                setcookie('password', base64_encode($pass), time() + (86400 * 30), "/");
            }

            //$call = $this->db->query("call user_log('$email','" . gethostbyaddr($_SERVER['REMOTE_ADDR']) . "','" . $this->input->ip_address() . "','" . $this->agent->platform() . "','" . $agent . "','1')");

            $this->session->set_userdata('nama_lengkap', $cek['nama_lengkap']);
            $this->session->set_userdata('email', $cek['email']);
            $this->session->set_userdata('kode_group', $cek['kode_group']);

            //echo "ok";
            redirect("login/dashboard");
        }
    }

// function validation login 
    public function validasi_login($email, $password) {

//call prosedur
        $rs = $this->login->doLogin($email, $password);
        //var_dump($rs->num_rows());
// cek apakah data ada di database
        if ($rs->num_rows() > 0) {

// foreach data yg ada di database dan input di variable
            foreach ($rs->result() as $d) {
                $nama_lengkap = $d->nama_lengkap;
                $email = $d->email;
                $kode_group = $d->kode_group;
            }
            $data = array('nama_lengkap' => $nama_lengkap, 'email' => $email, 'kode_group' => $kode_group);
            return $data;
        }
    }

//function logout
    public function doLogout() {
        $this->login->update_login();
        $email = $this->session->userdata('email');

        if ($this->agent->is_browser()) {
            $agent = $this->agent->browser() . ' ' . $this->agent->version();
        } elseif ($this->agent->is_robot()) {
            $agent = $this->agent->robot();
        } elseif ($this->agent->is_mobile()) {
            $agent = $this->agent->mobile();
        } else {
            $agent = 'Unidentified User Agent';
        }
        // $call = $this->db->query("call user_log('$email','" . gethostbyaddr($_SERVER['REMOTE_ADDR']) . "','" . $this->input->ip_address() . "','" . $this->agent->platform() . "','" . $agent . "','0')");

        setcookie("email", "", time() - 3600);
        setcookie("password", "", time() - 3600);
        delete_cookie("email");
        delete_cookie("password");
        $this->session->unset_userdata('email');
        session_destroy();

        redirect('login');
    }

// function dashboard untuk mengarahkan ke view dashboar
///form registrasi
    public function register() {
        $this->load->view("register");
    }

//form forgot password
    public function forget() {
        $this->load->view("forget");
    }

//kirim email untuk registrasi
    function doRegistrasi() {
        if (count($this->login->doRegis()) != 0) {
            $this->load->library('email');
            $email = trim(strip_tags($this->input->post('emailRegis')));
            $nomor_ktp = trim(strip_tags($this->input->post("nik")));
            //$mail = base64_encode($email);
            //$url = urlencode($mail);
            $token = $this->encrypt->hash($email . $nomor_ktp);

            $config = array();
            $config['charset'] = 'utf-8';
            $config['useragent'] = 'Codeigniter';
            $config['protocol'] = "smtp";
            $config['mailtype'] = "html";
            $config['smtp_host'] = "ssl://smtp.gmail.com";
            $config['smtp_port'] = "465";
            $config['smtp_timeout'] = "5";
            $config['smtp_user'] = "eproc.icon@gmail.com";
            $config['smtp_pass'] = "iconpln.co.id";
            $config['crlf'] = "\r\n";
            $config['newline'] = "\r\n";
            $config['wordwrap'] = TRUE;

            $this->email->initialize($config);
            $this->email->from('manggala.corp@gmail.com', 'Admin eRekruitment');
            $this->email->to($this->input->post('emailRegis'));

            $this->email->subject('Konfirmasi Pendaftaran');
            $this->email->message('Kepada Yth. Pemilik ' . $this->input->post('emailRegis') . '<br><br>
                            di<br>
                            Tempat<br><br>

                            Terimakasih telah mendaftar menjadi pelamar di aplikasi kami. <br>
                            untuk tindakan selanjutnya kami mohon Bapak/Ibu dapat mengklik atau menyalin (copy) alamat link dibawah ini kedalam web browser:<br></br> 
                            <a href="http://10.14.152.187:7003/SDM/login/proses_registrasi/' . $token . '" >Silakan klik link ini untuk melanjutkan pendaftaran</a><br><br>

                            Jika link di atas tidak muncul silakan copy link di bawah ini<br><br>

                            http://10.14.152.187:7003/SDM/login/proses_registrasi/' . $token . '


                            <br><br>dan paste ke web browser Anda.<br><br>

                            Demikian penjelasan kami, atas perhatian dan kerjasama yang baik diucapkan terima kasih.<br><br>

                            Hormat kami,<br>
                            Admin eRekruitment 
                            ');

            if ($this->input->post('emailRegis')) {
                if ($this->email->send()) {
                    $this->session->set_flashdata("valid2", "Silahkan Cek Email Anda Untuk Verifikasi!");
                    $data = [];
                    $this->template->display_user('home/index', $data);
                } else {
                    $this->session->set_flashdata("valid2", "Gagal Kirim Email!");
                    $data = [];
                    $this->template->display_user('home/index', $data);
                }
            }
        }
    }

    public function dashboard() {
//if not session , controller redirect on login
        if (!$this->session->userdata("email")) {
            redirect('login');
        }
        $data['title'] = "Dashboard";
        $this->template->display("dashboard", $data);
    }

//function untuk cek email
    public function cekEmail() {
        $emailRegis = trim(strip_tags($this->input->post("emailRegis")));

        $this->db->where('email', $emailRegis);
        $result = $this->db->get('usertab');
        if ($result->num_rows() == 1) {
            echo "1";
        } else {
            echo "0";
        }
    }

// proses registrasi
    public function proses_registrasi($token) {

        if ($this->login->proses_registrasi($token)) {
//            $this->load->view("form_login");
            //TODO : ganti ke halaman home
            $data['title'] = '';
            $data['open_login'] = '';
            $this->session->set_flashdata('valid2', 'akun anda sudah aktif, silahkan login');
            $this->template->display_user('home/index', $data);
        } else {
            //tampilkan link tidak aktif
            $data['title'] = '';
            $data['open_login'] = '';
            $this->session->set_flashdata('valid2', 'link tidak aktif');
            $this->template->display_user('home/index', $data);
        }
    }

//form forgot password
    public function forgot_password() {
        $this->load->view("forgot_password");
    }

//kirim email untuk forgot password
    public function kirim_forgot() {
        $this->load->library('email');

        $email = $this->input->post('email');
        $query = $this->db->get_where("usertab", array('email' => $email))->num_rows();

        if ($query > 0) {
            $email = $this->input->post('email');
            $mail = base64_encode($email);
            $url = urlencode($mail);

            $config = array();
            $config['charset'] = 'utf-8';
            $config['useragent'] = 'Codeigniter';
            $config['protocol'] = "smtp";
            $config['mailtype'] = "html";
            $config['smtp_host'] = "ssl://smtp.gmail.com";
            $config['smtp_port'] = "465";
            $config['smtp_timeout'] = "5";
            $config['smtp_user'] = "eproc.icon@gmail.com";
            $config['smtp_pass'] = "iconpln.co.id";
            $config['crlf'] = "\r\n";
            $config['newline'] = "\r\n";
            $config['wordwrap'] = TRUE;

            $this->email->initialize($config);
            $this->email->from('manggala.corp@gmail.com', 'Admin eRekruitment');
            $this->email->to($this->input->post('email'));

            $this->email->subject('Lupa Password');
            $this->email->message('Kepada Yth. Pemilik ' . $this->input->post('email') . '<br><br>
				di<br>
				Tempat<br><br>
				 
				<a href="http://10.14.152.187:7003/SDM/login/form_forgot/' . $url . '" >Silakan klik link ini untuk merubah password</a><br><br>
							
				Jika link di atas tidak muncul silakan copy link di bawah ini<br><br>
				
				http://10.14.152.187:7003/SDM/login/form_forgot/' . $url . '
				
				
				<br><br>dan paste ke web browser Anda.<br><br>
				
				Demikian penjelasan kami, atas perhatian dan kerjasama yang baik diucapkan terima kasih.<br><br>
				
				Hormat kami,<br>
				Admin eRekruitment 
				');

            if ($this->input->post('email')) {
                if ($this->email->send()) {
                    //$this->session->set_flashdata("valid3", "Silahkan Cek Email Anda!");
                    echo "Ok";
                    //redirect("basic_information");
                } else {
                    //  $this->session->set_flashdata("valid3", "Gagal Kirim Email!");
                    echo "No";
                    //redirect("basic_information");
                }
            }
        } else {
            $this->session->set_flashdata("valid_email", "Maaf Email Belum Terdaftar");
            echo "No";
            //redirect("basic_information");
        }
    }

    public function form_forgot($email_forgot) {

        $email = base64_decode(urldecode($email_forgot));
        $query = $this->db->get_where("usertab", array('email' => $email))->row();
        $data = array('last_password_change' => date('Y-m-d'));
        $this->db->where('email', $email);
        $this->db->update('usertab', $data);

        $date = date('Y-m-d');

        if ($query->last_password_change == $date) {
            $this->load->view("warning_form");
        } else {
            $data['mail'] = $email;
            $this->load->view("form_forgot", $data);
            //$this->load->view("warning_form");
        }
    }

    public function do_forgot() {

        $this->login->do_forgot();
        $this->session->set_flashdata("valid3", "Berhasil Rubah Password!");
        redirect("login");
    }

}
