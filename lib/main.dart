import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loaderPage()
    );
  }
}

class loaderPage extends StatefulWidget {
  @override
  _loaderPageState createState() => _loaderPageState();
}

class _loaderPageState extends State<loaderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        title: Text('Loader', style: TextStyle(fontSize: 18),),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
     body: Container(
        height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(left: 10, right: 10, top: 20, ),
    child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
    children: <Widget>[
      GFTypography(
        text: 'Basic Loader',
      ),
      GFLoader(),
      SizedBox(
        height: 40,
      ),
      GFTypography(
        text: 'Ios Loader',
      ),
      GFLoader(
        type: GFLoaderType.ios,
      ),
      SizedBox(
        height: 40,
      ),
      GFTypography(
        text: 'Circular Loader',
      ),
      GFLoader(
        type: GFLoaderType.circle,
      ),
      SizedBox(
        height: 40,
      ),
      GFTypography(
        text: 'Square Loader',
      ),
      GFLoader(
        type: GFLoaderType.square,
      ),
      SizedBox(
        height: 40,
      ),
      GFTypography(
        text: 'Custom Loader',
      ),
      GFLoader(
        type: GFLoaderType.custom,
        loaderIconOne   : Icon(Icons.insert_emoticon),
        loaderIconTwo   : Icon(Icons.insert_emoticon),
        loaderIconThree : Icon(Icons.insert_emoticon),
      ),
      SizedBox(
        height: 40,
      ),
      GFTypography(
        text: 'Custom Loader with text',
      ),
      SizedBox(
        height: 20,
      ),
      GFLoader(
        type: GFLoaderType.custom,
        loaderIconOne   : Text('Please'),
        loaderIconTwo   : Text('Wait'),
        loaderIconThree : Text('a moment'),
      )
    ],
    ),
    )
    );
  }
}

