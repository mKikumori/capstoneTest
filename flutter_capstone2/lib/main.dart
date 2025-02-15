import 'package:flutter/material.dart';
import 'package:flutter_capstone2/view/auth/signin_view.dart';
import 'package:flutter_capstone2/view/auth/signup_view.dart';
import 'package:flutter_capstone2/view/core/home_view.dart';
import 'package:flutter_capstone2/view/launch/start_page.dart';
import 'package:flutter_capstone2/viewmodel/signup_viewmodel.dart';
import 'package:flutter_capstone2/viewmodel/signin_viewmodel.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SignInViewModel()),
      ChangeNotifierProvider(create: (_) => SignUpViewModel()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Capstone Mockup',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    pageBuilder: (BuildContext context, GoRouterState state) {
      return _customFadeTransition(const StartPage(), state);
    },
  ),
  GoRoute(
    path: '/signup',
    pageBuilder: (BuildContext context, GoRouterState state) {
      return _customFadeTransition(const SignUpPage(), state);
    },
  ),
  GoRoute(
    path: '/signin',
    pageBuilder: (BuildContext context, GoRouterState state) {
      return _customFadeTransition(const SignInPage(), state);
    },
  ),
  GoRoute(
    path: '/home',
    pageBuilder: (BuildContext context, GoRouterState state) {
      return _customFadeTransition(const HomePage(), state);
    },
  ),
]);

CustomTransitionPage<void> _customFadeTransition(
    Widget child, GoRouterState state) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        ),
        child: child,
      );
    },
  );
}
