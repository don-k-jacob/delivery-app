import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
      body: Column(
        children: <Widget>[
          Card(
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF6F5F5),
                  boxShadow: [
                    BoxShadow(color: Color(03000000), blurRadius: 18, offset: Offset(0, 4)),
                  ]
              ),
              padding: EdgeInsets.only(top: 57),
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
                    Navigator.pop(context);
                  }),
                  Spacer(),
                  Text("Checkout",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.41,
                        color: Color(0xff2D0C57)
                    ),),
                  SizedBox(
                    width:  MediaQuery.of(context).size.width/2.4,
                  )
                ],
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: <Widget>[
                    Text("Payment Method",
                      style: TextStyle(
                          fontSize: 22,
                          letterSpacing: -0.41,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2D0C57)
                      ),),
                    Spacer(),
                    Text("CHANGE",
                    style: TextStyle(
                      color: Color(0xff7203FF),
                      fontWeight: FontWeight.w600,
                        letterSpacing: -0.01
                    ),)
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.credit_card,color: Color(0xff2D0C57),),
                    SizedBox(
                      width: 26,
                    ),
                    Text("**** **** **** 4747",
                    style: TextStyle(
                        fontSize: 17,
                      color: Color(0xff9586A8)
                    ),),

                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  children: <Widget>[
                    Text("Delivery address",
                      style: TextStyle(
                          fontSize: 22,
                          letterSpacing: -0.41,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2D0C57)
                      ),),
                    Spacer(),
                    Text("CHANGE",
                      style: TextStyle(
                          color: Color(0xff7203FF),
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.01
                      ),)
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.location_city),
                    SizedBox(width: 28,),
                    Container(
                      height: 128,
                      width: 197,
                      child: Text("Alexandra Smith\n"
                          "Cesu 31 k-2 5.st, SIA Chili\n"
                         " Riga\n LV–1012\n Latvia "),
                    ),

                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Delivery options",
                      style: TextStyle(
                          fontSize: 22,
                          letterSpacing: -0.41,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2D0C57)
                      ),),
                    Spacer(),
                    Text("CHANGE",
                      style: TextStyle(
                          color: Color(0xff7203FF),
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.01
                      ),)
                  ],
                ),

                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.directions_walk,color: Color(0xff2D0C57),),
                    SizedBox(
                      width: 26,
                    ),
                    Text("I’ll pick it up myself",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff9586A8)
                      ),),

                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.motorcycle,color: Color(0xff2D0C57),),
                    SizedBox(
                      width: 26,
                    ),
                    Text("By courier",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff9586A8)
                      ),),

                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.home,color: Color(0xff2D0C57),),
                    SizedBox(
                      width: 26,
                    ),
                    Text("By Home Delivery",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff9586A8)
                      ),),

                  ],
                ),
                SizedBox(
                  width: 56,
                ),
//                Row(
//                  children: <Widget>[
//                    Text("Non-contact-delivery",
//                      style: TextStyle(
//                          fontSize: 22,
//                          letterSpacing: -0.41,
//                          fontWeight: FontWeight.bold,
//                          color: Color(0xff2D0C57)
//                      ),),
//                    Spacer(),
//                    Text("CHANGE",
//                      style: TextStyle(
//                          color: Color(0xff7203FF),
//                          fontWeight: FontWeight.w600,
//                          letterSpacing: -0.01
//                      ),)
//                  ],
//                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
