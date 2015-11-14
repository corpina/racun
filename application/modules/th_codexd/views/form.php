<div class="row">
	<div class="col-lg-12 col-md-12">		
		<?php 
                
                echo create_breadcrumb();		
                echo $this->session->flashdata('notify');
                
                ?>
	</div>
</div><!-- /.row -->

<?php echo form_open(site_url('th_codexd/' . $action),'role="form" class="form-horizontal" id="form_th_codexd" parsley-validate'); ?>               
<div class="panel panel-default">
    <div class="panel-heading"><i class="glyphicon glyphicon-signal"></i> </div>
     
      <div class="panel-body">
         
                       
               <div class="form-group">
                   <label for="CODD_DESC" class="col-md-2 control-label">Kode Tingkatan</label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODD_VALU',
                                 'id'           => 'CODD_VALU',                       
                                 'class'        => 'form-control input-md ',
                                 'placeholder'  => 'Kode Tingkatan Otomatis',
                                 'maxlength'=>'40',
								 'readonly'=>TRUE
                                 ),
                                 set_value('CODD_VALU',$th_codexd['CODD_VALU'])
                           );             
                  ?>
                 <?php echo form_error('CODD_DESC');?>
                </div>
              </div> <!--/ CODD DESC -->
                          
               
			   
               <div class="form-group">
                   <label for="CODD_DESC" class="col-md-2 control-label">Nama Tingkatan</label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODD_DESC',
                                 'id'           => 'CODD_DESC',                       
                                 'class'        => 'form-control input-md ',
                                 'placeholder'  => 'Nama Tingkatan',
                                 'maxlength'=>'40'
                                 ),
                                 set_value('CODD_DESC',$th_codexd['CODD_DESC'])
                           );             
                  ?>
                 <?php echo form_error('CODD_VALU');?>
                </div>
              </div> <!--/ Nama tingkatan-->
                          
			   
               
           
      </div> <!--/ Panel Body -->
    <div class="panel-footer">   
          <div class="row"> 
              <div class="col-md-10 col-md-12 col-md-offset-2 col-md-offset-0">
                   <a href="<?php echo site_url('th_codexd'); ?>" class="btn btn-default">
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