import 'package:flutter/material.dart';

class AcceptPage extends StatefulWidget {
  const AcceptPage({super.key});

  @override
  State<AcceptPage> createState() => _AcceptPageState();
}

class _AcceptPageState extends State<AcceptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/accept.gif")),
    );
  }
}
