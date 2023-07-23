<div class="page-header">
    <h1>Tambah Kriteria</h1>
</div>
<div class="row">
    <form method="post" class="form-signin" action="aksi_tambah_kriteria.php">
        <div class="col-sm-6">

            <div class="form-group">
                <label>Kode <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="kode"
                    value="<?=set_value('kode', kode_oto('kode_kriteria', 'tb_kriteria', 'C', 2))?>" />
            </div>
            <div class="form-group">
                <label>Nama Kriteria <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nama" value="<?=set_value('nama')?>" />
            </div>

            <div class="form-group">
                <label>Kondisi Tanah<span class="text-danger">*</span></label>
                <!-- <input class="form-control" type="text" name="kondisi_tanah" /> -->
                <select name="kondisi_tanah" id="kondisi_tanah" class="form-control">
                    <option value="Membusuk">Membusuk</option>
                    <option value="Mengering">Mengering</option>
                    <option value="Retak">Retak</option>
                    <option value="Utuh">Utuh</option>
                </select>
            </div>

            <div class="form-group">
                <label>Kondisi Buah <span class="text-danger">*</span></label>
                <!-- <input class="form-control" type="text" name="kondisi_buah" /> -->
                <select name="kondisi_buah" id="kondisi_buah" class="form-control">
                    <option value="Coklat Kehitaman">Coklat Kehitaman</option>
                    <option value="Coklat Pudar">Coklat Pudar</option>
                    <option value="Coklat Segar">Coklat Segar</option>
                </select>
            </div>
            <!-- <div class="form-group">-->
            <button name="tambah_kriteria" type="submit" class="btn btn-primary"><span
                    class="glyphicon glyphicon-save"></span> Simpan</button>
            <a class="btn btn-danger" href="?m=kriteria"><span class="glyphicon glyphicon-arrow-left"></span>
                Kembali</a>
            <!--</div>-->
        </div>

        <div class="col-sm-6">
            <div class="form-group">
                <label>Warna Kulit <span class="text-danger">*</span></label>
                <!-- <input class="form-control" type="text" name="warna_kulit" /> -->
                <select name="warna_kulit" id="warna_kulit" class="form-control">
                    <option value="Hitam Busuk">Hitam Busuk</option>
                    <option value="Kream Segar">Kream Segar</option>
                </select>
            </div>

            <div class="form-group">
                <label>Warna Daging <span class="text-danger">*</span></label>
                <!-- <input class="form-control" type="text" name="warna_daging" /> -->
                <select name="warna_daging" id="warna_daging" class="form-control">
                    <option value="Kering dan Mati">Kering dan Mati</option>
                    <option value="Kropos">Kropos</option>
                    <option value="Keras dan Segar">Keras dan Segar</option>
                </select>
            </div>

            <div class="form-group">
                <label>Kondisi Pohon<span class="text-danger">*</span></label>
                <!-- <input class="form-control" type="text" name="kondisi_pohon" /> -->
                <select name="kondisi_pohon" id="kondisi_pohon" class="form-control">
                    <option value="Kering">Kering</option>
                    <option value="Lembab">Lembab</option>
                    <option value="Subur">Subur</option>
                </select>
            </div>

            <div class="form-group">
                <label>Bobot <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="bobot" value="<?=set_value('bobot')?>" />
            </div>
        </div>

    </form>
</div>