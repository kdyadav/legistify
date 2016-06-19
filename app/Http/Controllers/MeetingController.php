<?php

namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Meeting;
use App\Http\Requests;
use Illuminate\Support\Facades\Auth;

class MeetingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return "Index";
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return "Create";
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->only('user_id','lawyer_id','meeting_time');
        Meeting::create($data);
        $user = Auth::user();
        $laywers = User::where(['type'=>2,'status'=>1])->get();
        $message = "Meeting Scheduled Succefully!!";
        return view('client')->withClient($user)->withLawyer($laywers)->withMessage($message);

        //return "New meeting created";
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return "Show";
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return "Edit";
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->only('status');
        $meeting = Meeting::find($id);
        $meeting->update($data);
        if($data['status'] == 1) mail($meeting->user->email,"Meeting Confirmation","Your meeting Accepted");
        else                   mail($meeting->user->email,"Meeting Confirmation","Your meeting rejected");
        $lawyer = Auth::user();
        $meetings = Meeting::where(['lawyer_id'=>$lawyer->id])->get();
        return view('lawyer')->withMeetings($meetings)->withLawyer($lawyer);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return "Destroy";
        
        //
    }
}
