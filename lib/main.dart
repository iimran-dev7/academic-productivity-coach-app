import 'package:flutter/material.dart';

import 'screen/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
  // Define the overall brightness of the theme.
  brightness: Brightness.light,

  // Primary Color
  primaryColor: const Color(0xFFFF9800), // blue 

  // ColorScheme for Material 3 (more dynamic color system)
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFFF9800), // blue 
    secondary: Color(0xFFFFC107), // Light Beige
    surface: Color(0xFFF5F5DC), // Light Beige (same as background for flat surfaces)
    error: Colors.red,
    onPrimary: Colors.black, // Text color on primary color
    onSecondary: Colors.black, // Dark Brown text on background
    onSurface: Color(0xFF3E2723), // Dark Brown text on surface
    onError: Colors.white,
  ),

  // Define text theme to be used in the app
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.bold,
      color: Color(0xFF3E2723), // Dark Brown
    ),
    headlineMedium: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Color(0xFF3E2723), // Dark Brown
    ),
    headlineSmall: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Color(0xFF3E2723), // Dark Brown
    ),
    bodyLarge: TextStyle(
      fontSize: 18.0,
      color: Color(0xFF3E2723), // Dark Brown
    ),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      color: Color
(0xFF3E2723), // Dark Brown
    ),
    bodySmall: TextStyle(
      fontSize: 14.0,
      color: Color(0xFF3E2723), // Dark Brown
    ),
  ),

  // AppBar Theme
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFFF9800), // Vibrant Orange
    foregroundColor: Colors.black,
    elevation: 2.0,
    titleTextStyle: TextStyle(color: Color(0xFFFF9800))
  ),

  // Button Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF2196F3), // Blue Accent
      foregroundColor: Colors.white, // White Text on buttons
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
        foregroundColor: const Color(0xFF2196F3) // Blue Accent
        ),
  ),

  // FloatingActionButton Theme
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF2196F3), // Blue Accent
    foregroundColor: Colors.white,
  ),

  // Other UI elements can be customized here
),
      home: const SignUpScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
