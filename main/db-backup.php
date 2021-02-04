<?php
//error_reporting(0); //Menghasilkan backup DB
backupDatabaseTables('172.16.10.29','global','12345678','db_fdp_shop');
function backupDatabaseTables($dbHost,$dbUsername,$dbPassword,$dbName,$tables = '*'){
    $return='';
    $db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

    if($tables == '*'){
        $tables = array();
        $result = $db->query("SHOW TABLES");
        while($row = $result->fetch_row()){
        $tables[] = $row[0];
        }
    }else{
        $tables = is_array($tables)?$tables:explode(',',$tables);
    }

    foreach($tables as $table){
    $result = $db->query("SELECT * FROM $table");
    $numColumns = $result->field_count;
    
    $return .= "DROP TABLE $table;";
    
    $result2 = $db->query("SHOW CREATE TABLE $table");
    $row2 = $result2->fetch_row();
    
    $return .= "\n\n".$row2[1].";\n\n";
    
    for($i = 0; $i < $numColumns; $i++){
        while($row = $result->fetch_row()){
            $return .= "INSERT INTO $table VALUES(";
            for($j=0; $j < $numColumns; $j++){
                
                $row[$j] = addslashes($row[$j]);
                //$row[$j] = preg_replace("\n","\\n", $row[$j] );
                if (isset($row[$j])) { 
                    $return .= '"'.$row[$j].'"' ; 
                } else { 
                    $return .= '""'; 
                }
                if ($j < ($numColumns-1)) { $return.= ','; }
            }
            $return .= ");\n";
            }
        }
        $return .= "\n\n\n";
    }

 //simpan file
 $handle = fopen("./backup-restore/backup/backup-aplikasi-kasir-".date('d-m-Y')."-".time().".sql","w+");
 fwrite($handle,$return);
 fclose($handle);

 echo json_encode(
     array(
         'Response' => true,
         'Message' => 'Berhasil melakukan backup !',
         'Link' => './main/backup-restore/backup/backup-aplikasi-kasir-'.date('d-m-Y').'-'.time().'.sql'
     )
 );
}