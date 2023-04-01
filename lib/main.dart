import 'package:digimon_ego_app/Provider/LoginProvider.dart';
import 'package:digimon_ego_app/view/pages/home_view.dart'; 
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
        ChangeNotifierProvider(create:  (c)=>LoginProvider()),
    ],
    builder: (context,w) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      );
    }
  ),);
}