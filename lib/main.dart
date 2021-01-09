import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redes México'),
      ),
      // Preview the image and crop it
      body: WebviewScaffold(
        url: 'https://redesmexico.net/',
        initialChild: Container(
          color: Colors.white,
          child: const Center(
            child: Image(image: AssetImage('assets/cargando.gif')),
          ),
        ),
      ),
    );
  }
}
