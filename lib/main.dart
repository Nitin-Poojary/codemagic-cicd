import 'package:cicdtest/env.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codemagic CI/CD Tutorial',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: Center(child: Text('Running on ${Env.envName} environment')),
      ),
    );
  }
}
