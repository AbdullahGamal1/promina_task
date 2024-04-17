part of 'my_cubit.dart';

@immutable
abstract class MyState {}

class MyInitial extends MyState {}

class LoginLoading extends MyState {}

class LoginError extends MyState {
  final String error;
  LoginError(this.error);
}

class LoginSuccess extends MyState {}
