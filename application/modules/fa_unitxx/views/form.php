<div class="row">
	<div class="col-lg-12 col-md-12">		
		<?php 
                
                echo create_breadcrumb();		
                echo $this->session->flashdata('notify');
                
                ?>
	</div>
</div><!-- /.row -->

<?php echo form_open(site_url('fa_unitxx/' . $action),'role="form" class="form-horizontal" id="form_fa_unitxx" parsley-validate'); ?>               
<div class="panel panel-default">
    <div class="panel-heading"><i class="glyphicon glyphicon-signal"></i> </div>
     
      <div class="panel-body">
         
		 
		 
		   <div class="form-group">
                   <label for="NAMA_UNIT" class="col-md-2 control-label">Kode Unit</label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'KODE_UNIT',
                                 'id'           => 'KODE_UNIT',                       
                                 'class'        => 'form-control input-md ',
                                 'placeholder'  => 'KODE UNIT',
                                 'maxlength'=>'50',
								 'required'=>'required'
                                 ),
                                 set_value('KETX_UNIT',$fa_unitxx['KODE_UNIT'])
                           );             
                  ?>
                 <?php echo form_error('NAMA_UNIT');?>
                </div>
              </div> <!--/ KOde UNIT -->
             
		 
		 
                       
               <div class="form-group">
                   <label for="NAMA_UNIT" class="col-md-2 control-label">Nama Unit</label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'NAMA_UNIT',
                                 'id'           => 'NAMA_UNIT',                       
                                 'class'        => 'form-control input-md ',
                                 'placeholder'  => 'NAMA UNIT',
                                 'maxlength'=>'50',
								 'required'=>'required'
                                 ),
                                 set_value('NAMA_UNIT',$fa_unitxx['NAMA_UNIT'])
                           );             
                  ?>
                 <?php echo form_error('NAMA_UNIT');?>
                </div>
              </div> <!--/ NAMA UNIT -->
                          
               <div class="form-group">
                   <label for="KODE_LOKX" class="col-md-2 control-label">Lokasi Unit</label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_dropdown(
                           'KODE_LOKX',
                           $fa_lokxxx,  
                           set_value('KODE_LOKX',$fa_unitxx['KODE_LOKX']),
                           'class="form-control input-md " required  id="KODE_LOKX"'
						   
                           );             
                  ?>
                 <?php echo form_error('KODE_LOKX');?>
                </div>
              </div> <!--/ KODE LOKX -->
                          
               <div class="form-group">
                   <label for="KETX_UNIT" class="col-md-2 control-label">Keterangan</label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_textarea(
                            array(
                                'id'            =>'KETX_UNIT',
                                'name'          =>'KETX_UNIT',
                                'rows'          =>'3',
                                'class'         =>'form-control input-md ',
                                'placeholder'   =>' Keterangan',
                                'maxlength'=>'100',
								'required'=>'required'
                                ),
                            set_value('KETX_UNIT',$fa_unitxx['KETX_UNIT'])                           
                            );             
                  ?>
                 <?php echo form_error('KETX_UNIT');?>
                </div>
              </div> <!--/ KETX UNIT -->
               
           
      </div> <!--/ Panel Body -->
    <div class="panel-footer">   
          <div class="row"> 
              <div class="col-md-10 col-md-12 col-md-offset-2 col-md-offset-0">
                   <a href="<?php echo site_url('fa_unitxx'); ?>" class="btn btn-default">
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