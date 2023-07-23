<div class="page-header">
    <h1>Tambah Hama</h1>
</div>
<div class="row">
    <form method="post" class="form-signin" action="aksi_tambah_hama.php"  enctype="multipart/form-data" >
        <div class="col-sm-6">

            <div class="form-group">
                <label>Nama<span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nama" value="<?=set_value('nama')?>" />
            </div>

            
            <div class="form-group">
                <label>Deskripsi<span class="text-danger">*</span></label>
                <textarea name="deskripsi" class="form-control"></textarea>
            </div>
            
            <!-- <div class="form-group">-->
                <button name="tambah_kriteria" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                <a class="btn btn-danger" href="?m=kriteria"><span class="glyphicon glyphicon-arrow-left"></span>
                    Kembali</a>
            <!--</div>-->
    </div>

    <div class="col-sm-6">
             <div class="form-group">
                <label>Foto<span class="text-danger">*</span></label>
                <input class="form-control" type="file" name="foto" />
            </div>

            <div class="form-group">
                <label>Cara Penanganan<span class="text-danger">*</span></label>
                <textarea name="cara_penanganan" class="form-control"></textarea>
            </div>
    </div>

        </form>
</div>
