import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _nombre = "";
  String _correo = "";
  String _usuario = "";
  String _contrasena = "";
  String _tempcontrasena = "";
  var _formKey = GlobalKey<FormState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Home Page',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            centerTitle: true,
          ),
          body: Stack(
            children: <Widget>[
              _imagenFondo(),
              _textoCentral(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => {},
          ),
        )
        //const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }

  Widget _imagenFondo() {
    return Image(
      image: AssetImage('assets/images/home.jpg'),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _textoCentral() {
    return Center(
      child: Container(
        height: 100,
        color: Color.fromRGBO(0, 0, 0, 0.5),
        child: Center(
          child: Text('Primer reto',
              style: TextStyle(fontSize: 40, color: Colors.white)),
        ),
      ),
    );
  }
}
