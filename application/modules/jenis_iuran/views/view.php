<div class="row">
    <div class="col-lg-12 col-md-12">		
        <?php
        echo create_breadcrumb();
        echo $this->session->flashdata('notif');
        ?>
    </div>
</div><!-- /.row -->

<section class="panel panel-default">
    <header class="panel-heading">
        <div class="row">
            <div class="col-md-8 col-xs-3">                
                <?php
                echo anchor(
                        site_url('jenis_iuran/add'), '<i class="glyphicon glyphicon-plus"></i>', 'class="btn btn-success btn-sm" data-tooltip="tooltip" data-placement="top" title="Tambah Data"'
                );
                ?>

            </div>
            <div class="col-md-4 col-xs-9">

                <?php echo form_open(site_url('jenis_iuran/search'), 'role="search" class="form"'); ?>       
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
        <?php if ($jenis_iurans) : ?>
            <table class="table table-hover table-condensed">

                <thead>
                    <tr>
                        <th class="header">#</th>

                        <th>CODD VALU</th>   

                        <th>CODD DESC</th>   



                        <th>CODD CHR4</th>   

                        <th>CODD CHR5</th>   



                        <th class="red header" align="right" width="120">Aksi</th>
                    </tr>
                </thead>


                <tbody>

                    <?php foreach ($jenis_iurans as $jenis_iuran) : ?>
                        <tr>
                            <td><?php
                                echo $number++;
                                ;
                                ?> </td>


                            <td><?php echo $jenis_iuran['CODD_VALU']; ?></td>

                            <td><?php echo $jenis_iuran['CODD_DESC']; ?></td>


                            <td><?php echo $jenis_iuran['CODD_CHR4']; ?></td>

                            <td><?php echo $jenis_iuran['CODD_CHR5']; ?></td>



                            <td>    



                                <?php
                                echo anchor(
                                        site_url('jenis_iuran/edit/' . $jenis_iuran['CODD_VALU']), '<i class="glyphicon glyphicon-edit"></i>', 'class="btn btn-sm btn-success" data-tooltip="tooltip" data-placement="top" title="Edit"'
                                );
                                ?>

                                <?php
                                echo anchor(
                                        site_url('jenis_iuran/destroy/' . $jenis_iuran['CODD_VALU']), '<i class="glyphicon glyphicon-trash"></i>', 'onclick="return confirm(\'Anda yakin..???\');" class="btn btn-sm btn-danger" data-tooltip="tooltip" data-placement="top" title="Hapus"'
                                );
                                ?>   

                            </td>
                        </tr>     
                    <?php endforeach; ?>
                </tbody>
            </table>
        <?php else: ?>
            <?php echo notify('Data jenis_iuran belum tersedia', 'info'); ?>
        <?php endif; ?>
    </div>


    <div class="panel-footer">
        <div class="row">
            <div class="col-md-3">
                Th Jnsxiurn
                <span class="label label-info">
                    <?php echo $total; ?>
                </span>
            </div>  
            <div class="col-md-9">
                <?php echo $pagination; ?>
            </div>
        </div>
    </div>
</section>