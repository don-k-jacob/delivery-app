import 'package:delivryapp/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Text("Categories",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xff2D0C57)
              ),),
              SizedBox(
                height: 27,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  prefixIcon: Icon(Icons.search,),
                  hintText: "Search",
                ),
              ),
              SizedBox(
                height: 42,
              ),
              Container(
                height: MediaQuery.of(context).size.height/1.7,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: GridView.count(
                    crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 4,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    primary: false,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    children: List.generate(20, (index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                        },
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage("https://s3-alpha-sig.figma.com/img/455e/31e8/bd3343ea76b1616c9ad10f3f203492a8?Expires=1593388800&Signature=X1KSrt~3Sd2k6kLfps4vBSxc0VqPn0yq3RRToHv1GpOw1B~Vl1gVDAjIpMEjLqKnosgPc9ymifPXwXd6TmN10xo2FsuYibpETzXHZy2jiEu-eyBDLo~O5FydO7BSMJkSp89xWGAVwFsBG9-q~6cdnVHVMRBvChd7vSZp2saQukVbkqXmSO40AKpQdJTqB2qeRf2OBwrfHaYdQbSLhjkRxWuk7xn7upwpMJELhcbv1KJwTfl~qUO6j6h88~vNqIem-mwjNkdAK07~dOhGrwFSNXNUrBQ5yeG7owsRKwSjChi11N~qmwANhgVrEmmdmyUCqIZYlhXMqFjnFP0WF0sUVQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                                fit: BoxFit.cover),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Align(
                              child: Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                 decoration: BoxDecoration(
                                   color: Colors.white
                                 ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                         SizedBox(
                                           height: 10,
                                         ),
                                         Text("Vegetables",
                                         style: TextStyle(
                                           fontSize: 19,
                                           fontWeight: FontWeight.bold,
                                           color: Color(0xff2D0C57)
                                         ),),
                                      Text("(23)",
                                        style: TextStyle(
                                            fontSize: 12,
                                          color: Color(0xff9586A8)
                                        ),)
                                       ],
                                  ),
                                ),
                              ),
                              alignment: Alignment.bottomCenter,
                            )
                          ],
                        ),
                      );
                    })

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
