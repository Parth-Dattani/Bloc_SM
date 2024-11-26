import 'package:bloc_sm/bloc/slider/slider_bloc.dart';
import 'package:bloc_sm/bloc/slider/slider_event.dart';
import 'package:bloc_sm/bloc/slider/slider_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notification"),
                BlocBuilder<SliderBloc, SliderState>(
                  buildWhen: (prev, current) => prev.isSwitch != current.isSwitch,
                  builder: (context, state) {
                      print("Nottt: $state");
                      return Switch(value: state.isSwitch,
                          onChanged: (value){
                            print("vaaa: $value");
                        context.read<SliderBloc>().add(EnableOrDisableNotification());
                          });
                    },)
              ],
            ),
            SizedBox(height: 25,),
            BlocBuilder<SliderBloc, SliderState>(
              builder: (context, state) {
                return  Container(height: 200,
                    color: Colors.cyan.withOpacity(state.slider));
              },),


            SizedBox(height: 30,),
            BlocBuilder<SliderBloc, SliderState>(
              builder: (context, state) {
                return Slider(value: state.slider,
                    onChanged: (value){
                  print("Val: $value");
                      context.read<SliderBloc>().add(SliderFunEvent(slider: value));
                    });
              },)
            //Slider(value: 0.4, onChanged: (value){})
          ],
        ),
      ),
    );
  }
}
