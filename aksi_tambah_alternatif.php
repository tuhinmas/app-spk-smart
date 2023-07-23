<?php 
require_once('functions.php');
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    
    if($kode=='' || $nama=='')
        print_msg("Field yang bertanda * tidak boleh kosong!");
    elseif($db->get_results("SELECT * FROM tb_alternatif WHERE kode_alternatif='$kode'"))
        print_msg("Kode sudah ada!");
    else{
        $db->query("INSERT INTO tb_alternatif (kode_alternatif, nama_alternatif) 
            VALUES ('$kode', '$nama')");            
        $db->query("INSERT INTO tb_rel_alternatif(kode_alternatif, kode_kriteria, nilai) 
            SELECT '$kode', kode_kriteria, -1 FROM tb_kriteria");       
        redirect_js("index.php?m=alternatif");
    }
?>