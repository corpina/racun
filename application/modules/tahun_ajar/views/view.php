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
            <h2>Tabel Tahun Ajar </h2>

            <div class="x_title">


                <div class="row">
                    <div class="col-md-8 col-xs-3">                
                        <?php
                        echo anchor(
                                site_url('tahun_ajar/add'), '<i class="glyphicon glyphicon-plus"></i> Tambah Data', 'class="btn btn-success btn-sm" data-tooltip="tooltip" data-placement="top" title="Tambah Data"'
                        );
                        ?>

                    </div>
                    <div class="col-md-4 col-xs-9">

                        <?php echo form_open(site_url('tahun_ajar/search'), 'role="search" class="form"'); ?>       
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

            </div>

            <div class="x_content">
                <?php if ($tahun_ajars) : ?>
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

                            <?php foreach ($tahun_ajars as $tahun_ajar) : ?>
                                <tr>
                                    <td><?php
                                        echo $number++;
                                        ;
                                        ?> </td>

                                    <td><?php echo $tahun_ajar['ket_thn_ajar']; ?></td>

                                    <td><?php echo $tahun_ajar['tgl_mulai']; ?></td>

                                    <td><?php echo $tahun_ajar['tgl_akhir']; ?></td>



                                    <td>    

                                        <?php
                                        echo anchor(
                                                site_url('tahun_ajar/edit/' . $tahun_ajar['thn_ajar']), '<i class="glyphicon glyphicon-menu-hamburger"></i>', 'class="btn btn-sm btn-success" data-tooltip="tooltip" data-placement="top" title="Lihat Data"'
                                        );
                                        ?>

                                        <?php
                                        echo anchor(
                                                site_url('tahun_ajar/destroy/' . $tahun_ajar['thn_ajar']), '<i class="glyphicon glyphicon-trash"></i>', 'onclick="return confirm(\'Anda yakin..???\');" class="btn btn-sm btn-danger" data-tooltip="tooltip" data-placement="top" title="Hapus"'
                                        );
                                        ?>   

                                    </td>
                                </tr>     
                            <?php endforeach; ?>
                        </tbody>
                    </table>

                <?php else: ?>
                    <?php echo notify('Data tahun_ajar belum tersedia', 'info'); ?>
                <?php endif; ?>
            </div>
            <div class="row">
                <div class="col-md-3">
                    Tahun Ajar
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












