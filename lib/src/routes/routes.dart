

import 'package:aplication_seekmant/src/pages/forgot_password.dart';
import 'package:aplication_seekmant/src/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';

//Paginas
import 'package:aplication_seekmant/src/pages/welcome_page.dart';
import 'package:aplication_seekmant/src/pages/pages_trabajador/login_trabajador_page.dart';
import 'package:aplication_seekmant/src/pages/pages_trabajador/signin_trabajador_page.dart';
import 'package:aplication_seekmant/src/pages/pages_usuario/login_user_page.dart';
import 'package:aplication_seekmant/src/pages/pages_usuario/signin_user_page.dart';
import 'package:aplication_seekmant/src/pages/pages_trabajador/tabs/tabs_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'loginTrabajador': (BuildContext context) => LoginTrabajadorPage(),
  'signintrabajador': (BuildContext context) => SignInTrabajadorPage(),
  'loginUser': (BuildContext context) => LoginUserPage(),
  'signinUser': (BuildContext context) => SignInUserPage(),
  'tabs': (BuildContext context) => TabsPage(),
  'forgot-password': (BuildContext context) => ForgotPassword()
};