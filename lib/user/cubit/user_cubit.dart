import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/user_model.dart';

class UserCubit extends Cubit<UserModel>{
  UserCubit() : super (UserModel.empty());

  void updateUserName(String value){
   var user =  UserModel(name: value , email:state.email );
   emit(user);

  }
  void updateUserEmail(String value){
    var user =  UserModel(name: state.name , email: value );
    emit(user);
  }


}