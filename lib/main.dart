import 'package:flutter/material.dart';
import 'package:odc_orange_task/Screens/pressure.dart';
import 'package:odc_orange_task/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ChangeValueTo()),
      ],
      child: MaterialApp(
        title: 'Orange Hackathon',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

