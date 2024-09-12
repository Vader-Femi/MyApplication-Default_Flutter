import 'package:dartz/dartz.dart';
import 'package:myapplication/features/auth/data/sources/auth_service.dart';
import 'package:myapplication/features/auth/domain/repository/auth.dart';
import 'package:myapplication/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{

  @override
  Future<Either> signin(String name) async {
    return await sl<AuthService>().signin(name);
  }

  @override
  Future<Either> signup(String name) async {
    return await sl<AuthService>().signup(name);
  }

}