import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:social_media/view/auth/signup/cubit/state/state.dart';

import '../../../../../services/auth_services/auth_services.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(InitialState());
  signUp(
      {required String name, required String email, required String password}) {
    final AuthServices services = AuthServices();
    emit(LoadingState());
    services
        .signUp(userName: name, email: email, password: password)
        .then((response) {
      if (response is String) {
        emit(ErrorState());
      } else if(response.body.toString() == '{"error":"Pass currect data"}'){
        emit(DataErroState());
      }else{
        final decode = jsonDecode(response.body);
        emit(SuccessState(decode));
      }
    });
  }
}
