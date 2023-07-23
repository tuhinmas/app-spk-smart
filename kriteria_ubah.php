<?php
    $row = $db->get_row("SELECT * FROM tb_kriteria WHERE kode_kriteria='$_GET[kode_kriteria]'"); 
?>
<div class="page-header">
    <h1>Ubah Kriteria</h1>
</div>
<div class="row">

        <form method="post" action="aksi_ubah_kriteria.php" enctype="multipart/form-data">
    <div class="col-sm-6">
            <div class="form-group">
                <label>Kode <span class="text-danger">*</span></label>
                <input class="form-control" type="text" required="" name="kode_kriteria" id="tkode" readonly="readonly" />
            </div>
            <div class="form-group">
                <label>Nama Kriteria <span class="text-danger">*</span></label>
                <input class="form-control" type="text" required="" name="nama_kriteria" id="tnama" />
            </div>

            <div class="form-group">
                <label>Kondisi Buah<span class="text-danger">*</span></label>
                <input class="form-control" type="text" required="" name="kondisi_buah" id="konbuah" />
            </div>
            <div class="form-group">
                <label>Warna Kulit <span class="text-danger">*</span></label>
                <input class="form-control" type="text" required="" id="tkulit" name="warna_kulit"  />
            </div>
            <div class="form-group">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                <a class="btn btn-danger" href="?m=kriteria"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
            </div>
    </div>
    <div class="col-sm-6">
        <div class="form-group">
                <label>Warna Daging <span class="text-danger">*</span></label>
                <input class="form-control" type="text" required="" id="tdaging" name="warna_daging"  />
            </div>
        <div class="form-group">
                <label>Kondisi Pohon <span class="text-danger">*</span></label>
                <input class="form-control" type="text" required="" id="tpohon" name="kondisi_pohon"  />
            </div>
            <div class="form-group">
                <label>Kondisi Tanah <span class="text-danger">*</span></label>
                <input class="form-control" type="text" required="" name="kondisi_tanah"  id="tkondisitanah" />
            </div>
            <div class="form-group">
                <label>Bobot <span class="text-danger">*</span></label>
                <input class="form-control" type="text" required="" name="bobot" id="tbobot" />
            </div>
        
    </div>

        </form>
</div>