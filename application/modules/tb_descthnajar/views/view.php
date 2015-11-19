<div class="row">
    <div class="col-lg-12 col-md-12">		
        <?php
        echo create_breadcrumb();
<<<<<<< HEAD
        echo $this->session->flashdata('notify');
=======

        echo $this->session->flashdata('notif');
>>>>>>> fbc112304bb6708fa88fa9121421292a26a2dc71
        ?>
    </div>
</div><!-- /.row -->

<!-- content -->
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
			        <h2>Tabel Tahun Ajar </h2>
					
					
					<div class="row">
                        <!-- button tambah -->
                        <div class="col-md-6 col-xs-3">                
                            <?php        
            										  
                                echo anchor(
                                        site_url('tb_descthnajar/add'), '<i class="glyphicon glyphicon-plus"></i> Tambah Data', 'class="btn btn-success btn-sm" data-tooltip="tooltip" data-placement="top" title="Tambah Data"'
                                );					  
                             ?>                            
                        </div>

                        <!-- form search -->
                        <div class="col-md-4 col-xs-9">
                                                       
                            <?php echo form_open(site_url('tb_descthnajar/search'), 'role="search" class="form"'); ?>       
                                       <div class="input-group pull-right">                      
                                             <input type="text" class="form-control input-sm" placeholder="Cari data" name="q" autocomplete="off"> 
                                             <span class="input-group-btn">
                                                  <button class="btn btn-primary btn-sm" type="submit"><i class="glyphicon glyphicon-search"></i> Cari</button>
                                             </span>
                                       </div>
                                       
                            </form> 
                            <?php echo form_close(); ?>
                        </div>
                    </div> <!-- end class row -->

					<!--
                <div  class="col-md-3 col-xs-9">
                    <?php
                    echo anchor(
                            site_url('tb_descthnajar/add'), '<i class="glyphicon glyphicon-plus"></i>', 'class="btn btn-success btn-sm" data-tooltip="tooltip" data-placement="top" title="Tambah Data"'
                    );
                    ?>
                </div>               
                <ul class="nav navbar-right panel_toolbox">
                    <?php echo form_open(site_url('tb_descthnajar/search'), 'role="search" class="form"'); ?>       
                    <div class="input-group pull-right">                      
                        <input type="text" class="form-control input-sm" placeholder="Cari data" name="q" autocomplete="off"> 
                        <span class="input-group-btn">
                            <button class="btn btn-primary btn-sm" type="submit"><i class="glyphicon glyphicon-search"></i> Cari</button>
                        </span>
                    </div>
                    <?php echo form_close(); ?>
                </ul>
                <div class="clearfix"></div>-->
                
            </div><!-- end class x_title -->

            <div class="x_content">
                <?php if ($tb_descthnajars) : ?>
                    <table class="table table-striped table-bordered table-hover table-condensed">
                        <thead>
                            <tr class="danger">

                                <th class="header">#</th>

                                <th>Tahun Ajaran</th>   

                                <th>Tahun Awal</th>   

                                <th>Tanggal Akhir</th>   


                                <th class="red header" align="right" width="120">Aksi</th>
                            </tr>
                        </thead>

                        <tbody>

                            <?php foreach ($tb_descthnajars as $tb_descthnajar) : ?>
                                <tr>
                                    <td><?php
                                        echo $number++;
                                        ;
                                        ?> </td>

                                    <td><?php echo $tb_descthnajar['KETX_THN']; ?></td>

                                    <td><?php echo $tb_descthnajar['TGLX_STRT']; ?></td>

                                    <td><?php echo $tb_descthnajar['TGLX_ENDX']; ?></td>



                                    <td>    

                                        <?php
                                        echo anchor(
                                                site_url('tb_descthnajar/edit/' . $tb_descthnajar['THNX_AJAR']), '<i class="glyphicon glyphicon-menu-hamburger"></i>', 'class="btn btn-sm btn-success" data-tooltip="tooltip" data-placement="top" title="Lihat Data"'
                                        );
                                        ?>

                                        <?php
                                        echo anchor(
                                                site_url('tb_descthnajar/destroy/' . $tb_descthnajar['THNX_AJAR']), '<i class="glyphicon glyphicon-trash"></i>', 'onclick="return confirm(\'Anda yakin..???\');" class="btn btn-sm btn-danger" data-tooltip="tooltip" data-placement="top" title="Hapus"'
                                        );
                                        ?>   

                                    </td>
                                </tr>     
                            <?php endforeach; ?>
                        </tbody>
                    </table>

                <?php else: ?>
                    <?php echo notify('Data tb_descthnajar belum tersedia', 'info'); ?>
                <?php endif; ?>
            </div>
<div class="row">
            <div class="col-md-3">
                Tb Descthnajar
                <span class="label label-info">
                    <?php echo $total; ?>
                </span>
            </div>  
            <div class="col-md-9">
                <?php echo $pagination; ?>
            </div>
        </div>
        </div>
    </div>

</div>












