import 'package:flutter/material.dart';
import 'package:dt/views/home/home_view.dart';

void main() =>  runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DukoreTech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // color: const Color(0xff23a8f2), // blue __ we use 0xff in place of #

          //To get the font to apply to the entire application we will set the textTheme of the app in the main.dart file
        textTheme: Theme.of(context).textTheme.apply(
                  fontFamily: 'Open Sans',

      ),
      ),
      darkTheme: ThemeData.dark(),
      home: HomeView()
    );
  }
}
