import 'package:flutter/material.dart';
import 'package:navigation/router/name_route.dart';
import 'package:navigation/screen/bloc/home/bloc/home_bloc.dart';
import 'package:navigation/screen/home_page.dart';
import 'package:navigation/screen/second/page_args/second_page_args.dart';
import 'package:navigation/screen/second/second_page.dart';
import 'package:navigation/screen/third_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

sealed class AppRoutes {
  AppRoutes._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeBloc(),
            child: const HomePage(),
          ),
        );
      case Routes.second:
        return MaterialPageRoute(
          builder: (_) => SecondPage(
            age: (settings.arguments as SecondPageArguments).age,
            name: (settings.arguments as SecondPageArguments).name,
          ),
        );
      case Routes.third:
        return MaterialPageRoute(
          builder: (_) => ThirdPAge(name: settings.arguments as String),
        );
    }
    return null;
  }
}
