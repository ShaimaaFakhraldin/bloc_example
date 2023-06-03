import 'package:bloc_example/user/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditUserProfile extends StatefulWidget {
  const EditUserProfile({super.key});

  @override
  State<EditUserProfile> createState() => _EditUserProfileState();
}

class _EditUserProfileState extends State<EditUserProfile> {
  final nameCon = TextEditingController();
  final emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return
    Scaffold(
      appBar:  AppBar(
        title: const Text(" Edite Profile"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         TextFormField(
           controller: nameCon,
           decoration: const InputDecoration(
             labelText: "Enter your name"
           ),
           onChanged: (String? value ){

           },

         ),
            const SizedBox(height: 20,),
            TextFormField(
              controller: emailCon,
              decoration: const InputDecoration(
                  labelText: "Enter your email"
              ),
              onChanged: (String? value ){


              },

            ),

            const SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){

                  context.read<UserCubit>().updateUserName(nameCon.text);

                }, child: Text("Change name " , style:  TextStyle(fontSize: 20),)),
                SizedBox(width: 30,),
                ElevatedButton(onPressed: (){
                  context.read<UserCubit>().updateUserEmail(emailCon.text);

                }, child: Text("Change email ",  style:  TextStyle(fontSize: 20), ))

              ],
            )
          ],

        ),
      ),


    );
  }
}
