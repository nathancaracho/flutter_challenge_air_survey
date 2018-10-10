import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Airplane',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        backgroundColor: Colors.deepPurple,
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Airplane Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(),
        elevation: 0.0,
      ),
      body: Row(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Expanded(child: Container()),
                Container(
                  child: FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    child: Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                    ),
                    onPressed: () => {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.00),
                  child: FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.grey[400],
                    ),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, //align all widgts to left
            children: <Widget>[
              Container(
                  child: Text(
                "01",
                style: TextStyle(
                    color: Colors.white24,
                    fontSize: 80.00,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              )),
              Container(
                child: Text(
                  "Do you typically fly for\n business, personal reason,\n or some other reason",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.00,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
