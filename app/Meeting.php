<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Meeting extends Model
{
    protected $fillable = [
        'user_id', 'lawyer_id','status','meeting_time'
    ];
    public function user()
    {
    	return $this->belongsTo('App\User')->where( 'type' , '=' , 1);
    }
}
