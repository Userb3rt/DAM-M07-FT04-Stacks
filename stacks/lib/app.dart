import 'package:flutter/cupertino.dart';
import 'layout_desktop.dart';

// Main application widget
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

// Main application state
class AppState extends State<App> {
  // Define the layout to use depending on the screen width
  Widget _setLayout(BuildContext context) {
    // Set different layouts depending on the screen width
    double width = MediaQuery.of(context).size.width;
    return const LayoutDesktop(title: "App Desktop Title");

  }

  // Definir el contingut del widget 'App'
  @override
  Widget build(BuildContext context) {
    // Farem servir la base 'Cupertino'
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: _setLayout(context),
    );
  }
}
