<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background-color: #0B5A8F;">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="<?= base_url() ?>">Aplikasi SDM</a>
    </div>
    <!-- /.navbar-header -->



    <!--            Navigasi kanan mulai-->
    <div class="navbar-default navbar-static-side" role="navigation" style="background-color: #063250;">
        <!--                style="background-color: #0d5e92;"-->
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="sidebar-search">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                            <button class="btn btn-info" type="button">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                    <!-- /input-group -->
                </li>
                <li>
                    <a href="<?= base_url() ?>"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit fa-fw"></i> Master Data<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?= base_url() ?>master_keahlian">Master Keahlian</a>
                        </li>
                    </ul>
                </li>
                <li ><a href="<?php echo base_url() ?>about">About</a></li>
                <li ><a href="<?php echo base_url(); ?>access/logout"> Keluar Aplikasi</a></li>
            </ul>
            <!-- /#side-menu -->
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>
<?php
/* 
 * Created by Pudyasto Adi Wibowo
 * Email : mr.pudyasto@gmail.com
 * pudyasto.wibowo@gmail.com
 */

