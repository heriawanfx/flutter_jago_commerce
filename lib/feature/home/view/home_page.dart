import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_commerce/common/utils/custom_themes.dart';
import 'package:flutter_jago_commerce/common/utils/dimensions.dart';
import 'package:flutter_jago_commerce/common/widgets/progress_dialog.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey();

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loading: () {
            showAdaptiveDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return const ProgressDialog();
              },
            );
          },
          loggedOut: () {
            context.go('/login');
          },
          error: (message) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(
                    content: Text('Failed to Logout'),
                    backgroundColor: Colors.red),
              );
          },
        );
      },
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Jago Commerce'),
              Text(
                'Path: ${GoRouterState.of(context).fullPath}',
                style: titilliumRegular.copyWith(
                    fontSize: Dimensions.fontSizeSmall),
              )
            ],
          ),
        ),
        body: child,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _activeIndex(context),
          items: _tabItemMap.entries.indexed.map((e) {
            var index = e.$1;
            var key = e.$2.key;
            var icons = e.$2.value;
            return BottomNavigationBarItem(
              label: key,
              icon: Icon(_activeIndex(context) == index ? icons[1] : icons[0]),
            );
          }).toList(),
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            var key = _tabItemMap.keys.indexed
                .firstWhere((element) => element.$1 == index)
                .$2;
            context.go('/$key'.toLowerCase());
          },
        ),
      ),
    );
  }

  final Map<String, List<IconData>> _tabItemMap = {
    'Dashboard': [Icons.home_outlined, Icons.home],
    'Order': [Icons.shopping_cart_outlined, Icons.shopping_cart],
    'More': [Icons.more_outlined, Icons.more]
  };

  int _activeIndex(BuildContext context) {
    final uriRoute = GoRouterState.of(context).uri.toString();

    for (var (i, key) in _tabItemMap.keys.indexed) {
      if (uriRoute.startsWith('/$key'.toLowerCase())) {
        return i;
      }
    }
    return 0;
  }
}