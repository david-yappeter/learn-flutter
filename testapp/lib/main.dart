import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Hello,    "),
              Text('Worwladaw'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text("One"),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.pinkAccent,
            child: Text("Two"),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.amber,
            child: Text("Three"),
          ),
        ],
      ),

      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: <Widget>[
      //     Text("Test"),
      //     Text("Test"),
      //     FlatButton(
      //         onPressed: () {},
      //         child: Text('Test'),
      //         color: Colors.amber
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text("Inside Container"),
      //     ),
      //   ],
      // ),

      // Padding(
      //   padding: EdgeInsets.all(30.0),
      //   child: Text('Hello'),
      // ),

      // Container(
      //   padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
      //   margin: EdgeInsets.all(30.0),
      //   // padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      //   // padding: EdgeInsets.all(20.0),
      //   color: Colors.grey[400],
      //   child: Text('Hello World'),
      // ),

    // Center(
        // child: IconButton(
        //   onPressed: () {
        //     print('You clicked me');
        //   },
        //   icon: Icon(
        //     Icons.alternate_email,
        //   ),
        //   color: Colors.amber,
        // )

        // child: RaisedButton.icon(
        //   onPressed: () {
        //     print('you clicked me');
        //   },
        //   icon: Icon(
        //     Icons.mail,
        //   ),
        //   label: Text('mail me'),
        //   color: Colors.amber,
        // ),

        // child: RaisedButton(
        //   onPressed: () {
        //     print('you clicked me');
        //   },
        //   child: Text('Press Me', style: TextStyle(
        //     color: Colors.white,
        //   )),
        //   color: Colors.lightBlue,
        // ),

        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50.0,
        // ),

        // child: Image(
        //   image: AssetImage('assets/1.png'),
        // ),

        // child: Text(
        //   'Hellooow World',
        //   style: TextStyle(
        //     fontSize: 20.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2.0,
        //     color: Colors.red[600],
        //     fontFamily: 'IndieFlower',
        //   ),
        // ),
      // ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        // child: Text("click"),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

