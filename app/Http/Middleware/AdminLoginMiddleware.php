<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class AdminLoginMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::check())
        {
            $user = Auth::user();
            if($user->role == 1)
            {
                return $next($request);
            }
            else
            {                
                return redirect()->route('page.home');
            }
        }
        else 
        {
            return redirect()->route('login');
        }        
    }
}
