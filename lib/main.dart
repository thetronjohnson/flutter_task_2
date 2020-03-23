import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Home(),
      debugShowCheckedModeBanner: false,
      title: 'UI Design',
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading:IconButton(icon: const Icon(Icons.arrow_back), onPressed: null),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right:30),
            child: CircleAvatar(
              radius: 15,
              child: ClipOval(
                child: Image.asset('assets/goku.png')
              ),
            ),
          ),
        ],
      ),
      body: Body(),
    );
    return scaffold;
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(left:50, right: 30, top:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Hello Goku!',
              style: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 20,
                letterSpacing: 1,
              ) ,
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text(
                  'Today',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:Colors.grey,
                  ),
                ),
                Icon(Icons.create, color: Colors.grey,)
              ],),
            ),
            SizedBox(height:30 ),
            Container(
              child: Row(children: <Widget>[
                Text(
                  'Overall',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey,)
              ],),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(top:20),
              child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:<Widget>[
                                Expanded(
                                    child: CircleAvatar(
                                      radius: 25,
                                      child: ClipOval(child: Image.asset('assets/jiren.jpg'),)
                                    ),
                                    flex: 1,
                                ),
                                Expanded(child: Text("Goku"),flex: 3,),
                                Expanded(child: Icon(Icons.collections, color: Colors.grey),flex: 1,),
                                Column(children: <Widget>[
                                  
                                ],)
                              ]
                            ),
                          ],
                        ),
                      ),
                      elevation: 2,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0),
                    ),
            )
            )
          ],
        )
      ),
    );
  }
}
