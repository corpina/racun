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
                <h2>Form Jenjang Pendidikan</h2>

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
                <?php echo form_open(site_url('jenjang_pend/' . $action), 'role="form" class="form-horizontal" id="form_jenjang_pend" parsley-validate'); ?>
                
                  <div class="form-group">
                      <label for="CODD_DESC" class="col-md-2 control-label">Kode Tingkatan<span class="required-input">*</span></label>
                      <div class="col-md-6">                                   
                          <?php                  
                           echo form_input(
                                        array(
                                         'name'         => 'CODD_VALU',
                                         'id'           => 'CODD_VALU',                       
                                         'class'        => 'form-control input-md ',
                                         'placeholder'  => 'Kode Tingkatan Otomatis',
                                         'maxlength'    =>'40',
                                         'readonly'     =>TRUE
                                         ),
                                         set_value('CODD_VALU',$jenjang_pend['CODD_VALU'])
                                   );             
                          ?>
                         <?php echo form_error('CODD_DESC');?>
                      </div>
                  </div> <!--/ Kode Tingkatan -->
                          
               
               
                  <div class="form-group">
                      <label for="CODD_DESC" class="col-md-2 control-label">Nama Tingkatan<span class="required-input">*</span></label>
                      <div class="col-md-6">                                   
                          <?php                  
                           echo form_input(
                                        array(
                                         'name'         => 'CODD_DESC',
                                         'id'           => 'CODD_DESC',                       
                                         'class'        => 'form-control input-md ',
                                         'placeholder'  => 'Nama Tingkatan',
                                         'maxlength'    =>'40'
                                         ),
                                         set_value('CODD_DESC',$jenjang_pend['CODD_DESC'])
                                   );             
                          ?>
                         <?php echo form_error('CODD_VALU');?>
                      </div>
                  </div> <!--/ Nama tingkatan-->

                <div class="ln_solid"></div>

                <div class="form-group">
                    <div class="col-md-6 col-md-6 col-xs-12 col-md-offset-3">
                        <a href="<?php echo site_url('jenjang_pend'); ?>" class="btn btn-default">
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