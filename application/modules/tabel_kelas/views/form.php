<div class="row">
    <div class="col-lg-12 col-md-12">		
        <?php
        echo create_breadcrumb();
        echo $this->session->flashdata('notify');
        ?>
    </div>
</div><!-- /.row -->

<?php echo form_open(site_url($action), 'role="form" class="form-horizontal" id="form_tabel_kelas" parsley-validate'); ?>               
<div class="panel panel-default">
    <div class="panel-heading"><i class="glyphicon glyphicon-signal"></i> </div>

    <div class="panel-body">


        <div class="form-group">
            <label  class="col-md-2 control-label">Unit Sekolah</label>
            <div class="col-md-6">                                   
                <?php
                echo form_dropdown(
                        'kode_unit', $get_unit_sekolah, set_value('kode_unit', $tabel_kelas['kode_unit']), 'class="form-control input-md " required  id="kode_unit"'
                );
                ?>
            </div>
        </div> <!--/ KODE LOKX -->




        <div class="form-group">
            <label  class="col-md-2 control-label"> Tahun Ajar</label>
            <div class="col-md-6">                                   
                <?php
                echo form_dropdown(
                        'thn_ajar', $get_tahun_ajar, set_value('thn_ajar', $tabel_kelas['thn_ajar']), 'class="form-control input-md " required  id="thn_ajar"'
                );
                ?>
            </div>
        </div> <!--/ KODE LOKX -->




        <div class="form-group">
            <label  class="col-sm-2 control-label">Tingkatan Kelas</label>
            <div class="col-sm-6">                                   
                <?php
                echo form_dropdown(
                        'tingkatan_kelas', $get_fa_kelas, set_value('tingkatan_kelas', $tabel_kelas['tingkatan_kelas']), 'class="form-control input-md " required  id="tingkatan_kelas"'
                );
                                ?>
            </div>
        </div> <!--/ NAMA KLSX -->



        <div class="form-group">
            <label  class="col-sm-2 control-label">Nama Kelas</label>
            <div class="col-sm-6">                                   
                <?php
                echo form_input(
                        array(
                    'name' => 'nama_kelas',
                    'id' => 'nama_kelas',
                    'class' => 'form-control input-sm ',
                    'placeholder' => 'Nama Kelas',
                    'maxlength' => '50'
                        ), set_value('nama_kelas', $tabel_kelas['nama_kelas'])
                );
                ?>
            </div>
        </div> <!--/ NAMA KLSX -->


    </div> <!--/ Panel Body -->
    <div class="panel-footer">   
        <div class="row"> 
            <div class="col-md-10 col-sm-12 col-md-offset-2 col-sm-offset-0">
                <a href="<?php echo site_url('tabel_kelas'); ?>" class="btn btn-default">
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