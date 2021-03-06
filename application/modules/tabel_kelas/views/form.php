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
                <h2>Form Pembuatan Kelas</h2>

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
                <?php echo form_open(site_url('tabel_kelas/' . $action), 'role="form" class="form-horizontal" id="form_tabel_kelas" parsley-validate'); ?>

                <div class="form-group">
                    <label  class="col-md-2 control-label">Unit Sekolah<span class="required-input">*</span></label>
                    <div class="col-md-6">                                   
                        <?php
                        echo form_dropdown(
                                'kode_unit', $get_unit_sekolah, set_value('kode_unit', $tabel_kelas['kode_unit']), 'class="form-control input-md " required  id="kode_unit"'
                        );
                        ?>
                    </div>
                </div> <!--/ kode unit -->

                 <div class="form-group">
                    <label  class="col-md-2 control-label"> Tahun Ajar<span class="required-input">*</span></label>
                    <div class="col-md-6">                                   
                        <?php
                        echo form_dropdown(
                                'thn_ajar', $get_tahun_ajar, set_value('thn_ajar', $tabel_kelas['thn_ajar']), 'class="form-control input-md " required  id="thn_ajar"'
                        );
                        ?>
                    </div>
                </div> <!--/ thn ajar -->

                <div class="form-group">
                    <label  class="col-sm-2 control-label">Tingkatan Kelas<span class="required-input">*</span></label>
                    <div class="col-sm-6">                                   
                        <?php
                        echo form_dropdown(
                                'kode_jenjang', $get_fa_kelas, set_value('kode_jenjang', $tabel_kelas['kode_jenjang']), 'class="form-control input-md " required  id="kode_jenjang"'
                        );
                                        ?>
                    </div>
                </div> <!--/ kode jenjang -->

                <div class="form-group">
                    <label  class="col-sm-2 control-label">Nama Kelas<span class="required-input">*</span></label>
                    <div class="col-sm-6">                                   
                        <?php
                        echo form_input(
                                array(
                            'name'      => 'nama_kelas',
                            'id'        => 'nama_kelas',
                            'class'     => 'form-control input-sm ',
                            'placeholder' => 'Nama Kelas',
                            'maxlength' => '50'
                                ), set_value('nama_kelas', $tabel_kelas['nama_kelas'])
                        );
                        ?>
                    </div>
                </div> <!--/ nama kelas -->

                <div class="ln_solid"></div>

                <div class="form-group">
                    <div class="col-md-6 col-md-6 col-xs-12 col-md-offset-3">
                        <a href="<?php echo site_url('tabel_kelas'); ?>" class="btn btn-default">
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