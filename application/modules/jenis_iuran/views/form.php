<div class="row">
    <div class="col-lg-12 col-md-12">		
        <?php
        echo create_breadcrumb();
        echo $this->session->flashdata('notify');
        ?>
    </div>
</div><!-- /.row -->

<?php echo form_open(site_url($action), 'role="form" class="form-horizontal" id="form_jenis_iuran" parsley-validate'); ?>               
<div class="panel panel-default">
    <div class="panel-heading"><i class="glyphicon glyphicon-signal"></i> </div>

    <div class="panel-body">



        <div class="col-sm-6">                                   

            <div class="form-group">
                <label  class="col-sm-4 control-label">Kode Iuran</label>
                <div class="col-sm-6">                                   
                    <?php
                    echo form_input(
                            array(
                        'name' => 'kode_iuran',
                        'id' => 'kode_iuran',
                        'class' => 'form-control input-sm ',
                        'placeholder' => 'Kode Iuran Otomatis',
                        'maxlength' => '15',
                        'readonly' => 'readonly'
                            ), set_value('kode_iuran', $jenis_iuran['kode_iuran'])
                    );
                    ?>
                </div>
            </div> <!--/ CODD FLNM -->


            <div class="form-group">
                <label  class="col-md-4 control-label"> Unit Sekolah</label>
                <div class="col-md-6">                                   
                    <?php
                    echo form_dropdown(
                            'kode_unit', $get_sekolah, set_value('kode_unit', $jenis_iuran['kode_unit']), 'class="form-control input-md " required  id="kode_unit"'
                    );
                    ?>
                </div>
            </div> <!--/ KODE LOKX -->



            <div class="form-group">
                <label  class="col-sm-4 control-label">Jenis Iuran</label>
                <div class="col-sm-6">                                   
                    <?php
                    echo form_input(
                            array(
                        'name' => 'nama_iuran',
                        'id' => 'nama_iuran',
                        'class' => 'form-control input-sm ',
                        'placeholder' => 'Jenis Iuran',
                        'maxlength' => '15'
                            ), set_value('nama_iuran', $jenis_iuran['nama_iuran'])
                    );
                    
                  
                    ?>
                    
                </div>
            </div> <!--/ CODD FLNM -->


            <div class="form-group">
                <label  class="col-md-4 control-label"> Group Iuran</label>
                <div class="col-md-6">                                   
                    <?php
                    echo form_dropdown(
                            'kode_group', $get_jenis_iuran, set_value('kode_group', $jenis_iuran['kode_group']), 'class="form-control input-md " required  id="kode_group"'
                    );
                    ?>
                </div>
            </div> <!--/ KODE LOKX -->  


        </div>


        <div class="col-sm-5">                                   


            <div class="form-group">
                <label  class="col-md-4 control-label"> Kas Tujuan</label>
                <div class="col-md-7">                                   
                    <?php
                    echo form_dropdown(
                            'kode_tujuan', $get_kas_tujuan, set_value('kode_tujuan', $jenis_iuran['kode_tujuan']), 'class="form-control input-md " required  id="kode_tujuan"'
                    );
                    ?>
                </div>
            </div> <!--/ KODE LOKX -->


            <div class="form-group">
                <label  class="col-md-4 control-label"> Pendapatan</label>
                <div class="col-md-7">                                   
                    <?php
                    echo form_dropdown(
                            'kode_pendapatan', $get_pendapatan, set_value('kode_pendapatan', $jenis_iuran['kode_pendapatan']), 'class="form-control input-md "  id="kode_pendapatan"'
                    );
                    ?>
                </div>
            </div> <!--/ KODE LOKX -->

            <div class="form-group">
                <label  class="col-md-4 control-label"> Piutang</label>
                <div class="col-md-7">                                   
                    <?php
                    echo form_dropdown(
                            'kode_piutan', $get_piutang, set_value('kode_piutang', $jenis_iuran['kode_piutang']), 'class="form-control input-md "  id="kode_piutang"'
                    );
                    ?>
                </div>
            </div> <!--/ KODE LOKX -->

            <div class="form-group">
                <label  class="col-md-4 control-label"> Terima Dimuka</label>
                <div class="col-md-7">                                   
                    <?php
                    echo form_dropdown(
                            'kode_diterima', $get_terima_dimuka, set_value('kode_diterima', $jenis_iuran['kode_diterima']), 'class="form-control input-md "  id="kode_piutang"'
                    );
                    ?>
                </div>
            </div> <!--/ KODE LOKX -->

        </div>






    </div> <!--/ Panel Body -->
    <div class="panel-footer">   
        <div class="row"> 
            <div class="col-md-10 col-sm-12 col-md-offset-2 col-sm-offset-0">
                <a href="<?php echo site_url('jenis_iuran'); ?>" class="btn btn-default">
                    <i class="glyphicon glyphicon-chevron-left"></i> Kembali
                </a> 
                <button type="submit" class="btn btn-primary" name="post">
                    <i class="glyphicon glyphicon-floppy-save"></i> Simpan 
                </button>                  
            </div>
        </div>
    </div><!--/ Panel Footer -->       
</div><!--/ Panel -->
<?php echo form_close(); ?>  