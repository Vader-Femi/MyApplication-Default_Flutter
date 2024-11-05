import 'package:myapplication/core/usecase/usecase.dart';
import 'package:myapplication/features/auth/domain/repository/auth.dart';
import '../../../../core/res/data_state.dart';

class SignupUseCase implements Usecase<DataState,String> {

  final AuthRepository _authRepository;
  SignupUseCase(this._authRepository);

  @override
  Future<DataState> call({String? params}) async {
    return _authRepository.signUp(params!);
  }

}