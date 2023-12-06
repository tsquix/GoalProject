<?php
$con = mysqli_connect("localhost", "root", "", "users");
//$user_id = auth()->id();
$month = date('m');
$year = date('Y');// duze Y zwraca 2023 male y zwraca 23
//liczy dni w aktualnym miesiacu
$number = cal_days_in_month(CAL_GREGORIAN, $month, $year );
// $number = 31;
echo "plan quant ".$planQuant; //INFO do wyrzucenia
$queryCheck = "SELECT * FROM userstable WHERE userID = $user_id and userTableID = $id";
$resultCheck = mysqli_query($con, $queryCheck);
if ($resultCheck) {//sprawdza czy wynik cos zwraca
    if (mysqli_num_rows($resultCheck) > 0) {
        // iteruje plany1-10 do wyswietlenia i nadaje im id = i ->(1-10)
        for ($j = 1; $j <= $planQuant; $j++) {

    $query = "SELECT * FROM `plan$j`
    INNER JOIN userstable AS ut ON `plan$j`.`plan{$j}ID` = ut.`plan{$j}ID`
    WHERE ut.userTableID = $id
    AND ut.userID = $user_id";
    $result = mysqli_query($con, $query);
    
   
    //SPRAWDZA ILE DNI W MIESIACU JAK 30 USUWA VAL31
    while ($row = mysqli_fetch_array($result)) {
        
        // $daysinMO = 31;
        // $default31 = 31; 
        // if ($daysinMO==30) {// sprawdza dni w miesiacu i w zaleznosci od tego czy jest 31 czy 30 to tyle wyswielta a jak jest 30 to wyrzuca val31
        //     unset($row['val31']);
        //     $default31 = 30;
        //     }
            
        //wyswietla po lewo plan(2-7)
       
        echo "<tr class='trUpper'> ";
      echo "<th scope='row' class='w-15 text-nowrap planLicz task-name' id='plan" . $j . "'>" . $row['plan' . $j] . "</th>";
       
        //wyswietla checkboxy nadaja im id=plan(j)val(i) 
            //<td style='position: sticky; left: 0;' class='current-day'>//INFO wyrzucam sticky left 0 nie wiem po co to bylo
        for ($i = 1; $i <= $userDataDINMO; $i++) {
            echo "
                <td >
    <div class='form-check checkbox-xl'>
        <input class='form-check-input value" . $i . "' type='checkbox' id='plan" . $j . ".val" . $i . "' " . $row['val' . $i] . ">
    </div>
</td>


"; 
        }
    }
}}
else {
        header("Location: /dashboard");
        exit(); // Make sure to exit after sending the header
    }
}

echo "</tr</tbody>";// INFO to th border none oddziela main tabele od progresu
// echo "</tr><th style='border:none;' id='spacingTh'> </tbody>";// INFO to th border none oddziela main tabele od progresu
//TODO jak nie masz tabeli redirect do create view


mysqli_close($con);
?>