<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class RedirectIfNotCreator
{

    public function handle(Request $request, Closure $next , $guard ='creator')
    {

        if (!auth()->guard($guard)->check()) {
            return redirect()->route('user.login');
        }
        return $next($request);
    }
}
