import 'package:bloc_basic_injection/AppRouter.dart';
import 'package:bloc_basic_injection/repository/MyRepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final MyRepository myRepository = MyRepository();

  AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(myRepository);
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: myRepository),
      ],
      child: MaterialApp(
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
