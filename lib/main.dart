import 'package:bloc_example/them/bloc/them_bloc.dart';
import 'package:bloc_example/them/cubit.dart';
import 'package:bloc_example/user/cubit/user_cubit.dart';
import 'package:bloc_example/user/presentation/user_profile.dart';
import 'package:bloc_example/user/presentation/view_ui_home.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter/bloc/counter_bloc.dart';
import 'counter/presentation/counter_view.dart';

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
        BlocProvider(create: (BuildContext con) {
          return CounterBloc();
        }),

        BlocProvider(create: (BuildContext con) {
          return ThemBloc();
        }),
        BlocProvider(create: (BuildContext con) {
          return ThemCubit();
        }),
        BlocProvider(create: (BuildContext con) {
          return UserCubit();
        }),
      ],
      child: BlocBuilder<ThemCubit ,ThemeData>(
        builder: (BuildContext context,  ThemeData state ) {
           return  MaterialApp(
             title: 'Flutter Demo',
             theme: state,
            home: const ViewUiHome(),
            // home:  const CounterView(),
           );
        },
      ),
    );
  }
}
