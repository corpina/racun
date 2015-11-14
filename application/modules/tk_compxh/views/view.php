<div class="row">
	<div class="col-lg-12 col-md-12">		
		<?php 
                
                echo create_breadcrumb();		
                echo $this->session->flashdata('notify');
                
                ?>
	</div>
</div><!-- /.row -->

<section class="panel panel-default">
    <header class="panel-heading">
        <div class="row">
            <div class="col-md-8 col-xs-3">                
                <?php
                                  echo anchor(
                                           site_url('tk_compxh/add'),
                                            '<i class="glyphicon glyphicon-plus"></i>',
                                            'class="btn btn-success btn-sm" data-tooltip="tooltip" data-placement="top" title="Tambah Data"'
                                          );
                 ?>
                
            </div>
            <div class="col-md-4 col-xs-9">
                                           
                 <?php echo form_open(site_url('tk_compxh/search'), 'role="search" class="form"') ;?>       
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
         <?php if ($tk_compxhs) : ?>
          <table class="table table-hover table-condensed">
              
            <thead>
              <tr>
                <th class="header">#</th>
                
                    <th>CODH LENG</th>   
                
                    <th>CODH DESC</th>   
                
                    <th>CODH HELP</th>   
                
                    <th>CODH TYPE</th>   
                
                    <th>CODH CHR1</th>   
                
                    <th>CODH CHR2</th>   
                
                    <th>CODH CHR3</th>   
                
                    <th>TRAN DATE</th>   
                
                    <th>TRAN USID</th>   
                
                    <th>TRAN TYPE</th>   
                
                    <th>TRAN COMP</th>   
                
                <th class="red header" align="right" width="120">Aksi</th>
              </tr>
            </thead>
            
            
            <tbody>
             
               <?php foreach ($tk_compxhs as $tk_compxh) : ?>
              <tr>
              	<td><?php echo $number++;; ?> </td>
               
               <td><?php echo $tk_compxh['CODH_LENG']; ?></td>
               
               <td><?php echo $tk_compxh['CODH_DESC']; ?></td>
               
               <td><?php echo $tk_compxh['CODH_HELP']; ?></td>
               
               <td><?php echo $tk_compxh['CODH_TYPE']; ?></td>
               
               <td><?php echo $tk_compxh['CODH_CHR1']; ?></td>
               
               <td><?php echo $tk_compxh['CODH_CHR2']; ?></td>
               
               <td><?php echo $tk_compxh['CODH_CHR3']; ?></td>
               
               <td><?php echo $tk_compxh['TRAN_DATE']; ?></td>
               
               <td><?php echo $tk_compxh['TRAN_USID']; ?></td>
               
               <td><?php echo $tk_compxh['TRAN_TYPE']; ?></td>
               
               <td><?php echo $tk_compxh['TRAN_COMP']; ?></td>
               
                <td>    
                    
                    
                    <?php
                                  echo anchor(
                                          site_url('tk_compxh/edit/' . $tk_compxh['CODH_FLNM']),
                                            '<i class="glyphicon glyphicon-edit"></i>',
                                            'class="btn btn-sm btn-success" data-tooltip="tooltip" data-placement="top" title="Edit"'
                                          );
                   ?>
                   
                   <?php
                                  echo anchor(
                                          site_url('tk_compxh/destroy/' . $tk_compxh['CODH_FLNM']),
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
                <?php  echo notify('Data tk_compxh belum tersedia','info');?>
          <?php endif; ?>
    </div>
    
    
    <div class="panel-footer">
        <div class="row">
           <div class="col-md-3">
               Tk Compxh
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