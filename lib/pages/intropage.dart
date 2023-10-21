import 'package:flutter/material.dart';

import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //logo
          Padding(
            padding: const EdgeInsets.only(left:80, right:80, bottom : 60, top : 160),
            child: Image.asset("lib/images/avocado.png"),
          ),

          //we deliver groceries

          const Padding(
            padding: EdgeInsets.all(24),
            child: Text("We deliver groceries at your doorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            )
           ),
          ),

          //fresh items everyday
          const Text("Fresh items everyday"),

          const SizedBox(height: 20),

          //get started button
          GestureDetector(
           onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (content){
            return const HomePage();
           }
           )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(16)
              ),
              padding: const EdgeInsets.all(24),
              child: const Text("Get Started",
              style:  TextStyle(
                color: Colors.white,
          
              ),
             )
            ),
          )



        ],
      ),
    );
  }
}