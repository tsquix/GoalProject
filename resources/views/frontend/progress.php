<?php 

echo "<thead id='lowerThead' class = 'thead-light'> ";
// echo "<tr class='hidden'>";
// echo "<th scope='row' class='w-15 thProg '>Done</th>";
//          for($i=1;$i<=30;$i++){
//          echo "<td class='tdProg' id='Done".$i."'>NO!</td>";
//          }
//          echo "</tr>";


echo "<tr>
<th scope='col'>Progress%</th>";

//wyswietl numery dni tygodnia
 for($i=1;$i<=$userDataDINMO;$i++){
         echo "<th scope='col-2' class='fixedw' id='tdPercent".$i."'>0%</th>";
         }
echo " </thead></tr>";

echo "<tbody class='lowerTbody'><th scope='row-2' class=' thProg'> Complete</th>";

        for($i=1;$i<=$userDataDINMO;$i++){
         echo "<td class='tdProg fixedw' id='complete".$i."'>0</td>";
         }
        echo "</tr>";
         echo "<th scope='row-2' class=' thProg'>Incomplete</th>";
         for($i=1;$i<=$userDataDINMO;$i++){
         echo "<td class='tdProg fixedw' id='incomplete".$i."'>0</td>";
         }
         echo "</tr>";
?>