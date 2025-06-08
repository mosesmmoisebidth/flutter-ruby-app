import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
    TextEditingController controller;
    final String hintText;
    final bool obscureText;
    // final bool dontObscureText;
    // final String textMarks;
    // final String textFair;


    MyTextField({
        super.key,
        required this.controller,
        required this.hintText,
        required this.obscureText,
        // required this.dontObscureText,
        // required this.textMarks,
        // required this.textFair,
    });

    @override
    Widget build(BuildContext context){
      
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
                    controller: controller,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.tertiary,
                            ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary
                            ),
                        ),
                        hintText: hintText,
                        hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                        )
                    ),
                ),
        );
    }
}