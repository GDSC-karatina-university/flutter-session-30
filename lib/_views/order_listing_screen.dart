import 'package:flutter/material.dart';
import 'package:moonlightstores/_commons/comon_colors.dart';
import 'package:moonlightstores/_models/order_model.dart';
import 'package:moonlightstores/_views/order_detail_screen.dart';

// ignore: camel_case_types
class Order_Listing_Screen extends StatelessWidget {
  const Order_Listing_Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Orders",style: TextStyle(color: black),),
        centerTitle: true,
        backgroundColor: white,
        actions: [
          
        ],
      ),
      body: Container(
        child: ListView.builder(
          
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Order_Detail_Screen(order: orders[index],)));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(orders[index].name),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Icon(Icons.food_bank_outlined,color: green,),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 8.0,top: 8.0,bottom: 8.0),
                        child: Text(orders[index].phone),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 280),
                        child: Text("Sh:"+orders[index].total_price.toString()),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(5),
                    color: white
                  )
                ),
              ),
            );
          },
          itemCount: orders.length,
          ),
      ),
    );
  }
}