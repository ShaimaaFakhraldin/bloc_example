  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../them/bloc/them_bloc.dart';
import '../../them/bloc/them_events.dart';
import '../../them/cubit.dart';
import '../bloc/counter_bloc.dart';
import '../bloc/couter_events.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("Counter"),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                BlocBuilder <CounterBloc, int>(
                builder: (BuildContext context,  int? state ) {
                  return  Text("$state" ,style: const TextStyle(fontSize: 30),);
                }
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(CounterIncrement());
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(CounterDecrement());
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                // with bloc
               // context.read<ThemBloc>().add(ChangThemLight());
                context.read<ThemCubit>().toggleThem();
              },
              child: const Icon(Icons.brightness_6),
            ),
          ],
        ),
      ),
    );
  }
}
