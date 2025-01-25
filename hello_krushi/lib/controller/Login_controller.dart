import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  // String _token = '';
  bool _isLoading = false;

  // String get token => _token;
   bool get isLoading => _isLoading;

  Future<bool> login(String email, String password) async {

    log(email);
    log(password);
    _isLoading = true;
    notifyListeners();

    final url = Uri.parse('https://smart-agrofriend-backend.vercel.app/api/login');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': password , 'role':"farmer"}),
      );
      log("${response.statusCode}");
      if (response.statusCode == 200) {

        final responseData = json.decode(response.body);
       // _token = responseData['token']; // Assuming the API returns a token
        _isLoading = false;
        notifyListeners();
        return true;
      } else {
        _isLoading = false;
        notifyListeners();
        return false; // Handle errors appropriately
      }
    } catch (error) {
      log(error.toString());
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  void logout() {
    //_token = '';
    notifyListeners();
  }


  Future<bool> register()async{

    
    return false ;
  }
}
