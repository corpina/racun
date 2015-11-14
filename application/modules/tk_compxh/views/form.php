<div class="row">
	<div class="col-lg-12 col-md-12">		
		<?php 
                
                echo create_breadcrumb();		
                echo $this->session->flashdata('notify');
                
                ?>
	</div>
</div><!-- /.row -->

<?php echo form_open(site_url('tk_compxh/' . $action),'role="form" class="form-horizontal" id="form_tk_compxh" parsley-validate'); ?>               
<div class="panel panel-default">
    <div class="panel-heading"><i class="glyphicon glyphicon-signal"></i> </div>
     
      <div class="panel-body">
         
                       
               <div class="form-group">
                   <label for="CODH_LENG" class="col-sm-2 control-label">CODH LENG</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODH_LENG',
                                 'id'           => 'CODH_LENG',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'CODH LENG',
									'required'=>'required'
                                 
                                 ),
                                 set_value('CODH_LENG',$tk_compxh['CODH_LENG'])
                           );             
                  ?>
                 <?php echo form_error('CODH_LENG');?>
                </div>
              </div> <!--/ CODH LENG -->
                          
               <div class="form-group">
                   <label for="CODH_DESC" class="col-sm-2 control-label">CODH DESC</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODH_DESC',
                                 'id'           => 'CODH_DESC',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'CODH DESC',
                                 'maxlength'=>'40',
									'required'=>'required'
                                 ),
                                 set_value('CODH_DESC',$tk_compxh['CODH_DESC'])
                           );             
                  ?>
                 <?php echo form_error('CODH_DESC');?>
                </div>
              </div> <!--/ CODH DESC -->
                          
               <div class="form-group">
                   <label for="CODH_HELP" class="col-sm-2 control-label">CODH HELP</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODH_HELP',
                                 'id'           => 'CODH_HELP',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'CODH HELP',
									'required'=>'required'
                                 
                                 ),
                                 set_value('CODH_HELP',$tk_compxh['CODH_HELP'])
                           );             
                  ?>
                 <?php echo form_error('CODH_HELP');?>
                </div>
              </div> <!--/ CODH HELP -->
                          
               <div class="form-group">
                   <label for="CODH_TYPE" class="col-sm-2 control-label">CODH TYPE</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODH_TYPE',
                                 'id'           => 'CODH_TYPE',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'CODH TYPE',
                                 'maxlength'=>'1',
									'required'=>'required'
                                 ),
                                 set_value('CODH_TYPE',$tk_compxh['CODH_TYPE'])
                           );             
                  ?>
                 <?php echo form_error('CODH_TYPE');?>
                </div>
              </div> <!--/ CODH TYPE -->
                          
               <div class="form-group">
                   <label for="CODH_CHR1" class="col-sm-2 control-label">CODH CHR1</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODH_CHR1',
                                 'id'           => 'CODH_CHR1',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'CODH CHR1',
                                 'maxlength'=>'10',
									'required'=>'required'
                                 ),
                                 set_value('CODH_CHR1',$tk_compxh['CODH_CHR1'])
                           );             
                  ?>
                 <?php echo form_error('CODH_CHR1');?>
                </div>
              </div> <!--/ CODH CHR1 -->
                          
               <div class="form-group">
                   <label for="CODH_CHR2" class="col-sm-2 control-label">CODH CHR2</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODH_CHR2',
                                 'id'           => 'CODH_CHR2',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'CODH CHR2',
                                 'maxlength'=>'10',
									'required'=>'required'
                                 ),
                                 set_value('CODH_CHR2',$tk_compxh['CODH_CHR2'])
                           );             
                  ?>
                 <?php echo form_error('CODH_CHR2');?>
                </div>
              </div> <!--/ CODH CHR2 -->
                          
               <div class="form-group">
                   <label for="CODH_CHR3" class="col-sm-2 control-label">CODH CHR3</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'CODH_CHR3',
                                 'id'           => 'CODH_CHR3',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'CODH CHR3',
                                 'maxlength'=>'10',
									'required'=>'required'
                                 ),
                                 set_value('CODH_CHR3',$tk_compxh['CODH_CHR3'])
                           );             
                  ?>
                 <?php echo form_error('CODH_CHR3');?>
                </div>
              </div> <!--/ CODH CHR3 -->
                          
               <div class="form-group">
                   <label for="TRAN_DATE" class="col-sm-2 control-label">TRAN DATE</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'TRAN_DATE',
                                 'id'           => 'TRAN_DATE',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'TRAN DATE',
									'required'=>'required'
                                 
                                 ),
                                 set_value('TRAN_DATE',$tk_compxh['TRAN_DATE'])
                           );             
                  ?>
                 <?php echo form_error('TRAN_DATE');?>
                </div>
              </div> <!--/ TRAN DATE -->
                          
               <div class="form-group">
                   <label for="TRAN_USID" class="col-sm-2 control-label">TRAN USID</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'TRAN_USID',
                                 'id'           => 'TRAN_USID',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'TRAN USID',
                                 'maxlength'=>'10',
									'required'=>'required'
                                 ),
                                 set_value('TRAN_USID',$tk_compxh['TRAN_USID'])
                           );             
                  ?>
                 <?php echo form_error('TRAN_USID');?>
                </div>
              </div> <!--/ TRAN USID -->
                          
               <div class="form-group">
                   <label for="TRAN_TYPE" class="col-sm-2 control-label">TRAN TYPE</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'TRAN_TYPE',
                                 'id'           => 'TRAN_TYPE',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'TRAN TYPE',
                                 'maxlength'=>'1',
									'required'=>'required'
                                 ),
                                 set_value('TRAN_TYPE',$tk_compxh['TRAN_TYPE'])
                           );             
                  ?>
                 <?php echo form_error('TRAN_TYPE');?>
                </div>
              </div> <!--/ TRAN TYPE -->
                          
               <div class="form-group">
                   <label for="TRAN_COMP" class="col-sm-2 control-label">TRAN COMP</label>
                <div class="col-sm-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'TRAN_COMP',
                                 'id'           => 'TRAN_COMP',                       
                                 'class'        => 'form-control input-sm ',
                                 'placeholder'  => 'TRAN COMP',
                                 'maxlength'=>'10',
									'required'=>'required'
                                 ),
                                 set_value('TRAN_COMP',$tk_compxh['TRAN_COMP'])
                           );             
                  ?>
                 <?php echo form_error('TRAN_COMP');?>
                </div>
              </div> <!--/ TRAN COMP -->
               
           
      </div> <!--/ Panel Body -->
    <div class="panel-footer">   
          <div class="row"> 
              <div class="col-md-10 col-sm-12 col-md-offset-2 col-sm-offset-0">
                   <a href="<?php echo site_url('tk_compxh'); ?>" class="btn btn-default">
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

<script type="text/javascript">
                $(document).ready(function(){
                // binds form submission and fields to the validation engine
                $("#form_tk_compxh").parsley();
                        });</script>