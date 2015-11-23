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
                <h2>Tabel Jenis Iuran Siswa</h2>

            <div class="x_title">
                <div class="row">
                    <!-- button tambah -->
                    <div class="col-md-8 col-xs-3">
                        <?php
                        echo anchor(
                                site_url('jenis_iuran/add'), '<i class="glyphicon glyphicon-plus"></i> Tambah Data', 'class="btn btn-success btn-sm" data-tooltip="tooltip"'
                        );
                        ?>
                    </div>

                    <div class="col-md-4 col-xs-9">

                        <?php echo form_open(site_url('jenis_iuran/search'), 'role="search" class="form"'); ?>
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
                <?php if ($jenis_iurans) : ?>

                    <table class="table table-striped table-bordered table-condensed table-hover">
                        <thead>
                            <tr class="danger">
                                <th class="header">#</th>

                                <th>Kode Jenis Iuran</th>   

                                <th>Jenis Iuran</th>   

                                <th>Kas Tujuan</th>   

                                <th>Pendapatan</th>   

                                <th>Piutang/Hutang</th>

                                <th>Terima Dimuka</th>

                                <th>Group Iuran</th>

                                <th class="red header" align="right" width="120">Aksi</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php foreach ($jenis_iurans as $jenis_iuran) : ?>
                                <tr>
                                    <td><?php echo $number++; ?></td>
                                    <td><?php echo $jenis_iuran['kode_jenis_iuran']; ?></td>
                                    <td><?php echo $jenis_iuran['nama_iuran']; ?></td>
                                    <td><?php echo $jenis_iuran['kode_tujuan']; ?></td>
                                    <td><?php echo $jenis_iuran['kode_pendapatan']; ?></td>
                                    <td><?php echo $jenis_iuran['kode_piutang']; ?></td>
                                    <td><?php echo $jenis_iuran['kode_diterima']; ?></td>
                                    <td><?php echo $jenis_iuran['kode_iuran']; ?></td>

                                    <td>
                                        <?php
                                        echo anchor(
                                                site_url('jenis_iuran/edit/' . $jenis_iuran['kode_jenis_iuran']), '<i class="glyphicon glyphicon-edit"></i>', 'class="btn btn-sm btn-success" data-tooltip="tooltip" data-placement="top" title="Edit"');
                                        ?>

                                        <?php
                                        echo anchor(
                                                site_url('jenis_iuran/destroy/' . $jenis_iuran['kode_jenis_iuran']), '<i class="glyphicon glyphicon-trash"></i>', 'onclick="return confirm(\'Anda yakin..???\');" class="btn btn-sm btn-danger" data-tooltip="tooltip" data-placement="top" title="Hapus"');
                                        ?> 
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>

                <?php else : ?>
                    <?php echo notify('Data jenis_iuran belum tersedia', 'info'); ?>
                <?php endif; ?>
            </div><!-- end x_content -->

            <div class="row">
                <div class="col-md-3">
                    Jenis Iuran
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