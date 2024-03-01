<?php
namespace App\Http\Controllers;
use Exception;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    
    function Register(Request $request )  {

        try{
            $request->validate([
                    'name' => 'required',
                    'email' => 'required' ,
                    'password' =>'required|confirmed',
                ]);

    		$user = User::create([
    			'name' => $request->name,
    			'email' => $request->email,
    			'password' => Hash::make($request->password) 
    		]);
    		$token = $user->createToken('app')->accessToken;
    		return response([
    			'message' => "Register Successfully",
    			'token' => $token,
    			'user' => $user
    		],200);

	    	}catch(Exception $exception){
	    		return response([
	    			'message' => $exception->getMessage()
	    		],400);
	    	}
        // $validate = $request->validate([
        //     'name' => 'required',
        //     'email' => 'required' ,
        //     'password' =>'required|confirmed',
        // ]);
        // User::create(
        //     [
        //         'name'=>$request->name,
        //         'email' => $request->email, 
        //         'password' => Hash::make($request->password)
        //     ]
        //     );

        // return response([
        //     'status' => true , 
        //     'message' =>'Register successfully']);



    }
    function login(Request $request)  {

        try{

            $request->validate([
                    'email' => 'required',
                    'password' => 'required' ,
                  
                ]);

    		if (Auth::attempt($request->only('email','password'))) {
    			$user = Auth::user();
    			$token = $user->createToken('app')->accessToken;

    			return response([
    				'message' => "Successfully login",
    				'token' => $token,
    				'user' => $user
    			],200); // States Code
    		}

    	}catch(Exception $exception){
    		return response([
    			'message' => $exception->getMessage()
    		],400);
    	}
    	return response([
    		'message' => 'Invalid email or password' 
    	],401);

       

        // if (Auth::attempt(['email' =>$request->email , 'password'=>$request->password])) {
        // $user = Auth::user();
        // $token  = $user->createToken('example')->accessToken;

        // return response([
        //     'status' => true,
        //     'message' => 'Login Successfully',
        //     'token' =>$token,
        //     'user' => $user
        // ]);

    // else{

    //     return response()->json([ 
    //         'status' => false,
    //         'message' => 'Invalid Username and password',
    //     ]);
    // }
    }

    function userData() {
            
        return Auth::user(); 
    
    }


}
