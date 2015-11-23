<div class="row">
	<div class="col-lg-12 col-md-12">		
		<?php 
                
                echo create_breadcrumb();		
                echo $this->session->flashdata('notify');
                
                ?>
	</div>
</div><!-- /.row -->

<?php echo form_open(site_url('th_mkelas/' . $action),'role="form" class="form-horizontal" id="form_th_mkelas" parsley-validate'); ?>               
<div class="panel panel-default">
    <div class="panel-heading"><i class="glyphicon glyphicon-signal"></i> </div>
     
      <div class="panel-body">
         
		 
		 <div class="form-group">
                   <label for="KODE_LOKX" class="col-md-2 control-label">Unit Sekolah</label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_dropdown(
                           'BUSS_CODE',
                           $fa_unitxxs,  
                           set_value('BUSS_CODE',$th_mkelas['BUSS_CODE']),
                           'class="form-control input-md " required  id="BUSS_CODE"'				   
                           );             
                  ?>
                 <?php echo form_error('KODE_LOKX');?>
                </div>
              </div> <!--/ KODE LOKX -->
               
			   
			   
			   
		 <div class="form-group">
                   <label for="KODE_LOKX" class="col-md-2 control-label"> Tahun Ajar</label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_dropdown(
                           'THNX_AJAR',
                           $tb_descthnajar,  
                           set_value('THNX_AJAR',$th_mkelas['THNX_AJAR']),
                           'class="form-control input-md " required  id="THNX_AJAR"'
						   
                           );             
                  ?>
                 <?php echo form_error('KODE_LOKX');?>
                </div>
              </div> <!--/ KODE LOKX -->
               
			   
		 
                          
               <div class="form-group">
                   <label for="NAMA_KLSX" class="col-sm-2 control-label">Tingkatan Kelas</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_dropdown(
                           'TKTX_KLSX',
                           $get_fa_kelas,  
                           set_value('TKTX_KLSX',$th_mkelas['TKTX_KLSX']),
                           'class="form-control input-md " required  id="TKTX_KLSX"'
						   
                           );             
                  ?>
                 <?php echo form_error('KODE_LOKX');?>
                </div>
              </div> <!--/ NAMA KLSX -->
                          
               
			   
			    <div class="form-group">
                   <label for="NAMA_KLSX" class="col-sm-2 control-label">Nama Kelas</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'NAMA_KLSX',
                                 'id'           => 'NAMA_KLSX',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'NAMA KLSX',
                                 'maxlength'=>'50'
                                 ),
                                 set_value('NAMA_KLSX',$th_mkelas['NAMA_KLSX'])
                           );             
                  ?>
                 <?php echo form_error('NAMA_KLSX');?>
                </div>
              </div> <!--/ NAMA KLSX -->
                          
           
      </div> <!--/ Panel Body -->
    <div class="panel-footer">   
          <div class="row"> 
              <div class="col-md-10 col-sm-12 col-md-offset-2 col-sm-offset-0">
                   <a href="<?php echo site_url('th_mkelas'); ?>" class="btn btn-default">
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