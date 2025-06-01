import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Row(
          children: [
            Switch(
              value: false,
              onChanged: (value) {},  // Note: 'onChanged' not 'onChange'
            ),
          ],
        ),
        ]

        // const SizedBox(height: 20),
      ),


    );
  }
}