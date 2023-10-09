<?php

namespace App\Http\Controllers\Authentication;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function index()
    {
        return view('authentication.login');
    }

    public function validate_input($request)
    {
        $validate = Validator::make($request->all(),[
            "email" => [
   'required', 'email:rfc',
   function($attribute, $value, $fail) {
   if (!filter_var($value, FILTER_VALIDATE_EMAIL)) {
      $fail($attribute . ' is invalid.');
   }
}],
            "password" => "required|max:50"
        ]);

        $attributeNames = [
            "email" => "Email",
            "password" => "Password"
        ];

        $validate->setAttributeNames($attributeNames);
        if($validate->fails()){
            $errors = $validate->errors();
            return $errors->all();
        }
        return true;
    }

    public function process(Request $request)
	{
//        dd(env('DB_DATABASE'));
        $validation_res = $this->validate_input($request);
        if ($validation_res !== true) {
            return response()->json([
                'message' => $validation_res
            ],400);
        }
//        dd($request->email);
        $user_data = std_get([
            "table_name" => "MA_USRACC",
            "where" => [
                [
                    "field_name" => "MA_USRACC_EMAIL",
                    "operator" => "=",
                    "value" => $request->email,
                ]
            ],
            "first_row" => true
        ]);
//        dd($user_data);

        if ($user_data == NULL) {
            return response()->json([
                'message' => "Invalid Credentials"
            ],400);
        }
        elseif ($user_data["MA_USRACC_IS_ACTIVE"] == false) {
            return response()->json([
                'message' => "Invalid Credentials"
            ],400);
        }

//        var_dump(Hash::make('admin123'));
        if ($user_data["MA_USRACC_LOGIN_VIA_SSO"] == true) {
//            dd($request->email);
            $login_res = ldap_login($request->email, $request->password);
            if (is_array($login_res)) {
                $user_data = std_get([
                    "select" => ["*"],
                    "table_name" => "MA_USRACC",
                    "where" => [
                        [
                            "field_name" => "MA_USRACC_EMAIL",
                            "operator" => "=",
                            "value" => $request->email,
                        ]
                    ],
                    "first_row" => true
                ]);
                
                $words = explode(" ", $user_data["MA_USRACC_FULL_NAME"]);
                $acronym = "";
                foreach ($words as $w) {
                    $acronym .= $w[0];
                }
                session([
                    "id" => $user_data["MA_USRACC_ID"],
                    "name" => $user_data["MA_USRACC_FULL_NAME"],
                    "user_role"	=> $user_data["MA_USRACC_ROLE"],
                    "user_initial_name" => $acronym,
                    "plant" => $user_data["MA_USRACC_PLANT_CODE"],
                    "app_name" => "mobile_barcode_scanner_sari_roti"
                ]);
                return response()->json([
                    'message' => "OK"
                ],200);
            }
            elseif ($login_res == 501) {
                return response()->json([
                    'message' => "Invalid Credentials"
                ],400);
            }
            else{
                return response()->json([
                    'message' => "Invalid Credentials"
                ],400);
            }
        }
        else{
            if (!Hash::check($request->password, $user_data["MA_USRACC_PASSWORD"])) {
                return response()->json([
                    'message' => "Invalid Credentials"
                ],400);
            }
            $words = explode(" ", $user_data["MA_USRACC_FULL_NAME"]);
            $acronym = "";
            foreach ($words as $w) {
                $acronym .= $w[0];
            }
            $content_session = [
                "id" => $user_data["MA_USRACC_ID"],
                "name" => $user_data["MA_USRACC_FULL_NAME"],
                "user_role"	=> $user_data["MA_USRACC_ROLE"],
                "user_initial_name" => $acronym,
                "plant" => $user_data["MA_USRACC_PLANT_CODE"],
                "app_name" => "mobile_barcode_scanner_sari_roti"
            ];
//            dd($content_session);
            session($content_session);
            
            return response()->json([
                'message' => "OK"
            ],200);
        }
	}
}