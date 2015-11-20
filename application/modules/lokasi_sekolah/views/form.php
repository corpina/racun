<div class="row">
    <div class="col-lg-12 col-md-12">		
        <?php
        echo create_breadcrumb();
        echo $this->session->flashdata('notify');
        ?>
    </div>
</div><!-- /.row -->


<div class="row">
    <div class="col-md-12 col-md-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Form Lokasi  </h2>
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
            </div>
            <div class="x_content">

                <?php echo form_open(site_url('lokasi_sekolah/' . $action), 'role="form" class="form-horizontal" id="form_lokasi_sekolah" parsley-validate'); ?>               

                <div class="form-group">
                    <label for="nama_lokasi" class="col-md-2 control-label">Nama Institusi <span class="required-input">*</span></label>
                    <div class="col-md-6">                                   
                        <?php
                        echo form_input(
                                array(
                            'name' => 'nama_lokasi',
                            'id' => 'nama_lokasi',
                            'class' => 'form-control input-md  required',
                            'placeholder' => 'Nama Institusi',
                            'maxlength' => '50',
                            'required' => 'required'
                                ), set_value('nama_lokasi', $lokasi_sekolah['nama_lokasi'])
                        );
                        ?>
                    </div>
                </div> <!--/ NAMA LOKX -->

                <div class="form-group">
                    <label for="alamat_lokasi" class="col-md-2 control-label">Alamat Institusi <span class="required-input">*</span></label>
                    <div class="col-md-6">                                   
                        <?php
                        echo form_textarea(
                                array(
                            'name' => 'alamat_lokasi',
                            'id' => 'alamat_lokasi',
                            'class' => 'form-control input-md  required',
                            'placeholder' => 'Alamat Institusi',
                            'maxlength' => '100',
                            'rows' => '2',
                            'required' => 'required'
                                ), set_value('alamat_lokasi', $lokasi_sekolah['alamat_lokasi'])
                        );
                        ?>
                    </div>
                </div> <!--/ ALMT LOKX -->

                <div class="form-group">
                    <label for="telepon_lokasi" class="col-md-2 control-label">Telepon Institusi<span class="required-input">*</span></label>
                    <div class="col-md-6">                                   
                        <?php
                        echo form_input(
                                array(
                            'name' => 'telepon_lokasi',
                            'id' => 'telepon_lokasi',
                            'class' => 'form-control input-md  required',
                            'placeholder' => 'Telepon Institusi',
                            'maxlength' => '25',
                            'required' => 'required'
                                ), set_value('telepon_lokasi', $lokasi_sekolah['telepon_lokasi'])
                        );
                        ?>
                    </div>
                </div> <!--/ TLPX LOKX -->

                <div class="form-group">
                    <label for="fax_lokasi" class="col-md-2 control-label">Fax Institusi <span class="required-input">*</span></label>
                    <div class="col-md-6">                                   
                        <?php
                        echo form_input(
                                array(
                            'name' => 'fax_lokasi',
                            'id' => 'fax_lokasi',
                            'class' => 'form-control input-md',
                            'placeholder' => 'Fax Institusi',
                            'maxlength' => '25',
                            'required' => 'required',
                            'data-validate-length-range' => "6",
                            'data-validate-words' => "2"
                                ), set_value('fax_lokasi', $lokasi_sekolah['fax_lokasi'])
                        );
                        ?>
                    </div>
                </div> <!--/ FAXX LOKX -->




                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-md-6 col-xs-12 col-md-offset-3">
                        <a href="<?php echo site_url('lokasi_sekolah'); ?>" class="btn btn-default">
                            <i class="glyphicon glyphicon-chevron-left"></i> Kembali
                        </a> 
                        <button type="submit" class="btn btn-success"><i class="glyphicon glyphicon-floppy-save"></i> Simpan </button>
                    </div>
                </div>

                <?php echo form_close(); ?>  
            </div>
        </div>
    </div>
</div>






<script>
    $("input[name='telepon_lokasi']").on("keypress", function (event) {
        var regex = /[0-9]/g;
        var key = String.fromCharCode(event.which);
        if (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode == 39 || regex.test(key)) {
            return true;
        }
        alert("harus angka");
        return false;
    });
    
     $("input[name='fax_lokasi']").on("keypress", function (event) {
        var regex = /[0-9]/g;
        var key = String.fromCharCode(event.which);
        if (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode == 39 || regex.test(key)) {
            return true;
        }
        alert("harus angka");
        return false;
    });

</script>

