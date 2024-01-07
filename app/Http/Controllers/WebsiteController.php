<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class WebsiteController extends Controller
{
    public function index()
    {
        return view('frontend.index');
    }

    public function showGoal(Request $request, $id = 1)
    {
        return view('frontend.index', ['id' => $id]);
    }

    public function planQuantAdj(Request $request){
        $id = $request->route('id', 1);
        $user_id = auth()->id();//INFO jak wyrzuce ta linijke to wywala blad
        $planQuant = $request->input('planQuant');
        $goalid = $request->input('goalId');
        $addPlan = $request->input('addPlan');
        $removePlan = $request->input('removePlan');

        if($addPlan){
             $queryPlanQuantAdjAdd = "UPDATE userstable SET planQuant = '$planQuant' WHERE userID = '$user_id' AND userTableID = '$goalid'";
            DB::statement($queryPlanQuantAdjAdd);
            return 'dodano planQ: '.+$planQuant;
        }
        elseif($removePlan){
            $queryPlanQuantAdjRem = "UPDATE userstable SET planQuant = '$planQuant' WHERE userID = '$user_id' AND userTableID = '$goalid'";
            DB::statement($queryPlanQuantAdjRem);
            return 'usunieto planQ: '.+$planQuant;
        }
    }


   public function updateChecked(Request $request) {
   
    $id = $request->route('id', 1); // Pobranie parametru 'id' z URL lub ustawienie domyślnej wartości 1 dla kontrolera dla goaldata jest przesyłany ajaxem
    if ($request->has('planID') && $request->has('valID')) {
        $user_id = auth()->id();//INFO jak wyrzuce ta linijke to wywala blad
        $planID = $request->input('planID');
        $valID = $request->input('valID');
        $status = $request->input('status');
        $goalid = $request->input('goalId');

        if ($status === '1') {
            $queryUpdateChecked = "UPDATE $planID SET $valID = 'checked' WHERE userTableID = $goalid and user_id = $user_id";
            DB::statement($queryUpdateChecked);
           return ['planID' => $planID, 'valID' => $valID, 'goalid' => $goalid, 'user_id' => $user_id];
        } elseif ($status === '0') {
            $queryUpdateChecked = "UPDATE $planID SET $valID = '' WHERE userTableID = $goalid and user_id = $user_id";
            DB::statement($queryUpdateChecked);
            return 'usunięte';
        }
    }
    return 'Invalid data'; // Obsłuż inne przypadki błędów
}
 
         public function updateName(Request $request){//FIXME zbieżność nazw $id
        $id = $request->route('id', 1);
         if ($request->has('planId') && $request->has('newText')) {
            $user_id = auth()->id();
            $plan_Id = $request->input('planId');
            $newText = $request->input('newText');
            $id = $request->input('goalId');
            $queryUpdate = "UPDATE $plan_Id SET $plan_Id = '$newText' WHERE userTableID = $id and user_id = $user_id";
            //OBSŁUGA PLANSPEC PLANWEK majace kolumny oprocz planwek planspec : planwek1a/b/c...
            if(str_ends_with($plan_Id, 'a')){
                $trimmed = rtrim($plan_Id, 'a');
                $queryUpdate = "UPDATE $trimmed SET $plan_Id = '$newText' WHERE userTableID = $id AND user_id = $user_id";
            }
            if(str_ends_with($plan_Id, 'b')){
                $trimmed = rtrim($plan_Id, 'b');
                $queryUpdate = "UPDATE $trimmed SET $plan_Id = '$newText' WHERE userTableID = $id AND user_id = $user_id";
            }
            if(str_ends_with($plan_Id, 'c')){
                $trimmed = rtrim($plan_Id, 'c');
                $queryUpdate = "UPDATE $trimmed SET $plan_Id = '$newText' WHERE userTableID = $id AND user_id = $user_id";
            }

            DB::statement($queryUpdate);
            return 'zaaktualizowano pole pozdro';
    }
}


    public function newTable(Request $request) {
    if ($request->has('action') && $request->input('action') === 'call_this') {
        $user_id = auth()->id();
        // Sprawdzanie ile użytkownik ma tabel, by nadać userTableID
        $tableCount = DB::table('userstable')
            ->where('userID', $user_id)
            ->count();
        // Jeśli ma 0 tabel, to userTableID = 1 w inaczej iteruj
        $userTableID = $tableCount > 0 ? $tableCount + 1 : 1; //TODO FIXME  jak user ma tabele 1 2 3 i sie usunie tabele 2 to zostanie nastepnie utworzona tabela nr 3 poraz kolejny
        
        $queries = [];
        $planxIDs = [];
        $ExamplePlanNames = ['wake up early(7am)', 'exercise', 'shower', 'self care', 'healthy breakfast', 'read a book', 'wake up early(7am)', 'exercise', 'shower', 'self care'];
        //INSERT DO PLAN 1-10
        for ($i = 1; $i <= 10; $i++) {
            $z = ($i-1);
            $queryNewTable = "INSERT INTO `plan$i` (`userTableID`, `plan$i`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `user_id`) 
                VALUES ('$userTableID', '$ExamplePlanNames[$z]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '$user_id');";
            $queries[$i] = $queryNewTable;
            DB::statement($queries[$i]);
            $planxID = DB::getPdo()->lastInsertId();
            $planxIDs["plan$i"] = $planxID;
        }
        $planWS = ['planwek', 'planspec']; 
        // PRZYKLADOWY SHIT
            $ExamplePlanNameswek = ['wake up early(7am)', 'exercise', 'shower', 'self care', 'healthy breakfast', 'read a book', 'wake up early(7am)', 'exercise', 'shower', 'self care', 'wake up early(7am)', 'exercise', 'shower', 'self care', 'healthy breakfast', 'read a book', 'wake up early(7am)', 'exercise', 'shower', 'self care', 'wake up early(7am)', 'exercise', 'shower', 'self care', 'healthy breakfast', 'read a book', 'wake up early(7am)', 'exercise', 'shower', 'self care', 'wake up early(7am)', 'exercise', 'shower', 'self care', 'healthy breakfast', 'read a book', 'wake up early(7am)', 'exercise', 'shower', 'self care' ];
            for ($x = 0; $x <= 1; $x++){
            for ($i = 1; $i <= 5; $i++) //INFO: planspec/wek 5 ma ... puste po to warunki
            {
                if($i == 5)
                {
                    $z = ($i-1);
                    $queryNewWS = "INSERT INTO `".$planWS[$x].$i."` (`userTableID`, `user_id`, `".$planWS[$x].$i."`, `".$planWS[$x].$i."a`, `".$planWS[$x].$i."b`, `".$planWS[$x].$i."c`, `val1`, `val2`, `val3`, `val4`) 
                    VALUES ('$userTableID', '$user_id', ' ... ', ' ... ', ' ... ', ' ... ', '', '', '', '')";
                }
                else
                {
                $z = ($i-1);
                    $queryNewWS = "INSERT INTO `".$planWS[$x].$i."` (`userTableID`, `user_id`, `".$planWS[$x].$i."`, `".$planWS[$x].$i."a`, `".$planWS[$x].$i."b`, `".$planWS[$x].$i."c`, `val1`, `val2`, `val3`, `val4`) 
                VALUES ('$userTableID', '$user_id', '".$ExamplePlanNameswek[$z]."', '".$ExamplePlanNameswek[$z+5]."', '".$ExamplePlanNameswek[$z+10]."', '".$ExamplePlanNameswek[$z+15]."', '', '', '', '')";
                }
                if($x == 0)
                    {
                        $queries2[$i] = $queryNewWS;
                        DB::statement($queries2[$i]);
                        $planxID2 = DB::getPdo()->lastInsertId();
                        $planxIDs2["planwek$i"] = $planxID2;
                    }
                if($x == 1)
                {
                    $queries3[$i] = $queryNewWS;
                    DB::statement($queries3[$i]);
                    $planxID3 = DB::getPdo()->lastInsertId();
                    $planxIDs3["planspec$i"] = $planxID3;
                }
            }  
        }
        //INSERT DO USERTABLE
        $queryUserstableNT = "INSERT INTO `userstable` 
        (`userID`, `userTableID`, `plan1ID`, `plan2ID`, `plan3ID`, `plan4ID`, `plan5ID`, `plan6ID`, `plan7ID`, `plan8ID`, `plan9ID`, `plan10ID`, `planwek1ID`, `planwek2ID`, `planwek3ID`, `planwek4ID`, `planwek5ID`, `planspec1ID`, `planspec2ID`, `planspec3ID`, `planspec4ID`, `planspec5ID`) 
            VALUES ('$user_id', '$userTableID', '{$planxIDs['plan1']}', '{$planxIDs['plan2']}', '{$planxIDs['plan3']}', '{$planxIDs['plan4']}', '{$planxIDs['plan5']}', '{$planxIDs['plan6']}', '{$planxIDs['plan7']}', '{$planxIDs['plan8']}', '{$planxIDs['plan9']}', '{$planxIDs['plan10']}', '{$planxIDs2['planwek1']}', '{$planxIDs2['planwek2']}', '{$planxIDs2['planwek3']}', '{$planxIDs2['planwek4']}', '{$planxIDs2['planwek5']}', '{$planxIDs3['planspec1']}', '{$planxIDs3['planspec2']}', '{$planxIDs3['planspec3']}', '{$planxIDs3['planspec4']}', '{$planxIDs3['planspec5']}');";
        DB::statement($queryUserstableNT);  
        return $userTableID;
    }}
}
