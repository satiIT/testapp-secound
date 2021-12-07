import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 // int _counter = 0;

 

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
     
        title: Text("Log in Samble"),
      ),
      body: Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Container(
             //  margin: const EdgeInsets.all(4),
               // ignore: prefer_const_constructors
               padding: EdgeInsets.all(10),
               child: TextFormField(
                      //  keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.account_box_outlined),
                          border: UnderlineInputBorder(),
                          labelText: 'Name',
                          //   hintText: 'AC.NO'
               )),
             ),
                        Container(
               padding: EdgeInsets.all(10),

                          child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.pin),
                          border: UnderlineInputBorder(),
                          labelText: 'PIN',
                          //   hintText: 'AC.NO'
                           ) ),
                        ),
                           // ignore: deprecated_member_use
                           FlatButton(onPressed: (){}, child: const Text("Sing in",style: TextStyle(
                             fontSize: 25,
                           ),),color: Colors.amber,)
          ],
        ),
      ),
      
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
