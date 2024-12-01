import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_libraryy/core/utils/service_locator.dart';
import 'package:lit_libraryy/features/home/data/models/book_model/book_model.dart';
import 'package:lit_libraryy/features/home/data/repos/home_repo_impl.dart';
import 'package:lit_libraryy/features/home/ui/view_model/similar_books_cu/similar_books_cubit.dart';

import '../../features/auth/login_view.dart';
import '../../features/auth/register_view.dart';
import '../../features/home/ui/views/book_details_view.dart';
import '../../features/home/ui/views/home_view.dart';
import '../../features/search/ui/views/search_view.dart';
import '../../features/splash/splash_view.dart';

class AppRoutes {
  static const String splash = "/";
  static const String bookDetails = "/BookDetailsView";
  static const String search = "/SearchView";
  static const String home = "/HomeView";
  static const String logIn = "/LoginView";
  static const String register = "/RegisterView";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case bookDetails:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) =>
                    SimilarBooksCubitCubit(getIt.get<HomeRepoImpl>()),
                child:  BookDetailsView(book: state.extra as BookModel,)));
      case search:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case logIn:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }

  static Widget buildPage(RouteSettings settings) {
    switch (settings.name) {
      default:
        return const SizedBox.shrink();
    }
  }
}
