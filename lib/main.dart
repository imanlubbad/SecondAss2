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
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'ToDo Application'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MediaQuery.of(context).orientation == Orientation.portrait?Colors.red:null,
      drawer:MediaQuery.of(context).orientation == Orientation.portrait? Drawer(
        elevation: 1,
        backgroundColor: Colors.white10.withAlpha(150),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 25,
              vertical: MediaQuery.of(context).size.height / 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Spacer(),
              Text('First Element',style: TextStyle(fontWeight: FontWeight.bold),),
              Spacer(),
              Text('Second Element',style: TextStyle(fontWeight: FontWeight.bold),),
              Spacer(),
              Text('Third Element',style: TextStyle(fontWeight: FontWeight.bold),),
              Spacer(),
              Text('Forth Element',style: TextStyle(fontWeight: FontWeight.bold),),
              Spacer(),
              Text('Fifth Element',style: TextStyle(fontWeight: FontWeight.bold),),
              Spacer(flex: 12,),
            ],
          ),
        ),
      ):null,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title),
      ),
      body:MediaQuery.of(context).orientation != Orientation.portrait? Row(
        children: [
          Expanded(child: Container(height:double.infinity,color :Colors.white,child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 25,
              vertical: MediaQuery.of(context).size.height / 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Spacer(),
              Text('First Element',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Spacer(),
              Text('Second Element',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Spacer(),
              Text('Third Element',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Spacer(),
              Text('Forth Element',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Spacer(),
              Text('Fifth Element',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Spacer(flex: 12,),
            ],
          ),))),
          Expanded(child: Container(height: double.infinity,color: Colors.deepOrangeAccent,)),
        ],
      ):null,
    );
  }
}
