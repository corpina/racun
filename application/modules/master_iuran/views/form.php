<div class="row">
    <div class="col-lg-12 col-md-12">		
        <?php
        echo create_breadcrumb();
        echo $this->session->flashdata('notify');
        ?>
    </div>
</div><!-- /.row -->

<!-- form input -->
<div class="row">
    <div class="col-md-12 col-md-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Form Master Iuran</h2>

                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Settings 1</a>
                            </li>
                            <li><a href="#">Settings 2</a>
                            </li>
                        </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>

                <div class="clearfix"></div>
            </div><!-- end x_title -->

            <div class="x_content">
                <?php echo form_open(site_url('master_iuran/' . $action), 'role="form" class="form-horizontal" id="form_master_iuran" parsley-validate'); ?>

                <div class="form-group">
                    <label for="kode_iuran" class="col-md-2 control-label">Kode Iuran</label>
                    <div class="col-md-6">                                   
                        <?php
                        echo form_input(
                                array(
                                    'name'      => 'kode_iuran',
                                    'id'        => 'kode_iuran',
                                    'class'     => 'form-control input-md ',
                                    'placeholder' => 'Kode Iuran Otomatis',
                                    'maxlength' => '40',
                                    'readonly'  => TRUE
                                ), set_value('kode_iuran', $master_iuran['kode_iuran'])
                        );
                        ?>
                    </div>
                </div><!-- kode iuran -->

                <div class="form-group">
                    <label for="nama_iuran" class="col-md-2 control-label">Nama Iuran</label>
                    <div class="col-md-6">                                   
                        <?php
                        echo form_input(
                                array(
                                    'name'      => 'nama_iuran',
                                    'id'        => 'nama_iuran',
                                    'class'     => 'form-control input-md ',
                                    'placeholder' => 'Nama Iuran',
                                    'maxlength' => '40'
                                ), set_value('nama_iuran', $master_iuran['nama_iuran'])
                        );
                        ?>
                    </div>
                </div><!-- nama iuran -->

                <div class="ln_solid"></div>

                <div class="form-group">
                    <div class="col-md-6 col-md-6 col-xs-12 col-md-offset-3">
                        <a href="<?php echo site_url('master_iuran'); ?>" class="btn btn-default">
                            <i class="glyphicon glyphicon-chevron-left"></i> Kembali
                        </a> 
                        <button type="submit" class="btn btn-success" name="post"><i class="glyphicon glyphicon-floppy-save"></i> Simpan </button>
                    </div>
                </div>

                <?php echo form_close(); ?>
            </div><!-- end x_content -->

        </div><!--end x_panel -->
    </div>
</div><!-- end row form input -->



<!--
<?php echo form_open(site_url('master_iuran/' . $action), 'role="form" class="form-horizontal" id="form_master_iuran" parsley-validate'); ?>               
<div class="panel panel-default">
    <div class="panel-heading"><i class="glyphicon glyphicon-signal"></i> </div>

    <div class="panel-body">


        <div class="form-group">
            <label for="nama_iuran" class="col-md-2 control-label">Kode Iuran</label>
            <div class="col-md-6">                                   
                <?php
                echo form_input(
                        array(
                    'name' => 'kode_iuran',
                    'id' => 'kode_iuran',
                    'class' => 'form-control input-md ',
                    'placeholder' => 'Kode Iuran Otomatis',
                    'maxlength' => '40',
                    'readonly' => TRUE
                        ), set_value('kode_iuran', $master_iuran['kode_iuran'])
                );
                ?>
            </div>
        </div> <!--/ CODD DESC -->


<!--
        <div class="form-group">
            <label for="nama_iuran" class="col-md-2 control-label">Nama Iuran</label>
            <div class="col-md-6">                                   
                <?php
                echo form_input(
                        array(
                    'name' => 'nama_iuran',
                    'id' => 'nama_iuran',
                    'class' => 'form-control input-md ',
                    'placeholder' => 'Nama Iuran',
                    'maxlength' => '40'
                        ), set_value('nama_iuran', $master_iuran['nama_iuran'])
                );
                ?>
            </div>
        </div> <!--/ Nama Iuran-->


<!--

    </div> <!--/ Panel Body 
    <div class="panel-footer">   
        <div class="row"> 
            <div class="col-md-10 col-md-12 col-md-offset-2 col-md-offset-0">
                <a href="<?php echo site_url('master_iuran'); ?>" class="btn btn-default">
                    <i class="glyphicon glyphicon-chevron-left"></i> Kembali
                </a> 
                <button type="submit" class="btn btn-primary" name="post">
                    <i class="glyphicon glyphicon-floppy-save"></i> Simpan 
                </button>                  
            </div>
        </div>
    </div><!--/ Panel Footer -->       
</div><!--/ Panel 
<?php echo form_close(); ?>  