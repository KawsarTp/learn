<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class Both
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if(auth()->check() || auth()->guard('creator')->check()){
            return $next($request);
        }
        return redirect()->route('user.login');
        
        
    }
}
