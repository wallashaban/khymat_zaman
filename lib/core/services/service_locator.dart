

import '../utils/exports.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    ///auth
    // /// Authentication remoteDataSource
    // sl.registerLazySingleton<BaseAuthenticationRemoteDataSource>(
    //   () => AuthenticationRemoteDataSource(),
    // );

    // /// Authentication Repository
    // sl.registerLazySingleton<BaseAuthenticationRepository>(
    //   () => AuthenticationRepository(sl()),
    // );

   
    // /// Authentication signIn UseCase
    // sl.registerLazySingleton(
    //   () => LoginUserUseCase(sl()),
    // );

 
    // sl.registerFactory(
    //   () => DevelopmentFlowCubit(sl(),sl(),sl(),sl(),sl()),
    // );
  }
}
