<?php

namespace App\Http\Controllers;
use App\Models\Curlist;

use Illuminate\Http\Request;

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
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
	public function list()
    {
		$list = Curlist::all();
        return view('list')->with('list',$list);
    }
	public function editlist($id)
    {
		
		$list = Curlist::where('id',$id)->first();
        return view('editlist')->with('list',$list);
    }
	public function storelist(Request $request, $id)
    {
		if(empty($request->valuecu)){
			return redirect('/list')->with('error','currency value can not be empty');
		}
		$list = Curlist::where('id',$id)->first();
		if(!empty($list)){
			$list['value'] = $request->valuecu;
			$list->save();
			return redirect('/list')->with('success','currecy updated');
		}else{
			return redirect('/list')->with('error','something wrong');
		}
    }
}
