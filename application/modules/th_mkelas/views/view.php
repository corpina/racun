<div class="row">
	<div class="col-lg-12 col-md-12">		
		<?php 
                
                echo create_breadcrumb();		
                echo $this->session->flashdata('notify');
                
                ?>
	</div>
</div><!-- /.row -->
ini ferdiyansah
<section class="panel panel-default">
    <header class="panel-heading">
        <div class="row">
            <div class="col-md-8 col-xs-3">                
                <?php
                                  echo anchor(
                                           site_url('th_mkelas/add'),
                                            '<i class="glyphicon glyphicon-plus"></i>',
                                            'class="btn btn-success btn-sm" data-tooltip="tooltip" data-placement="top" title="Tambah Data"'
                                          );
                 ?>
                
            </div>
            <div class="col-md-4 col-xs-9">
                                           
                 <?php echo form_open(site_url('th_mkelas/search'), 'role="search" class="form"') ;?>       
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
         <?php if ($th_mkelass) : ?>
          <table class="table table-hover table-condensed">
              
            <thead>
              <tr>
                <th class="header">#</th>
                
                    <th>Tahun Ajar</th>   
                    <th>Kode Kelas</th>   
                    <th>Nama Kelas</th>	
					<th>Tingkatan Kelas</th>
					<th>Kode Unit</th>
					<th>Unit Sekolahs</th>						
                
                <th class="red header" align="right" width="120">Aksi</th>
              </tr>
            </thead>
            
            
            <tbody>
             
               <?php foreach ($th_mkelass as $th_mkelas) : ?>
              <tr>
              	<td><?php echo $number++;; ?> </td>
               
               <td><?php echo $th_mkelas['KETX_THN']; ?></td>
               
               <td><?php echo $th_mkelas['KODE_KLSX']; ?></td>
               <td><?php echo $th_mkelas['NAMA_KLSX']; ?></td>
               <td><?php echo $th_mkelas['TKTX_KLSX']; ?></td>
               <td><?php echo $th_mkelas['KODE_UNIT']; ?></td>
               <td><?php echo $th_mkelas['NAMA_UNIT']; ?></td>
               
                <td>    
                    
					<!--
                    <?php
                                  echo anchor(
                                          site_url('th_mkelas/show/' . $th_mkelas['JURX_KLSX']),
                                            '<i class="glyphicon glyphicon-eye-open"></i>',
                                            'class="btn btn-sm btn-info" data-tooltip="tooltip" data-placement="top" title="Detail"'
                                          );
                   ?>-->
                    
                    <?php
                                  echo anchor(
                                          site_url('th_mkelas/edit/' . $th_mkelas['KODE_KLSX']),
                                            '<i class="glyphicon glyphicon-edit"></i>',
                                            'class="btn btn-sm btn-success" data-tooltip="tooltip" data-placement="top" title="Edit"'
                                          );
                   ?>
                   
                   <?php
                                  echo anchor(
                                          site_url('th_mkelas/destroy/' . $th_mkelas['KODE_KLSX']),
                                            '<i class="glyphicon glyphicon-trash"></i>',
                                            'onclick="return confirm(\'Anda yakin..???\');" class="btn btn-sm btn-danger" data-tooltip="tooltip" data-placement="top" title="Hapus"'
                                          );
                   ?>   
                                 
                </td>
              </tr>     
               <?php endforeach; ?>
            </tbody>
          </table>
          <?php else: ?>
                <?php  echo notify('Data th_mkelas belum tersedia','info');?>
          <?php endif; ?>
    </div>
    
    
    <div class="panel-footer">
        <div class="row">
           <div class="col-md-3">
               Th Mkelas
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