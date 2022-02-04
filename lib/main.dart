import 'package:first_project_flutter/ui/splashscreen/splash_scree.dart';
import 'package:flutter/material.dart';

import 'ui/about/about_page.dart';
import 'ui/counter/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splashscreen',
      routes:{
        '/counter':(context)=> const CounterPage(
            title: 'Counter Page'
        ),
        '/about' :(context)=> const AboutPage(),
        '/splashscreen': (context)=> const SplashScreen(),
      },
      // home: const CounterPage(title:'counter page'),
    );
  }
}



