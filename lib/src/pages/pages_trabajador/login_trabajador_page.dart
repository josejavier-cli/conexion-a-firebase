import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:aplication_seekmant/src/pages/pages_trabajador/signin_trabajador_page.dart';
import 'package:aplication_seekmant/src/widget/back_button.dart';

class LoginTrabajadorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Image.asset('images/Logo1.png', width: 350),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Text(
                    '¡Bienvenido(a) de vuelta!',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 2),
                  //padding: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  child: Text(
                    'Inicie sesión en su cuenta existente.',
                    style: TextStyle(color: Colors.grey, fontSize: 17.0),
                  ),
                ),
                _emailInput(),
                _passwordInput(),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'forgot-password');
                    },
                    child: Text(
                      '¿Olvidaste la contraseña?',
                      style: TextStyle(
                          color: Color.fromRGBO(36, 105, 160, .8),
                          fontSize: 15.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'tabs');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    color: Color.fromRGBO(36, 105, 160, .8),
                    child: Text(
                      'Iniciar Sesion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  alignment: Alignment.center,
                  child: Text(
                    'O conectese usando',
                    style: TextStyle(color: Colors.grey, fontSize: 17.0),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    color: Colors.red,
                    child: Text(
                      'Google',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '¿No tienes una cuenta?',
                        style: TextStyle(color: Colors.black54, fontSize: 17.0),
                      ),
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignInTrabajadorPage(),
                            ));
                          },
                          child: Text(
                            'Registrate',
                            style: TextStyle(
                                color: Color.fromRGBO(111, 168, 75, .9),
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30, top: 40),
    decoration: BoxDecoration(
        color: Colors.grey[50], borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email_outlined),
        hintText: 'Correo electronico',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30, top: 15),
    decoration: BoxDecoration(
        color: Colors.grey[50], borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      textAlign: TextAlign.left,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        prefixIcon: Icon(Icons.lock_outline),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}
