// my_state.dart

import 'dart:io';

abstract class MyState {}

class MyInitial extends MyState {}

class LoginSuccess extends MyState {}

class LoginError extends MyState {
  final String message;
  LoginError(this.message);
}

class ImageUploadingSuccessfully extends MyState {}

class ImageUploadingLoading extends MyState {}

class ImageUploadingError extends MyState {
  final String message;
  ImageUploadingError(this.message);
}

class ImagePickSuccessfully extends MyState {
  ImagePickSuccessfully();
}

class ImagePickLoading extends MyState {}

class ImagePickError extends MyState {
  final String message;
  ImagePickError(this.message);
}

class TakeImageSuccessfully extends MyState {
  TakeImageSuccessfully();
}

class TakeImageLoading extends MyState {}

class TakeImageError extends MyState {
  final String message;
  TakeImageError(this.message);
}
