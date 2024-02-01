import 'package:flutter/material.dart';

class SignUpScreenPage extends StatefulWidget {
  const SignUpScreenPage({super.key});

  static const String routeName = '/sign-up';

  @override
  State<SignUpScreenPage> createState() => _SignUpScreenPageState();
}

class _SignUpScreenPageState extends State<SignUpScreenPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      child: Stack(
        children: [],
      ),
    );
  }
}
