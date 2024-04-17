import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  MyCubit() : super(MyInitial());

  Future<void> loginUser(
      {required String email, required String password}) async {
    try {
      var auth = FirebaseAuth.instance;
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      String message = 'Somthing Went Wrong .';
      emit(LoginError(message));
    }
  }
}
