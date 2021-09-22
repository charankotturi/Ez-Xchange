import 'package:flutter/material.dart';
import 'nav_pages.dart' as nav_graph;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Auction Eth",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: nav_graph.RouteGenerator.generateRoute,
    );
  }
}
