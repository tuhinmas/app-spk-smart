<?php
    $row = $db->get_row("SELECT * FROM tbl_hama WHERE id_hama='$_GET[id_hama]'"); 
?>
<div class="page-header">
    <h1>Ubah hama</h1>
</div>
<div class="row">

        <form method="post" action="aksi_ubah_hama.php" enctype="multipart/form-data">
    <div class="col-sm-6">
           
            <div class="form-group">
                <input class="form-control" type="hidden" required="" name="id_hama" id="tkode" />
  <label>Nama hama <span class="text-danger">*</span></label>
                <input class="form-control" type="text" required="" name="nama" id="tnama" />
            </div>

            <div class="form-group">
                <label>Deskripsi<span class="text-danger">*</span></label>
                <textarea name="deskripsi" id="konbuah" class="form-control"></textarea>
            </div>
            <div class="form-group">
                <label>Foto<span class="text-danger">*</span></label>
                <input class="form-control" type="file" name="foto"  />
            </div>
            <div class="form-group">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                <a class="btn btn-danger" href="?m=hama"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
            </div>
    </div>
    <div class="col-sm-6">
      

            <div class="form-group">
                <label>Foto Sebelumnya<span class="text-danger">*</span></label>
                
                <div id="header"></div> 
                </div>

        <div class="form-group">
                <label>Cara Penanganan <span class="text-danger">*</span></label>
                <textarea name="cara_penanganan" id="tdaging" class="form-control"></textarea>
            </div>
        
    </div>

        </form>
</div>