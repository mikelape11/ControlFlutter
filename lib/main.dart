import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Control Santi'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if(_counter<33){
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter>0){
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.teal[200],
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: RaisedButton(
                      onPressed: _decrementCounter,
                      child: Text("menos"),
                    ),
                    margin: const EdgeInsets.only(right: 20),
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: _incrementCounter,
                      child: Text("mas"),
                    ),
                    margin: const EdgeInsets.only(left: 20),
                  ),
                ]
              ),
            ),
            Container(
              child: Expanded(
                child: GridView.count(
                  primary: false,
                  crossAxisCount: 7,
                  children: List.generate(_counter, (index){
                    if(index==0){
                      return Center(
                        child: Container(
                          color: Colors.grey,
                          margin: EdgeInsets.all(0),
                          width: 60,
                          height: 60,
                          child: Text('${index+1}', style: TextStyle(color: Colors.black, fontSize: 20),),
                        )
                      );
                    }else if((index+1)%15==0){
                      return Center(
                        child: Container(
                          color: Colors.red,
                          margin: EdgeInsets.all(0),
                          width: 60,
                          height: 60,
                          child: Text("FB", style: TextStyle(color: Colors.black),),
                        )
                      );
                    }else if((index+1)%5==0){
                      return Center(
                        child: Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(0),
                          width: 60,
                          height: 60,
                          child: Text("BUCK", style: TextStyle(color: Colors.black),),
                        )
                      );
                    }else if((index+1)%3==0){
                      return Center(
                        child: Container(
                          color: Colors.orange,
                          margin: EdgeInsets.all(0),
                          width: 60,
                          height: 60,
                          child: Text("FACE", style: TextStyle(color: Colors.black),),
                        )
                      );   
                    }else{
                      return Center(
                        child: Container(
                          color: Colors.teal,
                          margin: EdgeInsets.all(0),
                          width: 60,
                          height: 60,
                          child: Text("${index+1}", style: TextStyle(color: Colors.black, fontSize: 20),),
                        )
                      );
                    }
                  })
                ),
              )
            ),
          ],
        ),     
      ),
    );
  }
}
