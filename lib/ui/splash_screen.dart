import 'package:bloc_sm/bloc/splash/splah_state.dart';
import 'package:bloc_sm/bloc/splash/splash_bloc.dart';
import 'package:bloc_sm/bloc/splash/splash_event.dart';
import 'package:bloc_sm/main.dart';
import 'package:bloc_sm/ui/slider_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(SplashStart());
  }


  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashComplete) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => SliderScreen(),));
        }
      },
      child: Scaffold(

        body: SafeArea(
          bottom: false,
          child: BlocBuilder<SplashBloc, SplashState>(
            builder: (context, state) {

              // if(state is SplashLoading) {
              //   return Center(child: CircularProgressIndicator());
              // }
              // else {
                return Stack(
                  children: [
                    Center(
                      child: Text("Bloc Demo"),
                    ),
                  ],
                );
             // }
              },
          ),
        ),
      ),
    );;
  }
}
