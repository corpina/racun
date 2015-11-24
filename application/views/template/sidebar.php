
</head>
<body class="nav-md">

    <div class="container body">


        <div class="main_container">

            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">

                    <div class="navbar nav_title" style="border: 0;">
                        <a href="index.html" class="site_title"><i class="fa fa-home"></i> <span>SIA </span></a>
                    </div>
                    <div class="clearfix"></div>

                    <!-- menu prile quick info -->
                    <div class="profile">
                        <!--
                        <div class="profile_pic">
                            <img src="" alt="..." class="img-circle profile_img">
                        </div>
                        <!--
                        <div class="profile_info">
                            <span>Welcome,</span>
                            <h2>Admin</h2>
                        </div>-->
                    </div>
                    <!-- /menu prile quick info -->

                    <br />
                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                            <h3>General</h3>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-home"></i> Manajemen <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="<?= base_url() ?>tahun_ajar">Tahun Ajar</a>
                                        </li>
                                        <li><a href="<?= base_url() ?>lokasi_sekolah"> Lokasi</a></li>
                                        <li><a href="<?= base_url() ?>unit_sekolah"> Unit</a></li>
                                        <li><a href="<?= base_url() ?>jenjang_pend"> Pembuatan Jenjang </a></li>
                                        <li><a href="<?= base_url() ?>tabel_kelas"> Pembuatan Kelas</a></li>
                                </li>
                            </ul>
                            </li>

                            <li><a><i class="fa fa-home"></i> Keuangan <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu" style="display: none">

                                    <li><a href="<?= base_url() ?>master_iuran"> Master Iuran</a></li>
                                    <li><a href="<?= base_url() ?>jenis_iuran">Jenis Iuran Siswa</a></li>
                                    <li><a href="<?= base_url() ?>komponen_iuran">Komponen Iuran Siswa</a></li>

                            </li>
                            </ul>
                            </li>
                            <!--
<li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
<ul class="nav child_menu" style="display: none">
    <li><a href="form.html">General Form</a>
    </li>
    <li><a href="form_advanced.html">Advanced Components</a>
    </li>
    <li><a href="form_validation.html">Form Validation</a>
    </li>
    <li><a href="form_wizards.html">Form Wizard</a>
    </li>
    <li><a href="form_upload.html">Form Upload</a>
    </li>
    <li><a href="form_buttons.html">Form Buttons</a>
    </li>
</ul>
</li>
                            -->
                            </ul>
                        </div>

                    </div>
                    <!-- /sidebar menu -->

                </div>
            </div>

            <!-- top navigation -->
            <div class="top_nav">

                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        <ul class="nav navbar-nav navbar-right">
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <img src="images/img.jpg" alt=""> Arief Manggala Putra
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    <li><a href="javascript:;">  Profile</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="badge bg-red pull-right">50%</span>
                                            <span>Settings</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">Help</a>
                                    </li>
                                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                                    </li>
                                </ul>
                            </li>

                            <li role="presentation" class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="badge bg-green">6</span>
                                </a>
                                <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                                    <li>
                                        <a>
                                            <span class="image">
                                                <img src="images/img.jpg" alt="Profile Image" />
                                            </span>
                                            <span>
                                                <span>John Smith</span>
                                                <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                                Film festivals used to be do-or-die moments for movie makers. They were where... 
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                                <img src="images/img.jpg" alt="Profile Image" />
                                            </span>
                                            <span>
                                                <span>John Smith</span>
                                                <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                                Film festivals used to be do-or-die moments for movie makers. They were where... 
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                                <img src="images/img.jpg" alt="Profile Image" />
                                            </span>
                                            <span>
                                                <span>John Smith</span>
                                                <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                                Film festivals used to be do-or-die moments for movie makers. They were where... 
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                                <img src="images/img.jpg" alt="Profile Image" />
                                            </span>
                                            <span>
                                                <span>John Smith</span>
                                                <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                                Film festivals used to be do-or-die moments for movie makers. They were where... 
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="text-center">
                                            <a>
                                                <strong><a href="inbox.html">See All Alerts</strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </nav>
                </div>

            </div>
            <!-- /top navigation -->
