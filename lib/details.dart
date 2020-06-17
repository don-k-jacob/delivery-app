import 'package:delivryapp/Description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
                Navigator.pop(context);
              }),
              SizedBox(
                height: 23,
              ),
              Text(
                "Vegetables",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2D0C57)),
              ),
              SizedBox(
                height: 27,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: "Search",
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Filter(txt: "Сabbage and lettuce (14)"),
                    SizedBox(
                      width: 8,
                    ),
                    Filter(txt: "Сucumbers and tomatoes (10)"),
                    SizedBox(
                      width: 8,
                    ),
                    Filter(txt: "Oinons and garlic (8)"),
                    SizedBox(
                      width: 8,
                    ),
                    Filter(txt: "Peppers (7)"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Filter(txt: "Сabbage and lettuce (14)"),
                    SizedBox(
                      width: 8,
                    ),
                    Filter(txt: "Сucumbers and tomatoes (10)"),
                    SizedBox(
                      width: 8,
                    ),
                    Filter(txt: "Oinons and garlic (8)"),
                    SizedBox(
                      width: 8,
                    ),
                    Filter(txt: "Peppers (7)"),
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Container(
                height: 420,
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemDetails();
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemDetails extends StatefulWidget {
  const ItemDetails({
    Key key,
  }) : super(key: key);

  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  bool isFav=false;
  bool inCart=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: (){

            },
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://s3-alpha-sig.figma.com/img/ed02/3feb/39e754db430384ee1a2a937245b5be42?Expires=1593388800&Signature=U6k~rMz3ibUC7zOMuWGA5UFofRrsR0i0OJQX5GXNVGrorx4Q95~Gg3EGNmjez2bwAQUop5e~Ei5JAAcvBbcLphvHgomOl5PomppXvBVTgXpQpVKcHpWCGlgN2g~04qa6tNeqavSWRmxAnCfn-Rgy76qArmeYEnJ~ywq5C5N24UkTXC0-hlhCLJAuuAciWnAmT3JYiguLHOJdE5KEv52ivbGgabuBTgQVW5YnoIMOWxSuy0vmFqPKmyRs8IZCD-KLpQsZXZXnh6SSLc9CeysD-OT9-xVmBGH9cSH5Yq7x4n-saOyyEPCJlqXtUsKsJsmFv1MafeNnS-ZPCx-o7h6fhA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"))),
              height: 128,
              width: MediaQuery.of(context).size.width / 2.5,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Description()));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Boston Lettuce",
                      style: TextStyle(
                          fontSize: 18, color: Color(0xff2D0C57)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: '1.10',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2D0C57),
                                  fontSize: 22)),
                          TextSpan(
                              text: ' € / piece',
                              style: TextStyle(
                                  color: Color(0xff9586A8),
                                  fontSize: 16)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap:(){
                      setState(() {
                        isFav=!isFav;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.all(Radius.circular(8)),
                      ),
                      height: 40,
                      width: 78,
                      child: Center(
                        child: Icon(isFav?Icons.favorite:Icons.favorite_border,color: isFav?Colors.red:Color(0xff9586A8),),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        inCart=!inCart;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff0BCE83),
                        borderRadius:
                        BorderRadius.all(Radius.circular(8)),
                      ),
                      height: 40,
                      width: 78,
                      child: Center(
                        child: Icon(inCart?Icons.shopping_cart:Icons.add_shopping_cart,color: Colors.white,),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class Filter extends StatefulWidget {
  final String txt;

  const Filter({Key key, this.txt}) : super(key: key);
  @override
  _FilterState createState() => _FilterState(txt);
}

class _FilterState extends State<Filter> {
  final String txt;

  bool _selected = false;

  _FilterState(this.txt);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: (_selected == true) ? Color(0xffE2CBFF) : Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: Row(
            children: <Widget>[
              if (_selected == true)
                Icon(
                  Icons.check,
                  color: Color(0xff6C0EE4),
                  size: 16,
                ),
              Text(
                txt,
                style: TextStyle(
                    color: (_selected == true)
                        ? Color(0xff6C0EE4)
                        : Color(0xff9586A8),
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
