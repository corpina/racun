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
            <div class="col-md-8">                
                <?php
                echo anchor(
                        site_url('jenis_iuran/add'), '<i class="glyphicon glyphicon-plus"></i>', 'class="btn btn-success btn-sm" data-tooltip="tooltip" data-placement="top" title="Tambah Data"'
                );
                ?>

            </div>
            <div class="col-md-4">

                <?php echo form_open(site_url('jenis_iuran/search'), 'role="search" class="form"'); ?>       
                <div class="input-group pull-right">                      
                    <!--<input type="text" class="form-control input-sm" placeholder="Cari data" name="q" autocomplete="off"> -->
                    <select name="q" id="q" class="form-control input-sm">
                        <option value="kosong"> - Cari Unit Sekolah -</option>
                        <?php foreach ($unit_sekolah->result() as $d): ?>
                            <option value="<?= $d->kode_unit ?>"> <?= $d->nama_unit ?> </option>>
                        <?php endforeach; ?>
                    </select>
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

                        <th>Kode Iuran</th>   
                        <th>Jenis Iuran</th>   
                        <th>Kas Tujuan</th>   
                        <th>Pendapatan</th>   
                        <th>Piutan/Hutang</th>   
                        <th>Terima Dimuka</th>   
                        <th>Group Iuran</th>   



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
                                        site_url('jenis_iuran/edit/' . $jenis_iuran['kode_jenis_iuran']), '<i class="glyphicon glyphicon-edit"></i>', 'class="btn btn-sm btn-success" data-tooltip="tooltip" data-placement="top" title="Edit"'
                                );
                                ?>

                                <?php
                                echo anchor(
                                        site_url('jenis_iuran/destroy/' . $jenis_iuran['kode_jenis_iuran']), '<i class="glyphicon glyphicon-trash"></i>', 'onclick="return confirm(\'Anda yakin..???\');" class="btn btn-sm btn-danger" data-tooltip="tooltip" data-placement="top" title="Hapus"'
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