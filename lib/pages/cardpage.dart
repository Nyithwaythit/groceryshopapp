import 'package:flutter/material.dart';
import 'package:groceryshop/model/card_modal.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Cart")),
      body: Consumer<CardModel>(
         builder: (context,value,child){
          return Column(
          children: [

            //list of cart items
          Expanded(child: ListView.builder(
            itemCount: value.cartItems.length,
            itemBuilder: (context, index){
            return  Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8)
                ),
                child: ListTile(
                  leading: Image.asset(
                    value.cartItems[index][2],
                    height: 36,
                  ),
                  title: Text(
                    value.cartItems[index][0]),
                  subtitle: Text(
                    "\$" + value.cartItems[index][1]),
                  trailing: IconButton(onPressed: () => Provider.of<CardModel>(context, listen : false).removeItemFromCart(index),
                  icon: const  Icon(Icons.cancel))

                )
                 )
             );
           }
          )
        ),

        //total + pay now
        Padding(
          padding: const EdgeInsets.all(36.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,  
              borderRadius: BorderRadius.circular(8)
            ),
            padding: const EdgeInsets.all(24),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Price",
                      style: TextStyle(
                      color: Colors.green[100],
                     )
                     ),
                     const SizedBox(height:5),
                      Text("\$" + value.calculateTotal(),
                      style: const  TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))
                    ],
                  ),

                  Container(
                   decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade100),
                    borderRadius: BorderRadius.circular(12),
                    ),
                    padding:const EdgeInsets.all(12),
                    child:const  Row(
                    children: [
                    Text(
                    "Pay Now",
                    style: TextStyle(
                    color:Colors.white,
                    )
                    ),
                    Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.white,
                    )
                    ],
                    )

                    )

                ],
              )
          ),
        ),
        //pay now button
        

       ],
      );
      
      }
     )
    );
  }
}