<?php

namespace App\Http\Controllers\SW;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        if($request->isMethod('post')){
            
            $request->validate([
                'email' => 'required',
                'password' => 'required'
            ]);

            $inputs = [
                'email' => $request->email,
                'password' => $request->password
            ];

            if (Auth::attempt($inputs)){
                return redirect()->route('sw.home')->with([
                    'message' => 'Login success'
                ]); 
            }
            
            return back()->with('msg', 'Email or password incorect');
            
        }
        return view('sw.login');
    }

    public function logout()
    {
        Auth::logout(); 
        return redirect()->route('sw.login');
    }
}
