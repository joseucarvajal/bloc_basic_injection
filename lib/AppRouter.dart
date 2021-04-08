import 'package:bloc_basic_injection/repository/MyRepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';
import 'screens/screen_a.dart';
import 'screens/screen_b.dart';

class AppRouter {
  CounterBloc _counterBloc;

  AppRouter(MyRepository myRepository) {
    _counterBloc = CounterBloc(myRepository);
  }

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case ScreenA.Route:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterBloc,
            child: ScreenA(),
          ),
        );

      case ScreenB.Route:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterBloc,
            child: ScreenB(),
          ),
        );

      default:
        return null;
    }
  }

  void dispose() {
    _counterBloc.close();
  }
}
