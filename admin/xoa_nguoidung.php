 <?php
include '../include/connect.php';
include 'function/function.php';
$delete = "delete from nguoidung where idnd='{$_GET['idnd']}'";

$conn = mysqli_connect($servername, $username, $password, $database);
$del = mysqli_query($conn,$delete);
if ($del)
	{
	redirect ("admin.php?admin=hienthind", "Xóa người dùng thành công. ", 2);
	}
	else
		echo "Xóa người dùng thất bại";
?>