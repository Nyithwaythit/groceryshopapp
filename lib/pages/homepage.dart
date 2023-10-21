import 'package:flutter/material.dart';
import 'package:groceryshop/model/card_modal.dart';
import '../components/groceryitems.dart';
import 'package:provider/provider.dart';

import 'cardpage.dart'; 

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:() => Navigator.push(
          context, MaterialPageRoute(
            builder: (context){
             return const CartPage();
            }
          )
        ) ,
      backgroundColor: Colors.black,
      child: const Icon(Icons.shopping_bag)
     ),
      body: Column(
        
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 80),
            // Good Morning

           const  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24),
              child: Text("Good Morning"),
            ),

            const SizedBox(height:4),
            
      
            //Lets oder fresh items for you
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Let's order fresh items for you",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            const SizedBox(height: 24),
      
            //divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
            ),
      
            //fresh items + grid
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Fresh Items",
              style : TextStyle(
                fontSize: 16,
              )),
            ),
      

            Expanded(
              child: Consumer<CardModel>(
                builder: (context, value , child ){
                  return GridView.builder
              (
                itemCount: value.shopItems.length, 
                padding: const EdgeInsets.all(12),
                 gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                  ),
                  itemBuilder: (context, index){
                  return GroceryItemSTiles(
                  itemsName: value.shopItems[index][0],
                  itemsPrice: value.shopItems[index][1],
                  imagePath: value.shopItems[index][2],
                  color: value.shopItems[index][3],
                  onPressed: () {
                    Provider.of
                      <CardModel>(context, listen: false,).addItemToCart(index);
                    
                  },
                );

               }
              );
             }
              )
            )
            
          ],
      )
        

    );
  }
}