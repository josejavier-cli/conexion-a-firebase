import 'package:aplication_seekmant/src/pages/pages_trabajador/login_trabajador_page.dart';
import 'package:aplication_seekmant/src/pages/pages_usuario/login_user_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/Logo2.png', width: 400),
              Container(
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: Text(
                  '¡Hola, bienvenido(a)!',
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
                  '¿Eres trabajador o usuario?',
                  style: TextStyle(color: Colors.grey, fontSize: 17.0),
                ),
              ),
              SizedBox(height: 70),
              Container(
                width: 300.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginTrabajadorPage(),
                    ));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Color.fromRGBO(36, 105, 160, .8),
                  child: Text(
                    'Trabajador',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),                
                alignment: Alignment.center,
                child: Text(
                  '------------------- o -------------------',
                  style: TextStyle(color: Colors.grey[200], fontSize: 17.0),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginUserPage(),
                    ));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Color.fromRGBO(133, 214, 121, 1.0),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[50],
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 60)
            ],
          ),
        ],
      ),
    );
  }
}
 //color:  Color.fromRGBO(36, 105, 160, 1.0),