<?php
// wyswietlaj zawsze na poczatku bo tworzy cala strukture tabeli !!!!!!!!!!
$date = getdate();
$weekdays = array('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun');
$month = date('m');
$year = date('Y');
//liczy dni w aktualnym miesiacu
$numberOfDays = cal_days_in_month(CAL_GREGORIAN, $month, $year );

  $con = mysqli_connect("localhost", "root", "", "users");
  //$user_id = auth()->id();
  // $queryCheckDinMO = "SELECT daysInMo FROM userstable WHERE userID = $user_id and userTableID = $id";
  // $resultCheckDinMO = mysqli_query($con, $queryCheckDinMO);
  // $row3 = mysqli_fetch_array($resultCheckDinMO);
  echo "$userDataDINMO";//INFO do wyjebania potem

    // Funkcja pobierająca nazwę dnia tygodnia na podstawie jego numeru
  if (!function_exists('getDayNm')) {
    function getDayNm($dayIndex) {
        $weekdays = array('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
        return $weekdays[$dayIndex];
    }
}

 // Wygenerowanie listy dni
echo "<div class='table-container container-fluid'>
<table id='mainTable' class='table table-bordered table-sm'>";

// <table id='mainTable' class='table table-bordered table-info table-sm'>"; INFO stary styl
// echo "<thead id='upperThead' class='thead-light' style='position: sticky; top: 0; z-index: 1;'><tr>

echo "<thead id='upperThead' class='' style='position: sticky; top: 0; z-index: 1;'><tr>
<th scope='col'>" . $date['weekday'] . "</th>";

//wyswietl numery dni tygodnia
for ($day = 1; $day <= $userDataDINMO; $day++) {
      $dayOfWeek = date('w', strtotime("$year-$month-$day"));
       echo "<th scope='col'>" . getDayNm($dayOfWeek) . "</th>";
    }
echo "</tr> </thead><tbody class='upperTbody'>";

//wyswietl w th po lewej date
echo "<tr>";
  
  echo "<th scope='row' class='text-nowrap' id='countValues'> " . $date['month'] . " " . $date['mday'] . "</th>";
   for ($day = 1; $day <= $userDataDINMO; $day++) {
      $dayOfWeek = date('w', strtotime("$year-$month-$day"));
      echo "<td class='nod'>" . $day . "</td>";
    }
echo "</tr>";
?>