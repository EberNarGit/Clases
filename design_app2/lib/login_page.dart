import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:60),
              child: FlutterLogo(size: 100,)
            ),
            Padding(
              padding: EdgeInsets.only(top:16),
              child: Text(
                "TravelApp",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Signatra",
                  fontSize: 58
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Welcome!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue[500],
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, top:16),
              child: Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 300,
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.blue,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Icon(Icons.account_circle,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: 252,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10)
                                  )
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: TextFormField(
                                  style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 18
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Usuario",
                                    fillColor: Colors.white,
                                    filled: true
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ),
            )
          ],
        )
      )
    );
  }

}