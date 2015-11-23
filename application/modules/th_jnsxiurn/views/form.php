<div class="row">
	<div class="col-lg-12 col-md-12">		
		<?php 
                
                echo create_breadcrumb();		
                echo $this->session->flashdata('notify');
                
                ?>
	</div>
</div><!-- /.row -->

<?php echo form_open(site_url('th_jnsxiurn/' . $action),'role="form" class="form-horizontal" id="form_th_jnsxiurn" parsley-validate'); ?>               
<div class="panel panel-default">
    <div class="panel-heading"><i class="glyphicon glyphicon-signal"></i> </div>
     
      <div class="panel-body">
	  
	  
	  
	<div class="col-sm-6">                                   
	  
	  <div class="form-group">
                   <label for="CODD_FLNM" class="col-sm-4 control-label">Kode Iuran</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODD_VALU',
                                 'id'           => 'CODD_VALU',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'Kode Iuran Otomatis',
                                 'maxlength'=>'15',
								 'readonly'=>'readonly'
                                 ),
                                 set_value('CODD_VALU',$th_jnsxiurn['CODD_VALU'])
                           );             
                  ?>
                </div>
              </div> <!--/ CODD FLNM -->
         		
         	   
			  <div class="form-group">
                   <label for="KODE_LOKX" class="col-md-4 control-label"> Unit Sekolah</label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_dropdown(
                           'BUSS_CODE',
                           $get_sekolah,  
                           set_value('BUSS_CODE',$th_jnsxiurn['BUSS_CODE']),
                           'class="form-control input-md " required  id="BUSS_CODE"'
						   
                           );             
                  ?>
                </div>
              </div> <!--/ KODE LOKX -->
		


			<div class="form-group">
                   <label for="CODD_FLNM" class="col-sm-4 control-label">Jenis Iuran</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODD_DESC',
                                 'id'           => 'CODD_DESC',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'Jenis Iuran',
                                 'maxlength'=>'15'
                                 ),
                                 set_value('CODD_DESC',$th_jnsxiurn['CODD_DESC'])
                           );             
                  ?>
                </div>
              </div> <!--/ CODD FLNM -->
			  
			  
			  <div class="form-group">
                   <label for="KODE_LOKX" class="col-md-4 control-label"> Group Iuran</label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_dropdown(
                           'CODD_DESC',
                           $get_jenis_iuran,  
                           set_value('CODD_DESC',$th_jnsxiurn['CODD_DESC']),
                           'class="form-control input-md " required  id="CODD_DESC"'
						   
                           );             
                  ?>
                </div>
              </div> <!--/ KODE LOKX -->  
         			
	</div>
	  
	  
	  	<div class="col-sm-5">                                   

			
			  
			  
			  <div class="form-group">
                   <label for="KODE_LOKX" class="col-md-4 control-label"> Pendapatan</label>
                <div class="col-md-7">                                   
                  <?php                  
                   echo form_dropdown(
                           'CODD_VAR1',
                           $get_pendapatan,  
                           set_value('CODD_VAR1',$th_jnsxiurn['CODD_VAR1']),
                           'class="form-control input-md " required  id="CODD_VAR1"'
						   
                           );             
                  ?>
                </div>
              </div> <!--/ KODE LOKX -->
			  
			  <div class="form-group">
                   <label for="KODE_LOKX" class="col-md-4 control-label"> Piutang</label>
                <div class="col-md-7">                                   
                  <?php                  
                   echo form_dropdown(
                           'CODD_CHR2',
                           $get_piutang,  
                           set_value('CODD_CHR2',$th_jnsxiurn['CODD_CHR2']),
                           'class="form-control input-md " required  id="CODD_CHR2"'
						   
                           );             
                  ?>
                </div>
              </div> <!--/ KODE LOKX -->
			  
			   <div class="form-group">
                   <label for="KODE_LOKX" class="col-md-4 control-label"> Terima Dimuka</label>
                <div class="col-md-7">                                   
                  <?php                  
                   echo form_dropdown(
                           'CODD_CHR5',
                           $get_terima_dimuka,  
                           set_value('CODD_CHR5',$th_jnsxiurn['CODD_CHR5']),
                           'class="form-control input-md " required  id="CODD_CHR2"'
						   
                           );             
                  ?>
                </div>
              </div> <!--/ KODE LOKX -->
			  
		</div>
	  
	  
	  
	  
	  
           
      </div> <!--/ Panel Body -->
    <div class="panel-footer">   
          <div class="row"> 
              <div class="col-md-10 col-sm-12 col-md-offset-2 col-sm-offset-0">
                   <a href="<?php echo site_url('th_jnsxiurn'); ?>" class="btn btn-default">
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