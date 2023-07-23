
<div class="page-header">
    <h1>Hama</h1>
</div>
    <div class="form-group">
     
     <a href='#' data-target='#add_modal' class='btn btn-primary btn-small' data-toggle='modal'> <span class="glyphicon glyphicon-plus"></span> Tambah</a>
            </div>
    <div class="table-responsive">
        <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Nama</th>
                <th>Deskripsi</th>
                <th>Foto</th>
                <th>Cara Penanganan</th>
                <th>Aksi</th>
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
            <td><img src="<?= "foto-hama/".$row->foto?>" width="100px" ></td>
            <td><?=$row->cara_penanganan?></td>
            <td>
           
              <a style="cursor: pointer;" onclick="select_data('<?=$row->id_hama ?>',
			  '<?=$row->nama ?>','<?=$row->deskripsi ?>','<?=$row->foto ?>','<?= $row->foto ?>','<?=$row->cara_penanganan ?>')" <i data-toggle="modal" data-target="#edit_modal" class="btn btn-primary"> Edit </i> </a>


                <a class="btn btn-xs btn-danger" href="aksi.php?act=hama_hapus&ID=<?=$row->id_hama?>" onclick="return confirm('hapus data?')"><span class="glyphicon glyphicon-trash"></span></a>
            </td>
        </tr>
        <?php endforeach;?>
        </tbody>
        </table>
    </div>





      <!-- Edit Hama -->
    <div id="edit_modal" class="modal fade" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Edit Hama</h4>
        </div>
        <div class="modal-body">
          <?php include "hama_ubah.php"; ?>

      </div>
      <!--  <div class="modal-footer">
       <button type="submit" class="btn btn-success" data-dismiss="modal">Login</button>
       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div> -->
      </div> 
      </div>
      </div>
      <!-- End Modal Edit Hama -->






      <!-- Tambah Hama -->
    <div id="add_modal" class="modal fade" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Tambah Hama</h4>
        </div>
        <div class="modal-body">
            
          <?php include "hama_tambah.php"; ?>

      </div>
      <!--  <div class="modal-footer">
       <button type="submit" class="btn btn-success" data-dismiss="modal">Login</button>
       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div> -->
      </div> 
      </div>
      </div>
      <!-- End Modal Tambah Hama -->
	  
	  
<script type="text/javascript">
function select_data($id_hama,$nama,$deskripsi,$foto,$previewimage,$cara_penanganan){
$("#tkode").val($id_hama);
$("#tnama").val($nama);
$("#konbuah").val($deskripsi);

$("#tkulit").val($foto);
$("#preview-image").val($foto);
var img = document.createElement("img");
img.src = "foto-hama/"+$previewimage;
var src = document.getElementById("header");
img.setAttribute("src", "foto-hama/"+$previewimage);

img.setAttribute("width", "260");
img.setAttribute("height", "100");
img.setAttribute("alt", "The Pulpit Rock");
src.appendChild(img);
 
$("#tdaging").val($cara_penanganan);

}
</script>	  