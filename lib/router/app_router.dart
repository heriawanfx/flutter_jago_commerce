import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../common/utils/string_ext.dart';
import '../features/auth/presentation/auth_page.dart';
import '../features/auth/presentation/bloc/auth_bloc.dart';
import '../features/auth/presentation/widgets/login_form.dart';
import '../features/auth/presentation/widgets/register_form.dart';
import '../features/banner/presentation/bloc/banner_bloc.dart';
import '../features/cart/cart_page.dart';
import '../features/category/presentation/bloc/category_bloc.dart';
import '../features/checkout/presentation/checkout_page.dart';
import '../features/checkout/presentation/pages/payment_failed_page.dart';
import '../features/checkout/presentation/pages/payment_page.dart';
import '../features/checkout/presentation/pages/payment_success_page.dart';
import '../features/checkout/presentation/pages/payment_web.dart';
import '../features/dashboard/presentation/dashboard_page.dart';
import '../features/product/presentation/bloc/product_bloc.dart';
import '../features/product/presentation/product_detail.dart';
import '../features/product/product_list_page.dart';
import '../features/splash/presentation/splash_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root_navigator');
final GlobalKey<NavigatorState> _authNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'auth_navigator');

class AppRouter {
  const AppRouter._();

  static const splash = 'splash';
  static const login = 'login';
  static const register = 'register';

  static const dashboard = 'dashboard';
  static const home = 'home';
  static const order = 'order';
  static const more = 'more';

  static const products = '/products';
  static const product = '/product';
  static const cart = '/cart';
  static const checkout = 'checkout';
  static const payment = 'payment';
  static const paymentSuccess = 'payment-success';
  static const paymentFailed = 'payment-failed';
}

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRouter.splash.asPath(),
  debugLogDiagnostics: kDebugMode,
  routes: [
    //* Splash
    GoRoute(
      name: AppRouter.splash,
      path: AppRouter.splash.asPath(),
      builder: (context, state) => const SplashPage(),
      redirect: (context, state) {
        context.read<AuthBloc>().state.maybeWhen(
            orElse: () => null,
            loggedIn: (model) {
              return model != null
                  ? AppRouter.dashboard.asPath()
                  : AppRouter.login.asPath();
            });
        return null;
      },
    ),
    //* Shell Auth
    ShellRoute(
      navigatorKey: _authNavigatorKey,
      builder: (context, state, child) {
        return AuthPage(child: child);
      },
      routes: [
        //* Login
        GoRoute(
          name: AppRouter.login,
          path: AppRouter.login.asPath(),
          builder: (context, state) => const LoginForm(),
        ),
        //* Register
        GoRoute(
          name: AppRouter.register,
          path: AppRouter.register.asPath(),
          builder: (context, state) => const RegisterForm(),
        ),
      ],
    ),
    //* Dashboard - Root
    GoRoute(
      name: AppRouter.dashboard,
      path: '/',
      builder: (context, state) {
        final selectedTab = state.uri.queryParameters['tab'] ?? AppRouter.home;
        switch (selectedTab) {
          case AppRouter.order:
            break;
          case AppRouter.more:
            break;
          case AppRouter.home:
          default:

            //Fetch Banners
            context.read<BannerBloc>().add(const BannerEvent.getBanners());

            //Fetch Categories
            context
                .read<CategoryBloc>()
                .add(const CategoryEvent.getCategories());

            //Fetch Products
            context.read<ProductBloc>().add(const ProductEvent.getProducts());

            break;
        }

        return DashboardPage(tab: selectedTab);
      },
    ),
    //* Products
    GoRoute(
      path: AppRouter.products,
      name: AppRouter.products,
      builder: (context, state) {
        final queryMap = state.uri.queryParameters;
        final categoryId = queryMap['category_id']!;
        final categoryName = queryMap['category_name'];

        //Fetch Product By Category
        context
            .read<ProductBloc>()
            .add(ProductEvent.getProducts(category_id: categoryId));

        return ProductListPage(
          category_id: categoryId,
          category_name: categoryName,
        );
      },
    ),
    //* Products/:id
    GoRoute(
      name: AppRouter.product,
      path: '${AppRouter.products}/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;

        //Fetch Product id
        context.read<ProductBloc>().add(ProductEvent.getProduct(id));

        return ProductDetail(id: id);
      },
    ),
    //* Cart
    GoRoute(
      name: AppRouter.cart,
      path: AppRouter.cart,
      builder: (context, state) => const CartPage(),
      routes: [
        //* Cart/Checkout
        GoRoute(
          name: AppRouter.checkout,
          path: AppRouter.checkout,
          builder: (context, state) => const CheckoutPage(),
          routes: [
            //* Cart/Checkout/Payment
            GoRoute(
              name: AppRouter.payment,
              path: AppRouter.payment,
              builder: (context, state) {
                // ignore: non_constant_identifier_names
                final payment_url =
                    state.uri.queryParameters['payment_url'] as String;

                if (kIsWeb) {
                  return PaymentWeb(payment_url: payment_url);
                }
                return PaymentPage(payment_url: payment_url);
              },
            ),
            //* Cart/Checkout/Payment-Success
            GoRoute(
              name: AppRouter.paymentSuccess,
              path: AppRouter.paymentSuccess,
              builder: (context, state) => const PaymentSuccessPage(),
            ),
            //* Cart/Checkout/Payment-Failed
            GoRoute(
              name: AppRouter.paymentFailed,
              path: AppRouter.paymentFailed,
              builder: (context, state) => const PaymentFailedPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
