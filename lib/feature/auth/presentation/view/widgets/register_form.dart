import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(GoRouterState.of(context).fullPath ?? ''),
    );
  }
}
