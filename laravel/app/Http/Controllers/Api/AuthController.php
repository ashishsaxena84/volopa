<?php
namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class AuthController extends Controller
{
    public function login(Request $request)
    {
        $attr = $request->validate([
            'email' => 'required|string|email|',
            'password' => 'required|string|min:6'
        ]);
        if (!Auth::attempt($attr)) {
            return response()->json([
                'message' => 'Invalid login details'
                           ], 401);
        }
        $token = auth()->user()
              ->createToken('auth_token')->plainTextToken;
        $user = auth()->user();
  
        $respon = [
                'status' => 'success',
                'msg' => 'Login successfully',
                'content' => [
                    'status_code' => 200,
                    'access_token' => $token,
                    'token_type' => 'Bearer',
                    'user_name' => $user->name,
                    'user_email' => $user->email,
                    'user_id' => $user->id,
                ]
            ];
   
            return response()->json($respon, 200);
    }
	public function convert(Request $request)
    {
        $rates = \DB::select("SELECT * FROM `exchange_rates` WHERE (currency_from = '".$request->currency_from."' and currency_to = '".$request->currency_to."') or (currency_from = '".$request->currency_to."' and currency_to = '".$request->currency_from."')");
		if(!empty($rates)){
			$from = $rates[0]->currency_from;
			$to = $rates[0]->currency_to;
			if($from == $request->currency_from && $to = $request->currency_to){
				if($request->from_value){
					$tovalue = $request->from_value * $rates[0]->value;
					$fromvalue = $request->from_value;
				}else{
					$tovalue = $request->to_value;
					$fromvalue =  $request->to_value / $rates[0]->value;
				}
				
			}elseif($from == $request->currency_to && $to = $request->currency_from){	
				if($request->to_value){
					$tovalue = $request->to_value;
					$fromvalue =  number_format($request->to_value * $rates[0]->value,2);
				}else{
					$tovalue = number_format($request->from_value / $rates[0]->value,2);
					$fromvalue = $request->from_value;
				}
			}
			$outvalueErr = "";
		}else{
			if($request->currency_from == $request->currency_to){
				$tovalue = $request->value;
				$fromvalue = $request->value;
				$outvalueErr = "";
			}else{
				$outvalueErr = "Invalid Parameters";
			}
		}
		
        $respon = [
                'status' => 'success',
                'val' => $outvalueErr,
                'content' => [
                    'status_code' => 200,
                    'from_value' => $fromvalue,
					'to_value' => $tovalue,
                ]
            ];
   
         return response()->json($respon, 200);
    }
}