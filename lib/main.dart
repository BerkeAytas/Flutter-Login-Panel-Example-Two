import 'package:flutter/material.dart';
import 'package:login_two/signUp.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
  //final _formKey = GlobalKey<FormState>();
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
                    Text("Login",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 60)),
                    Text("——————",style: TextStyle(color:Colors.lightGreenAccent,fontWeight: FontWeight.w900),),
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
                          TextFormField(
                            /*validator: (value) {
                              if (value.isEmpty) {
                                return 'Lütfen Şifrenizi Yazın';
                              }
                              return null;
                            },*/
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
                                ),
                          ),
                        ],
                      ),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        side:BorderSide(color: Colors.lightGreenAccent,width: 3)
                      ),
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("——— Login Now",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                      ),
                      onPressed: (){
                       // if (_formKey.currentState.validate()) { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                        //}
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
                            child: Text("SignUp Now",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
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
