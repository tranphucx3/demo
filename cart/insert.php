
<?php
if($action="insert")
{
$hoten=$_POST['hoten'];
$dienthoai=$_POST['dienthoai'];
$diachi=$_POST['diachi'];
$email=$_POST['email'];
$phuongthuc=$_POST['phuongthuc'];
$ngay=date('Y-m-d');
$conn = mysqli_connect($servername, $username, $password, $database);
		if(isset($_SESSION['idnd'])){
		
			
			$sql=mysqli_query($conn,"select * from nguoidung where idnd='".$_SESSION['idnd']."'");
			$row=mysqli_fetch_array($sql);
			
			$idnd=$row['idnd'];
	
$sql="INSERT INTO hoadon(idnd,hoten,diachi,dienthoai,email,ngaydathang,trangthai) VALUES 
('$idnd','$hoten', '$diachi', '$dienthoai', '$email', '$ngay','1')";

}
	else 
	$sql="INSERT INTO hoadon(hoten,diachi,dienthoai,email,ngaydathang,trangthai) VALUES 
('$hoten', '$diachi', '$dienthoai', '$email', '$ngay','1')";
	
	mysqli_query($conn,$sql);

    $mahd=mysqli_insert_id($conn);
	
    foreach($_SESSION['cart'] as $stt => $soluong)
            {	
               $sql="select * from sanpham where idsp=$stt";
			   
               $rows=mysqli_query($conn,$sql);
               $row=mysqli_fetch_array($rows);
               //$mahd=$row['mahd'];
               $tensp=$row['tensp'];
        
               $gia=$row['gia']*((100-$row['khuyenmai1'])/100);
               $sql1 ="insert into chitiethoadon(mahd,Tensp,Soluong,gia,phuongthucthanhtoan) values('$mahd','$tensp','$soluong','$gia','$phuongthuc')";
			
              mysqli_query($conn,$sql1);
              
            }
    foreach($_SESSION['cart'] as $stt => $soluong)
            {
               
               $sql="select * from sanpham where idsp=$stt";
			   
               $rows=mysqli_query($conn,$sql);
               $row=mysqli_fetch_array($rows);
               $ban=$row['daban']+$soluong;
               $sql="UPDATE sanpham SET daban='$ban' WHERE idsp = $stt";
			
                mysqli_query($conn,$sql);
            }

unset($_SESSION['cart']);
}
?>
<!--<font color="red" size="5"><center>Đơn hàng của bạn đã thiết lập thành công chúng tôi sẽ chuyển hàng cho bạn trong thời gian sớm nhất</center></font>
<center><a href="index.php">Trở về trang chủ</a></center> 
-->
<?php 
echo "
							<script language='javascript'>
								alert('Đơn hàng của bạn đã thiết lập thành công chúng tôi sẽ chuyển hàng cho bạn trong thời gian sớm nhất');
								window.open('index.php','_self',5);
							</script>
						";
?>
