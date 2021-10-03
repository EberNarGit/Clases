import 'package:flutter/material.dart';
import 'package:aplicacion2/components/background.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  String _nombre = "";
  String _correo = "";
  String _usuario = "";
  String _contrasena = "";
  String _tempcontrasena = "";
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Form(
          key: _formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Registro ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value) =>
                      value.toString().isEmpty ? "Nombre es obligatorio" : null,
                  onSaved: (value) => this._nombre = value.toString(),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person), labelText: "Nombre"),
                )),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value) =>
                      value.toString().isEmpty ? "Usuario Obligatorio" : null,
                  onSaved: (value) => this._correo = value.toString(),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_add_alt_1),
                      labelText: "Usuario"),
                )),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value) =>
                      value.toString().isEmpty ? "Correo Obligatorio" : null,
                  onSaved: (value) => this._correo = value.toString(),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email), labelText: "Correo"),
                )),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value) => value.toString().isEmpty
                      ? "Contraseña obligatoria"
                      : null,
                  onSaved: (value) => this._contrasena = value.toString(),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock), labelText: "Contraseña"),
                )),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value) => value.toString().isEmpty
                      ? "Contraseña obligatoria"
                      : null,
                  onSaved: (value) => this._tempcontrasena = value.toString(),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Confirme contraseña"),
                )),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: ElevatedButton(
                  onPressed: () {
                    final form = _formKey.currentState;
                    if (form!.validate()) {
                      //print("Valido");
                      form.save();
                      if (_tempcontrasena != _contrasena) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          content: Row(
                            children: [
                              Icon(
                                Icons.error,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Text("La contraseña no coincide"),
                              )
                            ],
                          ),
                          duration: Duration(seconds: 2),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          content: Row(
                            children: [
                              Icon(
                                Icons.error,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Text("Registro correcto"),
                              )
                            ],
                          ),
                          duration: Duration(seconds: 2),
                        ));
                        print("no válido");
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)),
                    padding: EdgeInsets.all(0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: size.width * 0.50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ])),
                    child: Text(
                      "Entrar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
