part of 'my_cubit.dart';

@immutable
abstract class MyState {}

class MyInitial extends MyState {}

class LoginLoading extends MyState {}

class LoginError extends MyState {}

class LoginSuccess extends MyState {}
