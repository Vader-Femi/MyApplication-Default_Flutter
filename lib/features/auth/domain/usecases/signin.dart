import 'package:dartz/dartz.dart';
import 'package:myapplication/core/usecase/usecase.dart';
import 'package:myapplication/features/auth/domain/repository/auth.dart';
import 'package:myapplication/service_locator.dart';

class SigninUseCase implements Usecase<Either,String> {

  @override
  Future<Either> call({String? params}) async {

    return sl<AuthRepository>().signin(params!);
  }

}