import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starter_proj/themes/theme_provider.dart';
import 'package:starter_proj/auth/login_or_register.dart';

void main() => runApp(ChangeNotifierProvider(
  create: (context) => ThemeProvider(),
  child: const MyApp()
));

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routing',
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

