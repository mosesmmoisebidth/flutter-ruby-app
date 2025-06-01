import 'package:flutter/material.dart';
import 'package:starter_proj/components/my_button.dart';
import 'package:starter_proj/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {

    final Function()? onTap;

    RegisterPage({ super.key, required this.onTap });

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();

    @override
    Widget build(BuildContext context){
        return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Icon(
                            Icons.lock_clock_rounded,
                            size:100,
                            color: Theme.of(context).colorScheme.inversePrimary
                        ),
                        const SizedBox(height:25),
                        Text(
                            "Let's create your account",
                            style: TextStyle(
                                fontSize:16,
                                color: Theme.of(context).colorScheme.inversePrimary
                            )
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

                        const SizedBox(height: 10),

                        MyTextField(
                            controller: confirmPasswordController,
                            hintText: "Confirm Password",
                            obscureText: true,
                        ),

                        const SizedBox(height: 25),

                        MyButton(
                            text: "Sign Un",
                            onTap: (){}
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
                                        "Already a member?",
                                        style: TextStyle(
                                          color: Theme.of(context).colorScheme.inversePrimary,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        "Login",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          color: Theme.of(context).colorScheme.inversePrimary,
                                        ),
                                      ),
                                    ]
                                  )
                                )
                                // GestureDetector(
                                //     onTap: onTap,
                                //     child: Text(
                                //             "Already a member?",
                                //             style: TextStyle(
                                //                 color: Theme.of(context).colorScheme.inversePrimary
                                //             ),
                                //         ), 
                                // ),
                                // const SizedBox(width: 5),
                                // Text(
                                //     "Login",
                                //     style: TextStyle(
                                //         fontSize: 16,
                                //         color: Theme.of(context).colorScheme.inversePrimary,
                                //         fontWeight: FontWeight.bold
                                //     )
                                //     )
                            ]
                        )
                    ]
                )
            )
        );
    }
}