import 'package:equatable/equatable.dart';

abstract class SignUpState extends Equatable {}

class InitialState extends SignUpState {
  @override
  List<Object> get props => [];
}

class LoadingState extends SignUpState {
  @override
  List<Object> get props => [];
}

class DataErroState extends SignUpState {
  @override
  List<Object> get props => [];
}

class SuccessState extends SignUpState {
  SuccessState(this.user);

  final Map<String, String> user;

  @override
  List<Object> get props => [user];
}

class ErrorState extends SignUpState {
  @override
  List<Object> get props => [];
}
