import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/utils/custom_themes.dart';
import '../../../../common/utils/dimensions.dart';
import '../../../../common/widgets/custom_button.dart';
import '../../../../common/widgets/custom_password_textfield.dart';
import '../../../../common/widgets/custom_textfield.dart';
import '../../../../common/widgets/progress_dialog.dart';
import '../../../../core/auth/data/models/requests/login_request_model.dart';
import '../../../../router/app_router.dart';
import '../bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final FocusNode _emailNode = FocusNode();
  final FocusNode _passNode = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loading: () {
            showAdaptiveDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => const ProgressDialog(),
            );
          },
          loggedIn: (value) {
            //Dismiss Progress Dialog
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }

            context.goNamed(AppRouter.dashboard);
          },
          error: (message) {
            //Dismiss Progress Dialog
            Navigator.of(context).pop();

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red,
                ),
              );
          },
        );
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: Dimensions.paddingSizeDefault),
              CustomTextField(
                hintText: 'Email',
                focusNode: _emailNode,
                nextNode: _passNode,
                textInputType: TextInputType.emailAddress,
                controller: _emailController,
              ),
              const SizedBox(height: Dimensions.paddingSizeSmall),
              CustomPasswordTextField(
                hintTxt: 'Password',
                textInputAction: TextInputAction.done,
                focusNode: _passNode,
                controller: _passwordController,
              ),
              const SizedBox(height: Dimensions.paddingSizeDefault),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox.adaptive(
                        value: false,
                        onChanged: (isChecked) {},
                      ),
                      const Text('Remember', style: titilliumRegular),
                    ],
                  ),
                  TextButton(
                    onPressed: () => {},
                    child: const Text('Forgot Password'),
                  ),
                ],
              ),
              const SizedBox(height: Dimensions.paddingSizeDefault),
              CustomButton(
                onTap: () => _actionLogin(context),
                buttonText: 'Sign In',
              ),
              const SizedBox(height: Dimensions.paddingSizeDefault),
              const Center(
                child: Text('OR'),
              ),
              const SizedBox(height: Dimensions.paddingSizeExtraExtraSmall),
              TextButton(
                onPressed: () => context.goNamed(AppRouter.dashboard),
                child: const Text('Continue as Guest'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _actionLogin(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      String email = _emailController.text.trim();
      String password = _passwordController.text.trim();

      final model = LoginRequestModel(
        email: email,
        password: password,
      );
      context.read<AuthBloc>().add(AuthEvent.login(model));
    }
  }
}
