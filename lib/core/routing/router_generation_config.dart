import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trackify_app/core/routing/app_routes.dart';
import 'package:trackify_app/features/add_order_screen/cubit/orders_cubit.dart';
import 'package:trackify_app/features/add_order_screen/screens/add_order_screen.dart';
import 'package:trackify_app/features/auth/cubit/auth_cubit.dart';
import 'package:trackify_app/features/auth/screns/login_screen.dart';
import 'package:trackify_app/features/auth/screns/register_screen.dart';
import 'package:trackify_app/features/home/home_screen.dart';
import 'package:trackify_app/features/splash_screen/splash_screen.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.splashScreen,
    routes: [
      GoRoute(
        name: AppRoutes.splashScreen,
        path: AppRoutes.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: AppRoutes.loginScreen,
        path: AppRoutes.loginScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<AuthCubit>(),
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        name: AppRoutes.registerScreen,
        path: AppRoutes.registerScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<AuthCubit>(),
          child: RegisterScreen(),
        ),
      ),
      GoRoute(
        name: AppRoutes.homeScreen,
        path: AppRoutes.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: AppRoutes.addOrderScreen,
        path: AppRoutes.addOrderScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<OrdersCubit>(),
          child: AddOrderScreen(),
        ),
      ),
    ],
  );
}
