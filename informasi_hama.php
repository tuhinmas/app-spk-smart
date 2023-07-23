<div class="page-header">
    <h1>Informasi Hama</h1>
</div>
<div class="table-responsive">
    <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Nama</th>
                <th>Deskripsi</th>
                <th>Foto</th>
                <th>Cara Penanganan</th>
            </tr>
        </thead>
        <tbody>
            <?php
        $q = esc_field($_GET['q']);
        $rows = $db->get_results("SELECT * FROM tbl_hama ORDER BY id_hama DESC");
        $no=0;
        foreach($rows as $row):?>
            <tr>
                <td><?=$row->nama ?></td>
                <td><?=$row->deskripsi?></td>
                <td><a target="_blank" href="<?= "foto-hama/".$row->foto?>"><img src="<?= "foto-hama/".$row->foto?>"
                            width="100px"></a>
                </td>
                <td><?=$row->cara_penanganan?></td>

            </tr>
            <?php endforeach;?>
        </tbody>
    </table>
</div>



<script type="text/javascript">
function select_data($id_hama, $nama, $deskripsi, $foto, $previewimage, $cara_penanganan) {
    $("#tkode").val($id_hama);
    $("#tnama").val($nama);
    $("#konbuah").val($deskripsi);

    $("#tkulit").val($foto);
    $("#preview-image").val($foto);
    var img = document.createElement("img");
    img.src = "foto-hama/" + $foto;
    var src = document.getElementById("header");
    src.appendChild(img);

    $("#tdaging").val($cara_penanganan);

}
</script>