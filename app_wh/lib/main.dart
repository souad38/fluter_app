import 'package:app_wh/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/Message_provider.dart';
void main(){
  runApp(
    ChangeNotifierProvider(
        create: (_) =>MessageProvider(),
        child:myApp()
    )
  );
  
}
class myApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Add Message',
      home: Home(),
      theme: ThemeData(
        brightness: Brightness.light,

      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
