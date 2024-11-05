import 'dart:io';
import 'package:myapplication/core/res/data_state.dart';

abstract class AuthService {
  Future<DataState> signUp(String name);

  Future<DataState> signIn(String name);
}


class AuthServiceImpl extends AuthService {

  @override
  Future<DataState> signIn(String name) async {
    try {

      return const DataSuccess("Sign in was successful");

    } on HttpException catch (e) {
      String message = "";

      // if (e.code == "invalid-email") {
      //   message = "Email or password invalid";
      // } else if (e.code == "invalid-credential") {
      //   message = "Email or password invalid";
      // } else {
      //   message = e.message ?? "Something went wrong";
      // }

      return DataFailed(errorMessage: message);
    }
  }

  @override
  Future<DataState> signUp(String name) async {
    try {


      return const DataSuccess("Sign in was successful");
    } on HttpException catch (e) {

      String message = "";
      // if (e.code == "weak-password") {
      //   message = "The Password provided is too weak";
      // } else if (e.code == "email-already-in-use") {
      //   message = "An account already exist with that email";
      // } else {
      //   message = e.message ?? "Something went wrong";
      // }

      return DataFailed(errorMessage: message);
    }
  }
}
