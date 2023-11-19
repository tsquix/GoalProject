<?php
$con = mysqli_connect("localhost", "root", "", "users");
//$user_id = auth()->id();
$planwekspec = ['planwek', 'planspec'];
$weeklyspec = ['Weekly', 'Specific', 'Weekly'];

$queryCheck = "SELECT * FROM userstable WHERE userID = $user_id and userTableID = $id";
$resultCheck = mysqli_query($con, $queryCheck);
if ($resultCheck) {
    if (mysqli_num_rows($resultCheck) > 0){
    for($x = 0; $x<=1; $x++){
    echo "
            <table class='table table-info table-bordered table-container lower-tables '>
                <thead>
                    <tr>
                        <th scope='col'>#</th>
                        <th scope='col' class='col-2'>Week 1</th>
                        <th scope='col' class='col-2'>Week 2</th>
                        <th scope='col' class='col-2'>Week 3</th>
                        <th scope='col' class='col-2'>Week 4</th>
                    </tr>
                </thead>
                <tbody><tr>
                    ";
                    if($x == 1 )
        echo"<th scope='row' rowspan='6' class='w-15 thWeek text-nowrap planLicz text-center ' style='word-wrap: break-word'>".$weeklyspec[1]."<br>".$weeklyspec[2]."</th></tr>";
            else
    echo"<th scope='row' rowspan='6' class='w-15 thWeek text-nowrap planLicz text-center ' style='word-wrap: break-word'>".$weeklyspec[$x]."</th></tr>";
                $z = 1;
                
    for ($j = 1; $j <= 5; $j++) {
        
        $query = "SELECT * FROM ".$planwekspec[$x] . $j ." WHERE user_id = " . $user_id . " AND userTableID = $id";
        $result = mysqli_query($con, $query);
        $abc = ['', '','a', 'b', 'c'];
        echo "<tr>
                ";
        while ($row = mysqli_fetch_array($result)) {
        for($i=1; $i<=4;$i++){
                    echo "
                 <td>
                    <div class='form-check checkbox-xl d-flex justify-content-between margin-bt-top align-items-center'>
                        <div class=''>
                            <span class='task-name ' id = '".$planwekspec[$x] . $j.$abc[$i]."'>" . $row[$planwekspec[$x] . $j. $abc[$i] ] . "</span>
                        </div>
                        <div class=''>
                            <input class='form-check-input' type='checkbox' value='' id='".$planwekspec[$x] . $j . ".val" . $i . "' " . $row['val' . $i] . ">  
                        </div>
                      </div>
                 </td>";        
        }
    }}
    echo "  </tr>
                </tbody>
            </table>";
    }
}

}
// <div class='d-flex justify-content-between '>
//                             <span class='task-name'> xd</span>
//                         </div>
mysqli_close($con);
?>
