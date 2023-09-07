import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_commerce/assets_gen/assets.gen.dart';
import 'package:flutter_jago_commerce/common/utils/color_resources.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_jago_commerce/feature/splash/presentation/view/widgets/splash_painter.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          error: (message) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
          },
          loggedIn: (value) {
            if (value.isEmpty) {
              Future.delayed(const Duration(seconds: 3), () {
                context.go('/login');
              });
            } else {
              context.go('/dashboard');
            }
          },
        );
      },
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: ColorResources.getPrimary(context),
              child: CustomPaint(
                painter: SplashPainter(),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    MyAssets.images.cwbSplash.path,
                    height: 250.0,
                    fit: BoxFit.scaleDown,
                    width: 250.0,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
