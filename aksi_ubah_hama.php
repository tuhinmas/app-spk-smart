<?php require_once 'functions.php';
 
   $id_hama = $_POST['id_hama'];
   $nama = $_POST['nama'];
    $deskripsi = $_POST['deskripsi'];
    $foto  = $filename =$_FILES['foto']['name']; 
    $cara_penanganan = $_POST['cara_penanganan'];

    if($deskripsi=='' || $nama==''|| $cara_penanganan==''){
        print_msg("Field bertanda * tidak boleh kosong!");
    }elseif ($foto=='') {
        $db->query("UPDATE tbl_hama SET nama='$nama',deskripsi='$deskripsi',foto ='no-image-available.png',cara_penanganan='$cara_penanganan' WHERE id_hama='$id_hama'");     
        redirect_js("index.php?m=hama");
    }else{
        move_uploaded_file($_FILES['foto']['tmp_name'], "foto-hama/".$_FILES['foto']['name']);
        $db->query("UPDATE tbl_hama SET nama='$nama',deskripsi='$deskripsi',foto='$filename',cara_penanganan='$cara_penanganan' WHERE id_hama='$id_hama'");     
       
        redirect_js("index.php?m=hama");
    }

   
?>    