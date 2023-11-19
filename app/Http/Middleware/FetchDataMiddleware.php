<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\DB;

class FetchDataMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $user_id = auth()->id();
        $plan_id = $request->route('id', 1);// Pobierz userTableID z parametru ścieżki
        \View::share('user_id', $user_id);
        \View::share('plan_id', $plan_id);

        // Pobierz dane z bazy danych
        $userDataDINMOfetch = DB::table('userstable')
            ->where('userID', $user_id)
            ->where('userTableID', $plan_id)
            ->first();

        // Check if $userDataNotReadyToUse is not null before accessing daysInMo
        if ($userDataDINMOfetch) {
            $userDataDINMO = $userDataDINMOfetch->daysInMo;

            // Przekaż dane do widoków
            \View::share('userDataDINMO', $userDataDINMO);
        } else {
            // Handle the case where user data is not found
            \View::share('userDataDINMO', null);
        }

        return $next($request);
    }
}
