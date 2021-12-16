import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aplication_seekmant/src/widget/back_button.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('¿Has olvidado tu contraseña?',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0)),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                    'Por favor, introduzca su dirección de correo electrónico. Recibirá un enlace para crear una nueva contraseña por correo electrónico.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              _emailInput(),
              _sendButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30, top: 40),
    decoration: BoxDecoration(
        color: Colors.grey[50], borderRadius: BorderRadius.circular(15.0)),
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

Widget _sendButton(BuildContext context) {
  return Container(
    width: 325.0,
    height: 70.0,
    padding: EdgeInsets.only(top:25),
    child: RaisedButton(
      onPressed: () {
        //
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: Color.fromRGBO(111,168,75, .9),
      child: Text(
        'Enviar',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
      ),
    ),
  );
}
