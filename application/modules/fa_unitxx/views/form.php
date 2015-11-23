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
                <h2>Form Unit  </h2>

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
                <?php echo form_open(site_url('fa_unitxx/' . $action),'role="form" class="form-horizontal" id="form_fa_unitxx" parsley-validate'); ?>

                    <div class="form-group">
                        <label for="KODE_UNIT" class="col-md-2 control-label">Kode Unit <span class="required-input">*</span></label>
                        <div class="col-md-6">

                            <?php                  
                            echo form_input(
                                      array(
                                         'name'         => 'KODE_UNIT',
                                         'id'           => 'KODE_UNIT',                       
                                         'class'        => 'form-control input-md ',
                                         'placeholder'  => 'KODE UNIT',
                                         'maxlength'    => '50',
                                         'required'     => 'required'
                                       ),
                                       set_value('KETX_UNIT',$fa_unitxx['KODE_UNIT'])
                                 );             
                            ?>

                            <?php echo form_error('NAMA_UNIT');?>
                        </div>
                    </div> <!--/ KODE UNIT -->

                    <div class="form-group">
                        <label for="NAMA_UNIT" class="col-md-2 control-label">Nama Unit <span class="required-input">*</span></label>
                            <div class="col-md-6"> 

                                <?php                  
                                echo form_input(
                                            array(
                                             'name'         => 'NAMA_UNIT',
                                             'id'           => 'NAMA_UNIT',                       
                                             'class'        => 'form-control input-md ',
                                             'placeholder'  => 'NAMA UNIT',
                                             'maxlength'    => '50',
                                             'required'     => 'required'
                                             ),
                                             set_value('NAMA_UNIT',$fa_unitxx['NAMA_UNIT'])
                                       );             
                                ?>

                                <?php echo form_error('NAMA_UNIT');?>
                            </div>
                    </div> <!--/ NAMA UNIT -->

                    <div class="form-group">
                        <label for="KODE_LOKX" class="col-md-2 control-label">Lokasi Unit <span class="required-input">*</span></label>
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
                                        'placeholder'   =>'Keterangan',
                                        'maxlength'     =>'100',
                                        'required'      =>'required'
                                        ),
                                    set_value('KETX_UNIT',$fa_unitxx['KETX_UNIT'])                           
                                    );             
                            ?>

                            <?php echo form_error('KETX_UNIT');?>
                        </div>
                    </div> <!--/ KETX UNIT -->

                    <div class="ln_solid"></div>

                    <div class="form-group">
                        <div class="col-md-6 col-md-6 col-xs-12 col-md-offset-3">
                            <a href="<?php echo site_url('fa_unitxx'); ?>" class="btn btn-default">
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