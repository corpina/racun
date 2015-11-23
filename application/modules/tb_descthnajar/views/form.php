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
                <h2>Form Tahun Ajar </h2>
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

                <?php echo form_open(site_url('tb_descthnajar/' . $action), 'role="form" class="form-horizontal" id="form_tb_descthnajar" parsley-validate'); ?>               

                <div class="form-group">
                    <label class="control-label col-md-2 col-md-3 col-xs-12" for="first-name">Tahun Ajar <span class="required">*</span>
                    </label>

<?php $data_tanggal=  explode('/',$tb_descthnajar['KETX_THN']);

//echo $data_tanggal[0];

//echo $tb_descthnajar['KETX_THN'];

?>
                    <div class="col-md-3">                                   
                        <?php
                        echo form_input(
                                array(
                                    'name' => 'tahun_awal',
                                    'id' => 'tahun_awal',
                                    'class' => 'form-control input-md ',
                                    'placeholder' => 'Tahun Awal',
                                    'maxlength' => '10',
                                    'required' => 'required',
									'readonly'=>'readonly',
									'onchange'=>'get_awal()'
                                ), set_value('KETX_THN', $data_tanggal[0])
                        );
                        ?>
                    </div>

                    <div class="col-md-3">                                   
                        <?php
                        echo form_input(
                                array(
                                    'name' => 'tahun_akhir',
                                    'id' => 'tahun_akhir',
                                    'class' => 'form-control input-md ',
                                    'placeholder' => 'Tahun Akhir',
                                    'maxlength' => '10',
                                    'required' => 'required',
									'readonly'=>'readonly',
									'onchange'=>'get_akhir()'

                                ), set_value('KETX_THN', $data_tanggal[1])
                        );
                        ?>
                    </div>


                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-md-3 col-xs-12" for="last-name">Periode Tanggal <span class="required">*</span>
                    </label>
                    <div class="col-md-3">                                   

                        <input type="text" class="form-control" readonly  value="<?php echo set_value('tanggal_awal',$tb_descthnajar['TGLX_STRT'])?>" placeholder="Tanggal Awal" required="required" name="tanggal_awal" id="tanggal_awal" data-inputmask="'mask': '99/99/9999'">

                    </div>
                    <div class="col-md-3">                                   

                        <input type="text" class="form-control" readonly value="<?php echo set_value('tanggal_akhir',$tb_descthnajar['TGLX_ENDX'])?>" placeholder=" Tanggal Akhir" required="tanggal_akhir" name="tanggal_akhir" id="tanggal_akhir" data-inputmask="'mask': '99/99/9999'">

                    </div>
                </div>

                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-md-6 col-xs-12 col-md-offset-3">
                        <a href="<?php echo site_url('tb_descthnajar'); ?>" class="btn btn-default">
                            <i class="glyphicon glyphicon-chevron-left"></i> Kembali
                        </a> 
                        <button type="submit" class="btn btn-success" onclick="return confirm('Yakin Hapus Data Ini');"><i class="glyphicon glyphicon-trash"></i> Hapus </button>
                    </div>
                </div>

                <?php echo form_close(); ?>  
            </div>
        </div>
    </div>
</div>
<script>

    $("input[name='tahun_awal']").on("keypress", function (event) {
        var regex = /[0-9]/g;
        var key = String.fromCharCode(event.which);
        if (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode == 39 || regex.test(key)) {
            return true;
        }
        alert("harus angka");
        return false;
    });
    $("input[name='tahun_akhir']").on("keypress", function (event) {
        var regex = /[0-9]/g;
        var key = String.fromCharCode(event.which);
        if (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode == 39 || regex.test(key)) {
            return true;
        }
        alert("harus angka");
        return false;
    });

    $(document).ready(function () {
        $(":input").inputmask();
    });
	
	function get_awal(){
		var tahun_awal = $('input["name:tahun_awal"]').val();
		$("#tanggal_awal").val(tahun_awal+'/07/01');
	}
</script>