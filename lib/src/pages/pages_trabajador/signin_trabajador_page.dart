import 'package:aplication_seekmant/src/pages/pages_trabajador/login_trabajador_page.dart';
import 'package:flutter/material.dart';

import 'package:aplication_seekmant/src/widget/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SignInTrabajadorPage extends StatelessWidget {
  SignInTrabajadorPage ({Key? key}) : super(key: key);
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
      resizeToAvoidBottomInset: false ,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Image.asset('images/Logo1.png', width: 350),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Text(
                    '¡Bienvenido(a)!',
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
                    'Crea una cuenta para iniciar sesión.',
                    style: TextStyle(color: Colors.grey, fontSize: 17.0),
                  ),
                ),
                _userInput(),
                _emailInput(),
                _passwordInput(),              
                _phoneInput(),
                _ocupacionInput(),
                //_birthdayInput(),
                SizedBox(height: 40),
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    color: Color.fromRGBO(36, 105, 160, .8),
                    child: Text(
                      'Ingresar',
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
                    'O usando',
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
                      'Goggle',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '¿Ya tienes una cuenta?',
                        style: TextStyle(color: Colors.black54, fontSize: 17.0),
                      ),
                      Container(
                        child: FlatButton(
                          onPressed: () {
                             Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginTrabajadorPage(),
                      ));
                          },
                          child: Text(
                            'Inicia Sesión',
                            style: TextStyle(
                                color: Color.fromRGBO(61, 214, 175, 1.0),
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20)                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Widget _userInput() {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30, top: 40),
    decoration: BoxDecoration(
        color: Colors.grey[50], borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.supervised_user_circle_outlined),
        hintText: 'Nombre completo',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

//correo electronico
Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30, top: 15),
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

//numero de telefono
Widget _phoneInput() {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30, top: 15),
    decoration: BoxDecoration(
        color: Colors.grey[50], borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
        hintText: 'Numero de telefono',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

//constraseña
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

//ocupacion
Widget _ocupacionInput() {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30, top: 15),
    decoration: BoxDecoration(
        color: Colors.grey[50], borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.work),
        hintText: 'Categoria',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}


//