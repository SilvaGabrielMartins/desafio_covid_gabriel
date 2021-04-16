import 'package:flutter/material.dart';
import 'pages/page.home.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, fontFamily: 'Ubuntu'),
      initialRoute: '/',
      routes: {
        '/': (context) => PageHome(),
      },
    );
  }
}
