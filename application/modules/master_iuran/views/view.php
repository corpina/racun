<div class="row">
    <div class="col-lg-12 col-md-12">		
        <?php
        echo create_breadcrumb();
        echo $this->session->flashdata('notif');
        ?>
    </div>
</div><!-- /.row -->

<!-- content -->
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
                <h2>Tabel Master Iuran</h2>

            <div class="x_title">
                <div class="row">
                    <!-- button tambah -->
                    <div class="col-md-8 col-xs-3">
                        <?php
                        echo anchor(
                                site_url('master_iuran/add'), '<i class="glyphicon glyphicon-plus"></i> Tambah Data', 'class="btn btn-success btn-sm" data-tooltip="tooltip"'
                        );
                        ?>
                    </div>

                    <div class="col-md-4 col-xs-9">
                        <?php echo form_open(site_url('master_iuran/search'), 'role="search" class="form"'); ?>
                        <div class="input-group pull-right">
                            <input type="text" class="form-control input-sm" placeholder="Cari data" name="q" autocomplete="off">
                            <span class="input-group-btn">
                                <button class="btn btn-primary btn-sm" type="submit"><i class="glyphicon glyphicon-search"></i>Cari</button>
                            </span>
                        </div>
                        <?php echo form_close(); ?>
                    </div>

                </div><!-- end class row -->
            </div><!-- end class x_title -->

            <div class="x_content">
                <?php if ($master_iurans) : ?>

                    <table class="table table-striped table-bordered table-condensed table-hover">
                        <thead>
                            <tr class="danger">
                                <th class="header">#</th>

                                <th>Kode Iuran</th>
                                  
                                <th>Nama Iuran</th>

                                <th class="red header" align="right" width="120">Aksi</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php foreach ($master_iurans as $master_iuran) : ?>
                                <tr>
                                    <td><?php echo $number++; ?></td>

                                    <td><?php echo $master_iuran['kode_iuran']; ?></td>

                                    <td><?php echo $master_iuran['nama_iuran']; ?></td>

                                    <td>
                                        <?php
                                        echo anchor(
                                                site_url('master_iuran/edit/' . $master_iuran['kode_iuran']), '<i class="glyphicon glyphicon-edit"></i>', 'class="btn btn-sm btn-success" data-tooltip="tooltip" data-placement="top" title="Edit"');
                                        ?>

                                        <?php
                                        echo anchor(
                                                site_url('master_iuran/destroy/' . $master_iuran['kode_iuran']), '<i class="glyphicon glyphicon-trash"></i>', 'onclick="return confirm(\'Anda yakin..???\');" class="btn btn-sm btn-danger" data-tooltip="tooltip" data-placement="top" title="Hapus"');
                                        ?> 
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>

                <?php else : ?>
                    <?php echo notify('Data master_iuran belum tersedia', 'info'); ?>
                <?php endif; ?>
            </div><!-- end x_content -->

            <div class="row">
                <div class="col-md-3">
                    Master Iuran
                    <span class="label label-info">
                        <?php echo $total; ?>
                    </span>
                </div>  
                <div class="col-md-9">
                    <?php echo $pagination; ?>
                </div>
            </div>

        </div><!-- end x_panel -->
    </div>
</div><!-- end row content -->