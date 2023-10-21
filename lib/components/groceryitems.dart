import 'package:flutter/material.dart';

class GroceryItemSTiles extends StatelessWidget {
  final String itemsName;
  final String itemsPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

  GroceryItemSTiles({super.key,
  required this.itemsName,
  required this.itemsPrice,
  required this.imagePath,
  required this.color,
  required this.onPressed});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            //image 
            Image.asset(
              imagePath,
              height: 64,
            ),
            //item names
            Text(itemsName),

            // + button

            MaterialButton( onPressed:onPressed ,
            color: color[800],
            child: Text(
              "\$" +itemsPrice,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold

              )
            )


            )
    
          ],
        )
      
        
      ),
    );
  }
}