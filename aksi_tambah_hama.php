<?php

require_once 'functions.php';
    $nama = $_POST['nama'];
 $deskripsi = $_POST['deskripsi'];
$foto               = $filename =$_FILES['foto']['name']; 
$cara_penanganan = $_POST['cara_penanganan'];

    // echo $foto;
    // exit();
    if($deskripsi=='' || $nama==''|| $cara_penanganan==''){
        print_msg("Field bertanda * tidak boleh kosong!");
    }elseif ($foto=='') {
        
        $db->query("INSERT INTO tbl_hama (nama,deskripsi,foto,cara_penanganan) 
            VALUES ('$nama', '$deskripsi','no-image-available.png','$cara_penanganan')");               
        redirect_js("index.php?m=hama");
    }
    else{
        move_uploaded_file($_FILES['foto']['tmp_name'], "foto-hama/".$_FILES['foto']['name']);
        $row = $db->query("INSERT INTO tbl_hama (nama,deskripsi,foto,cara_penanganan) 
            VALUES ('$nama', '$deskripsi','$filename','$cara_penanganan')");               

        redirect_js("index.php?m=hama");
    }
   ?>                    