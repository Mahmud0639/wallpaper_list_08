import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpapaper_list_08/pages/fav_page.dart';
import 'package:wallpapaper_list_08/pages/home_page.dart';
import 'package:wallpapaper_list_08/pages/image_page.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatefulWidget{
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        "/":(context)=>HomePage(),
        "imagePage":(context)=>ImagePage(),
        "favImage":(context)=> FavPage()
      },
    );
  }
}

