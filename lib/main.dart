// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_clear2/widgets/auth/auth_widget.dart';
import 'package:flutter_application_clear2/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(backgroundColor: const Color.fromRGBO(3, 37, 65, 1)),
      ),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      initialRoute: '/auth',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text('Произошла ошибка навигации'),
            ),
          );
        });
      }
    );
  }
}

