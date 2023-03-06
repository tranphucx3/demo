<?php
include'../include/connect.php';
include'function/function.php';
$delete = "delete from danhmuc where madm='{$_GET['madm']}'";
$conn = mysqli_connect($servername, $username, $password, $database);
$del = mysqli_query($conn,$delete);
if ($del)
    {
        redirect ("admin.php?admin=hienthidm", "Xoá danh mục thành công. ", 1);
    }
    else
        echo "Xóa danh mục thất bại";
?>
