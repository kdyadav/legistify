<?php

namespace App\Http\Controllers;
use App\User;
use App\Meeting;
use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        if ($user->type == 1){
            $laywers = User::where(['type'=>2,'status'=>1])->get();
            return view('client')->withClient($user)->withLawyer($laywers);
        }
                
        else 
            {
                $meetings = Meeting::where(['lawyer_id'=>$user->id])->get();
                return view('lawyer')->withMeetings($meetings)->withLawyer($user);
        }
    }
}
