import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/HomePage.dart';
import 'package:state_management/Provider/ListProvider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => Listprovider(),
      )
    ], child: MaterialApp(home: Homepage()));
  }
}
