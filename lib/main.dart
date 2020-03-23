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
    return Container(
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
          SizedBox(height: 5,),
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
          )
        ],
      )
    );
  }
}
