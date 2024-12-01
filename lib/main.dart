import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lit_libraryy/core/utils/api_services.dart';
import 'package:lit_libraryy/core/utils/service_locator.dart';
import 'package:lit_libraryy/features/home/data/repos/home_repo_impl.dart';
import 'package:lit_libraryy/features/home/ui/view_model/featured_books_cu/featured_books_cubit.dart';
import 'package:lit_libraryy/features/home/ui/view_model/newest_books_cu/newest_books_cubit.dart';
import 'package:lit_libraryy/features/home/ui/views/home_view.dart';
import 'firebase_options.dart';
import 'core/utils/app_routes.dart';

void main() async {
  setup();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            HomeRepoImpl(
              ApiServices(
                Dio(),
              ),
            ),
          )..featuredBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>()
          )..newestBooks(),
        ),
      ],
      child: MaterialApp(
        title: 'Book Land',
        onGenerateRoute: AppRoutes.generateRoute,
        //initialRoute: AppRoutes.splash,
        home: const HomeView(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.dosisTextTheme(),
        ),
      ),
    );
  }
}
