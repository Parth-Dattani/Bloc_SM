import 'package:bloc_sm/bloc/counter/counter_bloc.dart';
import 'package:bloc_sm/bloc/slider/slider_bloc.dart';
import 'package:bloc_sm/bloc/splash/splash_bloc.dart';
import 'package:bloc_sm/ui/counter_screen.dart';
import 'package:bloc_sm/ui/slider_screen.dart';
import 'package:bloc_sm/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => SliderBloc()),
        BlocProvider(create: (_) => SplashBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
