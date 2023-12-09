import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provideandcamera/pages/home_page.dart';
import 'package:provideandcamera/pages/detail_page.dart';
import 'package:provideandcamera/providers/item_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemProvider(),
      child: MaterialApp(
        title: 'Flutter Provider Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/detail': (context) => DetailPage(),
        },
      ),
    );
  }
}
