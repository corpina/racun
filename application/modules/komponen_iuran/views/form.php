<div class="row">
    <div class="col-lg-12 col-md-12">		
        <?php
        echo create_breadcrumb();
        echo $this->session->flashdata('notify');
        ?>
    </div>
</div><!-- /.row -->

<?php echo form_open(site_url('jenjang_pend/' . $action), 'role="form" class="form-horizontal" id="form_jenjang_pend" parsley-validate'); ?>               
<div class="panel panel-default">
    <div class="panel-heading"><i class="glyphicon glyphicon-signal"></i> </div>

    <div class="panel-body">


        <div class="form-group">
            <label for="nama_jenjang" class="col-md-2 control-label">Kode Tingkatan</label>
            <div class="col-md-6">                                   
                <?php
                echo form_input(
                        array(
                    'name' => 'kode_jenjang',
                    'id' => 'kode_jenjang',
                    'class' => 'form-control input-md ',
                    'placeholder' => 'Kode Tingkatan Otomatis',
                    'maxlength' => '40',
                    'readonly' => TRUE
                        ), set_value('kode_jenjang', $jenjang_pend['kode_jenjang'])
                );
                ?>
                <?php echo form_error('nama_jenjang'); ?>
            </div>
        </div> <!--/ CODD DESC -->



        <div class="form-group">
            <label for="nama_jenjang" class="col-md-2 control-label">Nama Tingkatan</label>
            <div class="col-md-6">                                   
                <?php
                echo form_input(
                        array(
                    'name' => 'nama_jenjang',
                    'id' => 'nama_jenjang',
                    'class' => 'form-control input-md ',
                    'placeholder' => 'Nama Tingkatan',
                    'maxlength' => '40'
                        ), set_value('nama_jenjang', $jenjang_pend['nama_jenjang'])
                );
                ?>
                <?php echo form_error('kode_jenjang'); ?>
            </div>
        </div> <!--/ Nama tingkatan-->




    </div> <!--/ Panel Body -->
    <div class="panel-footer">   
        <div class="row"> 
            <div class="col-md-10 col-md-12 col-md-offset-2 col-md-offset-0">
                <a href="<?php echo site_url('jenjang_pend'); ?>" class="btn btn-default">
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