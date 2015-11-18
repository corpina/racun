<div class="row">
    <div class="col-lg-12 col-md-12">		
        <?php
        echo create_breadcrumb();
        echo $this->session->flashdata('notif');
        ?>
    </div>
</div><!-- /.row -->





<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Table Lokasi </h2>
                <div  class="col-md-4 col-xs-9">
                   <?php
                echo anchor(
                        site_url('fa_lokxxx/add'), '<i class="glyphicon glyphicon-plus"></i>', 'class="btn btn-success btn-sm" data-tooltip="tooltip" data-placement="top" title="Tambah Data"'
                );
                ?>
                </div>


               
                <ul class="nav navbar-right panel_toolbox">
                    
                    <?php echo form_open(site_url('fa_lokxxx/search'), 'role="search" class="form"'); ?>       
                    <div class="input-group pull-right">                      
                        <input type="text" class="form-control input-sm" placeholder="Cari data" name="q" autocomplete="off"> 
                        <span class="input-group-btn">
                            <button class="btn btn-primary btn-sm" type="submit"><i class="glyphicon glyphicon-search"></i> Cari</button>
                        </span>
                    </div>
                    <?php echo form_close(); ?>
                </ul>
                <div class="clearfix"></div>
            </div>

            <div class="x_content">
                <?php if ($fa_lokxxxs) : ?>
            <table class="table table-striped table-bordered table-hover table-condensed">

                <thead>
                    <tr  class="danger">
                        <th class="header">#</th>

                        <th>Nama Institusi</th>   

                        <th>Alamat Institusi</th>   

                        <th>Telepon Institusi</th>   

                        <th>Fax Institusi</th>   

                        <th class="red header" align="right" width="120">Aksi</th>
                    </tr>
                </thead>


                <tbody>
                    <?php foreach ($fa_lokxxxs as $fa_lokxxx) : ?>
                        <tr>
                            <td><?php echo $number++;
                        ?> </td>

                            <td><?php echo $fa_lokxxx['NAMA_LOKX']; ?></td>

                            <td><?php echo $fa_lokxxx['ALMT_LOKX']; ?></td>

                            <td><?php echo $fa_lokxxx['TLPX_LOKX']; ?></td>

                            <td><?php echo $fa_lokxxx['FAXX_LOKX']; ?></td>

                            <td>    

                                <?php
                                echo anchor(
                                        site_url('fa_lokxxx/edit/' . $fa_lokxxx['KODE_LOKX']), '<i class="glyphicon glyphicon-edit"></i>', 'class="btn btn-sm btn-success" data-tooltip="tooltip" data-placement="top" title="Edit"'
                                );
                                ?>

                                <?php
                                echo anchor(
                                        site_url('fa_lokxxx/destroy/' . $fa_lokxxx['KODE_LOKX']), '<i class="glyphicon glyphicon-trash"></i>', 'onclick="return confirm(\'Anda yakin..???\');" class="btn btn-sm btn-danger" data-tooltip="tooltip" data-placement="top" title="Hapus"'
                                );
                                ?>   

                            </td>
                        </tr>     
                    <?php endforeach; ?>
                </tbody>
            </table>
        <?php else: ?>
            <?php echo notify('Data fa_lokxxx belum tersedia', 'info'); ?>
        <?php endif; ?>
            </div>

        </div>
    </div>

</div>



<!--


<section class="panel panel-default">
    <header class="panel-heading">
        <div class="row">
            <div class="col-md-8 col-xs-3">                
                <?php
                echo anchor(
                        site_url('fa_lokxxx/add'), '<i class="glyphicon glyphicon-plus"></i>', 'class="btn btn-success btn-sm" data-tooltip="tooltip" data-placement="top" title="Tambah Data"'
                );
                ?>

            </div>
            <div class="col-md-4 col-xs-9">

                <?php echo form_open(site_url('fa_lokxxx/search'), 'role="search" class="form"'); ?>       
                <div class="input-group pull-right">                      
                    <input type="text" class="form-control input-sm" placeholder="Cari data" name="q" autocomplete="off"> 
                    <span class="input-group-btn">
                        <button class="btn btn-primary btn-sm" type="submit"><i class="glyphicon glyphicon-search"></i> Cari</button>
                    </span>
                </div>

                </form> 
                <?php echo form_close(); ?>
            </div>
        </div>
    </header>


    <div class="panel-body">
        <?php if ($fa_lokxxxs) : ?>
            <table class="table table-striped table-bordered table-hover table-condensed">

                <thead>
                    <tr  class="danger">
                        <th class="header">#</th>

                        <th>Nama Institusi</th>   

                        <th>Alamat Institusi</th>   

                        <th>Telepon Institusi</th>   

                        <th>Fax Institusi</th>   

                        <th class="red header" align="right" width="120">Aksi</th>
                    </tr>
                </thead>


                <tbody>
                    <?php foreach ($fa_lokxxxs as $fa_lokxxx) : ?>
                        <tr>
                            <td><?php echo $number++;
                        ?> </td>

                            <td><?php echo $fa_lokxxx['NAMA_LOKX']; ?></td>

                            <td><?php echo $fa_lokxxx['ALMT_LOKX']; ?></td>

                            <td><?php echo $fa_lokxxx['TLPX_LOKX']; ?></td>

                            <td><?php echo $fa_lokxxx['FAXX_LOKX']; ?></td>

                            <td>    

                                <?php
                                echo anchor(
                                        site_url('fa_lokxxx/edit/' . $fa_lokxxx['KODE_LOKX']), '<i class="glyphicon glyphicon-edit"></i>', 'class="btn btn-sm btn-success" data-tooltip="tooltip" data-placement="top" title="Edit"'
                                );
                                ?>

                                <?php
                                echo anchor(
                                        site_url('fa_lokxxx/destroy/' . $fa_lokxxx['KODE_LOKX']), '<i class="glyphicon glyphicon-trash"></i>', 'onclick="return confirm(\'Anda yakin..???\');" class="btn btn-sm btn-danger" data-tooltip="tooltip" data-placement="top" title="Hapus"'
                                );
                                ?>   

                            </td>
                        </tr>     
                    <?php endforeach; ?>
                </tbody>
            </table>
        <?php else: ?>
            <?php echo notify('Data fa_lokxxx belum tersedia', 'info'); ?>
        <?php endif; ?>
    </div>


    <div class="panel-footer">
        <div class="row">
            <div class="col-md-3">
                Fa Lokxxx
                <span class="label label-info">
                    <?php echo $total; ?>
                </span>
            </div>  
            <div class="col-md-9">
                <?php echo $pagination; ?>
            </div>
        </div>
    </div>
</section>-->