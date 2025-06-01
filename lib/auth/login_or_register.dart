import 'package:flutter/material.dart';
import 'package:starter_proj/pages/login_page.dart';
import 'package:starter_proj/pages/register_page.dart';


class LoginOrRegister extends StatefulWidget {

    const LoginOrRegister({ super.key });

    @override
    State<LoginOrRegister> createState() => _LoginOrRegister();
}

class _LoginOrRegister extends State<LoginOrRegister> {

    bool showLoginPage = true;

    void togglePages(){
        setState((){
            showLoginPage = !showLoginPage;
        });
    }

    @override
    Widget build(BuildContext context){
        if(showLoginPage){
            return LoginPage(
                onTap: togglePages
            );
        }else{
            return RegisterPage(
                onTap: togglePages
            );
        }
    }
}