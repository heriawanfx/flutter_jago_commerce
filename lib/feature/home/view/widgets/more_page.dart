import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/bloc/auth_bloc.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return ListView(
          children: [
            state.maybeWhen(
              orElse: () {
                return Container();
              },
              loggedIn: (value) {
                return Text(value);
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.logout());
              },
              child: const Text('Logout'),
            )
          ],
        );
      },
    );
  }
}
