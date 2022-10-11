
<!DOCTYPE html>
<html>
<head> 
<title>Menampilkan data dari Database</title>
<style>
    body {
        background-color : #00a2c6;
;
    }
table, th, td {
    border: 1px solid black;
    background-color : white;
 }
}
</style>
</head>
<body>
<b> Database Output</b> <br><br>


<?php
include "koneksi.php";
$query="SELECT * FROM tbl_siswa";
$result = mysqli_query($con, $query);

if(mysqli_num_rows($result) > 0)
{
 echo "Tabel Siswa";
 echo "<table>";
 
            echo "<tr>";
                echo "<th>ID Siswa</th>";
                echo "<th>Nama Siswa</th>";
                echo "<th>Jenis Kelamin</th>";
                echo "<th>Asal Sekolah</th>";
    echo "<th>Nama Lomba</th>";
            echo "</tr>";
  
 while($row =mysqli_fetch_array($result))
 {
  echo "<tr>";
                echo "<td>" . $row['id_siswa'] . "</td>";
                echo "<td>" . $row['nama_siswa'] . "</td>";
                echo "<td>" . $row['jenis_kelamin'] . "</td>";
                echo "<td>" . $row['asal_sekolah'] . "</td>";
    echo "<td>" . $row['nama_lomba'] . "</td>";
    
        echo "</tr>";
 }
 echo "</table>";
}



$query="SELECT * FROM tbl_lomba";
$result = mysqli_query($con, $query);

if(mysqli_num_rows($result) > 0)
{
    echo "Tabel Lomba";
    echo "<table>";
               echo "<tr>";
                   echo "<th>ID Lomba</th>";
                   echo "<th>ID Siswa</th>";
                   echo "<th>Nama Lomba</th>";
                   echo "<th>Peringkat</th>";
               echo "</tr>";
     
    while($row =mysqli_fetch_array($result))
    {
     echo "<tr>";
                   echo "<td>" . $row['id_lomba'] . "</td>";
                   echo "<td>" . $row['id_siswa'] . "</td>";
                   echo "<td>" . $row['nama_lomba'] . "</td>";
                   echo "<td>" . $row['peringkat'] . "</td>";
           echo "</tr>";
    }
    echo "</table>";
   }
?>

</body>


</html>               