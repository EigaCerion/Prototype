import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier{
    bool loading = false;

    Future login()async{
        loading  = true;
        notifyListeners();

        await Future.delayed(Duration(seconds: 4));

        loading = false;
        notifyListeners();

    }
}