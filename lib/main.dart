import 'package:flutter/material.dart';
import 'package:groceryshop/model/card_modal.dart';
import 'package:provider/provider.dart'; 
//import 'package:groceryshop/pages/intropage.dart';

import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CardModel(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
     )
    ); 
  }
  
   
}


  
 
