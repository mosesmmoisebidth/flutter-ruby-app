import 'package:flutter/material.dart';
import 'package:starter_proj/components/my_drawer.dart';
import 'package:starter_proj/components/my_sliver_app_bar.dart';
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
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(child: Text("Home"), title: Text("Title"))
        ],
        body: Container(
          color: Colors.blue,
        )
      )
    );
  }
}