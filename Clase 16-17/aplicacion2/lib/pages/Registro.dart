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
                  onSaved: (value) => this._correo = value.toString(),
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
                      ? "Contraseña no corresponde"
                      : null,
                  onSaved: (value) => this._correo = value.toString(),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Confirme su contraseña"),
                )),
          ]),
        ),
      ),
    );
  }
}
