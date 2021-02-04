<?php
    include 'koneksi.php';
    $nama_file=$_FILES['file']['name'];
    $ukuran=$_FILES['file']['size'];
    if ($nama_file==""){
        echo "Fatal Error";
    }
    else{
        $uploaddir='./backup-restore/restore/';
        $alamatfile=$uploaddir.$nama_file;
        if (move_uploaded_file($_FILES['file']['tmp_name'],$alamatfile)){
            $filename = './backup-restore/restore/'.$nama_file.'';                                    
            $templine = '';
            $lines = file($filename);
                foreach ($lines as $line){
                    if (substr($line, 0, 2) == '--' || $line == '')
                    continue;
                    $templine .= $line;
                    if (substr(trim($line), -1, 1) == ';'){
                        mysqli_query($koneksi, $templine);
                        $templine = '';
                    }
                }
            echo "Restore Database Telah Berhasil, Silahkan dicek !";
        }
        else{
            echo "Restore Database Gagal, kode error = " . $_FILES['location']['error'];
        }    
    }

?>