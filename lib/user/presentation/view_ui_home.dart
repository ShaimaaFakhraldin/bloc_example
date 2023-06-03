import 'package:bloc_example/user/presentation/edit_user_profile.dart';
import 'package:bloc_example/user/presentation/user_profile.dart';
import 'package:flutter/material.dart';

class ViewUiHome extends StatelessWidget {
  const ViewUiHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
                child: UserProfile()),
            Expanded(child: Container(
                 child: EditUserProfile())),

          ],
        ),
      ),
    );
  }
}
