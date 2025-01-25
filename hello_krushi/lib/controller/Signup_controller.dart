

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http ;

class SignupController extends ChangeNotifier {
  

  Future<bool> Signup( String name, String villege ,String phoneNum ,String? district ,String? taluka, String? farmArea )async {
    
    Uri uri = Uri.parse("https://smart-agrofriend-backend.vercel.app/api/signup");
    
    try {

      final RequestBody = {  
      "name":name ,
      "village":villege ,
      "phoneNumber":phoneNum ,
      "role":"farmer",
      "password":"1234",
      "district":district ,
      "taluka":taluka ,
      "state":"maharastra"
     
      };

      Response response = await  http.post( 
        uri ,
        headers: {'content-Type':'application/json'},
        body: json.encode(RequestBody)
      );
      
      if(response.statusCode ==201){
        notifyListeners();
        log("success ");
        return true ;
      }else{
        notifyListeners();
        log("${response.statusCode}");
        return false ;
      }
    } catch (e) {
      notifyListeners();

      log("error alay ");

    }
    return true ;
  }
}