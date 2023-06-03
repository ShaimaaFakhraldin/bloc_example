import 'package:bloc_example/user/cubit/user_cubit.dart';
import 'package:bloc_example/user/data/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               BlocSelector<UserCubit ,UserModel ,String>(selector: (UserModel state){
                  return state.name!;
               }, builder: (a , value){
                 print("BlocSelector name  ");

                  return Container(
                    color: Colors.yellow,
                    child:  Text("$value", style: const TextStyle(fontSize: 30)),
                  );

          }),

              // BlocConsumer<UserCubit, UserModel>(
              //   builder: (BuildContext context, state) {
              //     print("BlocConsumer  name");
              //
              //     return Text(
              //       "User name : ${state.name} ",
              //       style: const TextStyle(fontSize: 30),
              //     );
              //   },
              //   listener: (BuildContext context, UserModel state) {
              //      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("change")));
              //   },
              // ),
              const SizedBox(
                height: 20,
              ),
              BlocConsumer<UserCubit, UserModel>(
                builder: (BuildContext context, UserModel state) {
                  print("BlocConsumer  email");
                  return Text(
                    "Email  : ${state.email}  ",
                    style: const TextStyle(fontSize: 30),
                  );
                },
                listener: (BuildContext context, UserModel state) {},
              ),
            ],
          ),
        ));
  }
}
