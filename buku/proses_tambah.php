<?php
#1 Meng-koneksikan PHP ke MYSQL
include("../koneksi.php"); 

#2 Mengambil value dari form tambah
$pnb = $_POST['pnb'];
$ktg = $_POST['ktg'];
$jdl_buku = $_POST['jdl_buku'];
$pengarang = $_POST['pengarang'];
$thn_terbit = $_POST['thn_terbit'];
$isbn = $_POST['isbn'];
$jml_hal = $_POST['jml_hal'];
$stok = $_POST['stok'];
$nama_foto = $_FILES['cover_buku']['name'];
$tmp_foto = $_FILES['cover_buku']['tmp_name'];

#3 Query Insert(proses tambah data)
$query = "INSERT INTO buku (id_penerbit,id_ktg,jdl_buku,pengarang,thn_terbit,isbn,jml_hal,stok,cover_buku) VALUES ('$pnb', '$ktg', '$jdl_buku', '$pengarang', '$thn_terbit', '$isbn', '$jml_hal', '$stok','$nama_foto')";

move_uploaded_file($tmp_foto, "../cover_buku/" . $nama_foto);

$tambah = mysqli_query($koneksi, $query);

#4 Jika berhasil triggernya apa?
if($tambah){
    header("location:index.php");
}else{
    echo "Data gagal ditambah";
}
?> 