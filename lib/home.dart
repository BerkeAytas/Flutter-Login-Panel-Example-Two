import 'package:flutter/material.dart';
//import 'main.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title:Text("Berke Aytas")
      ),
      body: Container(
        child:Column(
          children:<Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.lightGreenAccent,
                child:Row(
                  children:<Widget>[
                    Column(
                      children:<Widget>[
                        Text("Şınav",style: TextStyle(fontSize:20),),
                        Text("Barfiks",style: TextStyle(fontSize:20),),
                      ]
                    )
                  ]
                )
              )
            ),
            Expanded(
              flex: 2,
              child: Container(child:Text("asd"))
            ),
          ]
        )
      )
    );
  }
}