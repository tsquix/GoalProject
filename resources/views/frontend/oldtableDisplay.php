<?php
$con = mysqli_connect("localhost", "root", "", "users");
$user_id = auth()->id();

$query = "SELECT userTableID FROM `userstable` where userID = $user_id";
 ;
 echo "<h1 >Your trackers: </h1>";
    $result = mysqli_query($con, $query);
    while ($row = mysqli_fetch_array($result)) {
      
        echo '
                   
        
<div class="d-flex justify-content-center" style="padding:5px;">
        <div id="showcreated">
       
       <a href = goal/'.$row['userTableID'].'> <h1 class="text-center">' . $row['userTableID'] . '</h1>
             <img src="https://i.ibb.co/NSPGNmH/obraz-2023-11-03-131144639.png" alt="imydz" srcset="" style="width:450px; height:300px;">
            <a/>
       </div>
       ';
       echo "</div>";
}

?>