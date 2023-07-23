<?php require_once 'functions.php';
 
   $kode_kriteria = $_POST['kode_kriteria'];
    $nama_kriteria = $_POST['nama_kriteria'];
    $kondisi_buah = $_POST['kondisi_buah'];
    $warna_kulit = $_POST['warna_kulit'];
    $warna_daging = $_POST['warna_daging'];
    $kondisi_pohon = $_POST['kondisi_pohon'];
    $kondisi_tanah = $_POST['kondisi_tanah'];
    $bobot = $_POST['bobot'];

    if($kode_kriteria=='' || $nama_kriteria=='' || $bobot=='')
        print_msg("Field bertanda * tidak boleh kosong!");
    else{
        $db->query("UPDATE tb_kriteria SET nama_kriteria='$nama_kriteria',warna_kulit='$warna_kulit',kondisi_buah='$kondisi_buah',warna_daging='$warna_daging',kondisi_pohon='$kondisi_pohon',kondisi_tanah='$kondisi_tanah', bobot='$bobot' WHERE kode_kriteria='$kode_kriteria'");
        redirect_js("index.php?m=kriteria");
    }
?>    