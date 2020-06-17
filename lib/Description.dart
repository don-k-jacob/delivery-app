import 'package:delivryapp/Cart.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool isFav = false;
  bool inCart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://s3-alpha-sig.figma.com/img/ed02/3feb/39e754db430384ee1a2a937245b5be42?Expires=1593388800&Signature=U6k~rMz3ibUC7zOMuWGA5UFofRrsR0i0OJQX5GXNVGrorx4Q95~Gg3EGNmjez2bwAQUop5e~Ei5JAAcvBbcLphvHgomOl5PomppXvBVTgXpQpVKcHpWCGlgN2g~04qa6tNeqavSWRmxAnCfn-Rgy76qArmeYEnJ~ywq5C5N24UkTXC0-hlhCLJAuuAciWnAmT3JYiguLHOJdE5KEv52ivbGgabuBTgQVW5YnoIMOWxSuy0vmFqPKmyRs8IZCD-KLpQsZXZXnh6SSLc9CeysD-OT9-xVmBGH9cSH5Yq7x4n-saOyyEPCJlqXtUsKsJsmFv1MafeNnS-ZPCx-o7h6fhA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height) * 2 / 3,
              decoration: BoxDecoration(
                color: Color(0xffF6F5F5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 31,
                    ),
                    Text(
                      "Boston Lettuce",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2D0C57)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '1.10',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2D0C57),
                                  fontSize: 32)),
                          TextSpan(
                              text: ' € / piece',
                              style: TextStyle(
                                  color: Color(0xff9586A8), fontSize: 24)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "-150 gr/ piece",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff06BE77)),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Spain",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2D0C57)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Lettuce is an annual plant of the daisy family, Asteraceae. "
                      "It is most often grown as a leaf vegetable, but sometimes for"
                      " its stem and seeds. Lettuce is most often used for salads, "
                      "although it is also seen in other kinds of food, such as soups,"
                      " sandwiches and wraps; it can also be grilled.",
                      style: TextStyle(
                          color: Color(0xff9586A8),
                          letterSpacing: -0.41,
                          fontSize: 17,
                          wordSpacing: 3),
                    ),
                    SizedBox(
                      height: 56,
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isFav = !isFav;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            height: 56,
                            width: 78,
                            child: Center(
                              child: Icon(
                                isFav ? Icons.favorite : Icons.favorite_border,
                                color: isFav ? Colors.red : Color(0xff9586A8),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              inCart=!inCart;
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff0BCE83),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                            ),
                            height: 56,
                            width: 275,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(inCart?Icons.shopping_cart:Icons.add_shopping_cart,color: Colors.white,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("ADD TO CART",
                                    style: TextStyle(
                                      fontSize: 15,
                                      letterSpacing: -0.01,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: () {
                Navigator.pop(context);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
