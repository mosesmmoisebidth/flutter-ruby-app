import 'package:flutter/material.dart';
import 'package:starter_proj/components/my_drawer.dart';
// import 'package:starter_proj/components/my_drawertile.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      drawer: MyDrawer(),
    );
  }
}