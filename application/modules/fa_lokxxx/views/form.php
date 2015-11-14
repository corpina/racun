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

			<?php echo form_open(site_url('fa_lokxxx/' . $action),'role="form" class="form-horizontal" id="form_fa_lokxxx" parsley-validate'); ?>               

                <div class="form-group">
                   <label for="NAMA_LOKX" class="col-md-2 control-label">Nama Institusi <span class="required-input">*</span></label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'NAMA_LOKX',
                                 'id'           => 'NAMA_LOKX',                       
                                 'class'        => 'form-control input-md  required',
                                 'placeholder'  => 'Nama Institusi',
                                 'maxlength'=>'50',
								 'required'=>'required'

                                 ),
                                 set_value('NAMA_LOKX',$fa_lokxxx['NAMA_LOKX'])
                           );             
                  ?>
                 <?php echo form_error('NAMA_LOKX');?>
                </div>
              </div> <!--/ NAMA LOKX -->
                          
               <div class="form-group">
                   <label for="ALMT_LOKX" class="col-md-2 control-label">Alamat Institusi <span class="required-input">*</span></label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_textarea(
                                array(
                                 'name'         => 'ALMT_LOKX',
                                 'id'           => 'ALMT_LOKX',                       
                                 'class'        => 'form-control input-md  required',
                                 'placeholder'  => 'Alamat Institusi',
                                 'maxlength'=>'100',
								 'rows'=>'2',
								  'required'=>'required'
                                 ),
                                 set_value('ALMT_LOKX',$fa_lokxxx['ALMT_LOKX'])
                           );             
                  ?>
                 <?php echo form_error('ALMT_LOKX');?>
                </div>
              </div> <!--/ ALMT LOKX -->
                          
               <div class="form-group">
                   <label for="TLPX_LOKX" class="col-md-2 control-label">Telepon Institusi<span class="required-input">*</span></label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'TLPX_LOKX',
                                 'id'           => 'TLPX_LOKX',                       
                                 'class'        => 'form-control input-md  required',
                                 'placeholder'  => 'Telepon Institusi',
                                 'maxlength'=>'25',
								 'required'=>'required'
                                 ),
                                 set_value('TLPX_LOKX',$fa_lokxxx['TLPX_LOKX'])
                           );             
                  ?>
                 <?php echo form_error('TLPX_LOKX');?>
                </div>
              </div> <!--/ TLPX LOKX -->
                          
               <div class="form-group">
                   <label for="FAXX_LOKX" class="col-md-2 control-label">Fax Institusi <span class="required-input">*</span></label>
                <div class="col-md-6">                                   
                  <?php                  
                   echo form_input(
                                array(
                                 'name'         => 'FAXX_LOKX',
                                 'id'           => 'FAXX_LOKX',                       
                                 'class'        => 'form-control input-md',
                                 'placeholder'  => 'Fax Institusi',
                                 'maxlength'=>'25',
								 'required'=>'required',
								 'data-validate-length-range'=>"6",
								 'data-validate-words'=>"2"
                                 ),
                                 set_value('FAXX_LOKX',$fa_lokxxx['FAXX_LOKX'])
                           );             
                  ?>
                 <?php echo form_error('FAXX_LOKX');?>
                </div>
              </div> <!--/ FAXX LOKX -->
               
			   
			   

                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-md-6 col-xs-12 col-md-offset-3">
                        <a href="<?php echo site_url('fa_lokxxx'); ?>" class="btn btn-default">
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








