import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(

        splash: const Image(
        image: AssetImage('images/jqn.png'),
      ),
        nextScreen: const MyHomesPage(

        ),
        splashTransition: SplashTransition.rotationTransition,
         backgroundColor: const Color(0xff264f72),
        duration: 4000



      ),
    );
  }
}

class MyHomesPage extends StatefulWidget {
  const MyHomesPage({Key? key}) : super(key: key);


  @override
  _MyHomesPageState createState() => _MyHomesPageState();
}

class _MyHomesPageState extends State<MyHomesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xfffcfbfa), // Appbar height zero
      ),
      body: const WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: "https://www.redbus.in/",
      ),
    );
  }
}
