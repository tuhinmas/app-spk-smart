<?php

require_once 'functions.php';
 $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    $kondisi_buah= $_POST['kondisi_buah'];
    $warna_kulit= $_POST['warna_kulit'];
    $warna_daging= $_POST['warna_daging'];
    $kondisi_pohon= $_POST['kondisi_pohon'];
    $kondisi_tanah= $_POST['kondisi_tanah'];
    $bobot = $_POST['bobot'];
    
    if($kode=='' || $nama=='' || $bobot=='')
        print_msg("Field bertanda * tidak boleh kosong!");
    elseif($db->get_results("SELECT * FROM tb_kriteria WHERE kode_kriteria='$kode'"))
        print_msg("Kode sudah ada!");
    else{
        $db->query("INSERT INTO tb_kriteria (kode_kriteria, nama_kriteria,kondisi_buah,warna_kulit,warna_daging,kondisi_pohon,kondisi_tanah, bobot) 
            VALUES ('$kode', '$nama', '$kondisi_buah','$warna_kulit','$warna_daging','$kondisi_pohon','$kondisi_tanah','$bobot')");               
        $db->query("INSERT INTO tb_rel_alternatif(kode_alternatif, kode_kriteria, nilai) 
            SELECT kode_alternatif, '$kode', -1  FROM tb_alternatif");   

        redirect_js("index.php?m=kriteria");
    }
   ?>                    