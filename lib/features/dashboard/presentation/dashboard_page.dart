import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common/utils/custom_themes.dart';
import '../../../common/utils/dimensions.dart';
import '../../../common/widgets/progress_dialog.dart';
import '../../../router/app_router.dart';
import '../../auth/presentation/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key, required this.child});

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
              builder: (context) => const ProgressDialog(),
            );
          },
          loggedOut: () {
            //Dismiss Progress Dialog
            Navigator.of(context).pop();

            context.go(AppRouter.login);
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
        bottomNavigationBar: NavigationBar(
          selectedIndex: _activeIndex(context),
          destinations: _tabItemMap.entries.map((e) {
            var key = e.key;
            var icons = e.value;

            var labelName = key.replaceFirst('/', '');
            labelName = labelName.replaceFirst(labelName.substring(0, 1),
                labelName.substring(0, 1).toUpperCase());

            return NavigationDestination(
              label: labelName,
              icon: Icon(icons[0]),
              selectedIcon: Icon(icons[1]),
            );
          }).toList(),
          onDestinationSelected: (index) {
            var key = _tabItemMap.keys.indexed
                .firstWhere((element) => element.$1 == index)
                .$2;
            context.go(key);
          },
        ),
      ),
    );
  }

  final Map<String, List<IconData>> _tabItemMap = {
    AppRouter.home: [Icons.home_outlined, Icons.home],
    AppRouter.order: [Icons.shopping_cart_outlined, Icons.shopping_cart],
    AppRouter.more: [Icons.more_outlined, Icons.more]
  };

  int _activeIndex(BuildContext context) {
    final uriRoute = GoRouterState.of(context).uri.toString();

    for (var (i, key) in _tabItemMap.keys.indexed) {
      if (uriRoute.startsWith(key)) {
        return i;
      }
    }
    return 0;
  }
}
