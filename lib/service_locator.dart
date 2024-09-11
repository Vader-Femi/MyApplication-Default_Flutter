import 'package:get_it/get_it.dart';
import 'package:myapplication/data/repository/auth/auth_repository_impl.dart';
import 'package:myapplication/domain/repository/auth/auth.dart';
import 'package:myapplication/domain/usecases/auth/signin.dart';
import 'package:myapplication/domain/usecases/auth/signup.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );

  sl.registerSingleton<SigninUseCase>(
    SigninUseCase()
  );
}