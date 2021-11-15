import 'package:flutter/material.dart';
import 'package:moonlightstores/_commons/comon_colors.dart';
import 'package:moonlightstores/_models/order_model.dart';
import 'package:moonlightstores/_models/products_model.dart';

class Order_Detail_Screen extends StatelessWidget {
  final Order order;
  const Order_Detail_Screen({ Key? key,required this.order }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: white,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios,color: black,),
        ),
        title: Text(order.name,style: TextStyle(color: black),),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context,int index){
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.4,
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(products[index].name,style: TextStyle(color: black,fontSize: 25),),
                        ),
                        Container(
                          height: 170,
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Quanitity: "+products[index].quantity,style: TextStyle(color: white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text("Sh."+products[index].price.toString(),style: TextStyle(color: white),),
                            )
                          ],
                        ),
                        
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: products[index].image,
                      borderRadius: BorderRadius.circular(7)
                    ),
                  ),
                );
              }
              ),
            ),
            ListTile(
              title: Text("Total Price",style:TextStyle(fontSize: 15)),
              subtitle: Text("Sh."+order.total_price.toString(),style:TextStyle(fontSize: 15)),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Icon(Icons.price_check),
              ),
             ),
             ListTile(
              title: Text("Payment Method",style:TextStyle(fontSize: 15)),
              subtitle: Text("Mpesa",style:TextStyle(fontSize: 15)),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Icon(Icons.payment_outlined,color: green,),
              )
             ),
             ListTile(
              title: Text("Delivery Location",style:TextStyle(fontSize: 15)),
              subtitle: Text(order.location,style:TextStyle(fontSize: 15)),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Icon(Icons.location_city_outlined,color: orange,),
              ),
             ),
             ListTile(
              title: Text("Phone Number",style:TextStyle(fontSize: 15)),
              subtitle: GestureDetector(
                onTap: (){
                  print("object");
                },
                child: Text(order.phone,style:TextStyle(fontSize: 15))
                ),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Icon(Icons.perm_identity_outlined,color: blue,),
              ),
             ),
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.3,
                      child: Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width*0.2,
                      ),
                      ),
                      SizedBox(width: 5,),
                    GestureDetector(
                      onTap: (){
                        print("tes");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width*0.3,
                          
                          child: Center(child: Text("Deliver",style: TextStyle(color: white),)),
                          decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          ),
                      ),
                    ),
                   ],
                 ),
               ),
             )

          ],
        ),
      ),
    );
  }
}