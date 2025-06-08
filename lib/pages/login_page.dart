import 'package:flutter/material.dart';
import 'package:starter_proj/components/my_textfield.dart';
import 'package:starter_proj/components/my_button.dart';
import 'package:starter_proj/pages/home_page.dart';

class LoginPage extends StatelessWidget {

    final Function()? onTap;
    
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    LoginPage({ super.key, required this.onTap });

    @override
    Widget build(BuildContext context){

      void login(){

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage(),),
        );
      }

        return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        //Logo

                        Icon(
                            Icons.lock_clock_rounded,
                            size:100,
                            color: Theme.of(context).colorScheme.inversePrimary
                        ),
                        const SizedBox(height:25),
                        Text(
                            "Welcome Back",
                            style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).colorScheme.inversePrimary,
                            ),
                        ),

                        MyTextField(
                            controller: emailController,
                            hintText: "Email",
                            obscureText: false
                        ),

                        const SizedBox(height: 10),

                        MyTextField(
                            controller: passwordController,
                            hintText: "Password",
                            obscureText: true
                        ),

                        const SizedBox(height: 25),

                        MyButton(
                            text: "Sign In",
                            onTap: login,
                        ),

                        const SizedBox(height: 25),

                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            GestureDetector(
                            onTap: onTap,
                            child: Row(
                                children: [
                                Text(
                                    "Not a member?",
                                    style: TextStyle(
                                    color: Theme.of(context).colorScheme.inversePrimary
                                    ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                    "Register",
                                    style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context).colorScheme.inversePrimary,
                                    fontWeight: FontWeight.bold
                                    ),
                                ),
                                ],
                            ),
                            )
                        ]
                        )

                    ]
                )
            )
        );
    }
}