import 'package:book_store_app/screens/book_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/book_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookScreen(),
      routes: {
        //BookScreen.routeName: (context) => BookScreen(),
        BookDetailsScreen.routeName: (context) => BookDetailsScreen(),
      },
    );
  }
}
