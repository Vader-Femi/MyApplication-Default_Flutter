import '../../../../core/res/data_state.dart';

abstract class AuthRepository {

  Future<DataState> signUp(String name);

  Future<DataState> signIn(String name);
}