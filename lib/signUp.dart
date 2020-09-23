import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(SignUp());

class SignUp extends StatelessWidget {
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
      body: Container(
        decoration:
        BoxDecoration(image: 
          DecorationImage(image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: Center(child:
        //Text("ZEROM",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
        Container(
          margin: EdgeInsets.only(top:120),
          child: Column(
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Text("- ZEROM -",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                    Text("Sign Up",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 60)),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            style: TextStyle(color: Colors.white),
                              decoration: 
                                InputDecoration(
                                  icon: Icon(Icons.account_circle,color: Colors.white,),
                                  enabledBorder: UnderlineInputBorder(      
	                                  borderSide: BorderSide(color: Colors.white),   
	                                ), 
                                  focusedBorder: UnderlineInputBorder(
	                                  borderSide: BorderSide(color: Colors.yellow),
                                  )
                                ) 
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white),
                              decoration: 
                                InputDecoration(
                                  icon: Icon(Icons.mail_outline,color: Colors.white,),
                                  enabledBorder: UnderlineInputBorder(      
	                                  borderSide: BorderSide(color: Colors.white),   
	                                ), 
                                  focusedBorder: UnderlineInputBorder(
	                                  borderSide: BorderSide(color: Colors.yellow),
                                  )
                                ) 
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                              decoration: 
                                InputDecoration(
                                  icon: Icon(Icons.lock_outline,color:Colors.white),
                                  enabledBorder: UnderlineInputBorder(      
	                                  borderSide: BorderSide(color: Colors.white),   
	                                ),
                                  focusedBorder: UnderlineInputBorder(
	                                  borderSide: BorderSide(color: Colors.yellow),
                                  )
                                ) 
                          ),
                        ],
                      ),
                    ),
                    RaisedButton(
                      color: Colors.transparent,
                      child: Text("Sign Up",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      }
                    ),
                    //Text("Login Now",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                    Padding(
                      padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          RaisedButton(
                            color: Colors.transparent,
                            child: Text("Login",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                            }
                          ),
                          //Text("Sign Up",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                          Text("Forgot password?",style:TextStyle(color: Colors.white)),
                        ]
                      ),
                    )
                  ],
                ),
              ),
            ]
          )
        )
        ),
      ),
    );
  
  }
}