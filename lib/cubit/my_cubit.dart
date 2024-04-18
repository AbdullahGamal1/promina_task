import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  MyCubit() : super(MyInitial());
  final picker = ImagePicker();
  File? _imageFile;

  Future<void> loginUser(
      {required String email, required String password}) async {
    try {
      var auth = FirebaseAuth.instance;
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      String message = 'Something Went Wrong.';
      emit(LoginError(message));
    }
  }

  Future<void> uploadImage() async {
    if (_imageFile == null) {
      emit(
          ImageUploadingError('No image selected')); // Or handle it differently
      return;
    }

    final storage = FirebaseStorage.instance.ref();
    final ref = storage.child('images/${DateTime.now()}.jpg');

    try {
      await ref.putFile(_imageFile!);
      emit(ImageUploadingSuccessfully());
      print('Image uploaded successfully!');
    } catch (e) {
      emit(ImageUploadingError(e.toString()));
      print('Error uploading image: $e');
    }
  }

  Future<void> pickImage() async {
    try {
      final pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        _imageFile = File(pickedImage.path);
        emit(ImagePickSuccessfully());
      }
    } catch (e) {
      emit(ImagePickError(e.toString()));
      print('Error picking image: $e');
    }
  }

  Future<void> takeImageFromCamera() async {
    try {
      final pickedImage = await picker.pickImage(source: ImageSource.camera);
      if (pickedImage != null) {
        _imageFile = File(pickedImage.path);
        emit(ImagePickSuccessfully());
      }
    } catch (e) {
      emit(ImagePickError(e.toString()));
      print('Error picking image: $e');
    }
  }
}
