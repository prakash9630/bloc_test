// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../core/common_bloc/internet_cheacker/internet_cheacker.dart' as _i918;
import '../core/share_prefrences/share_prefrences.dart' as _i878;
import '../network/dio_interceptor.dart' as _i32;
import '../services/home/data/datasource/login_repo_source.dart' as _i22;
import '../services/home/data/repository/login_repository_impl.dart' as _i137;
import '../services/home/doman/repositories/login_repository.dart' as _i801;
import '../services/home/doman/usecase/login_usecase.dart' as _i306;
import '../services/home/presentatin/bloc/login_bloc.dart' as _i111;
import '../services/ip_info/data/datasource/ip_data_source.dart' as _i541;
import '../services/ip_info/data/repository/ip_repository_impl.dart' as _i469;
import '../services/ip_info/doman/repository/ip_repository.dart' as _i140;
import '../services/ip_info/doman/usecase/ip_usecase.dart' as _i698;
import '../services/ip_info/presentation/bloc/ip_cubit.dart' as _i220;
import '../services/jokes/data/datasource/jokes_data_source.dart' as _i290;
import '../services/jokes/data/repository/jokes_repository_imp.dart' as _i305;
import '../services/jokes/doman/repository/jokes_repository.dart' as _i105;
import '../services/jokes/doman/usecase/jokes_usecase.dart' as _i50;
import '../services/jokes/presentation/bloc/jokes_cubit.dart' as _i450;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    final dioModule = _$DioModule();
    gh.factory<_i450.JokesCubit>(() => _i450.JokesCubit());
    gh.singleton<_i918.InternetChecker>(() => _i918.InternetChecker());
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio());
    gh.singleton<_i878.SharedPref>(
        () => _i878.SharedPref(gh<_i460.SharedPreferences>()));
    gh.singleton<_i541.IpDataSource>(
        () => _i541.IpDataSourceImpl(gh<_i361.Dio>()));
    gh.singleton<_i290.JokesDataSource>(
        () => _i290.JokesDataSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i22.LoginRepoSource>(
        () => _i22.LoginRepoSourceImpl(gh<_i361.Dio>()));
    gh.singleton<_i105.JokesRepository>(
        () => _i305.JokesRepositoryImp(gh<_i290.JokesDataSource>()));
    gh.singleton<_i140.IpRepository>(
        () => _i469.IpRepositoryImpl(gh<_i541.IpDataSource>()));
    gh.singleton<_i801.LoginRepository>(
        () => _i137.LoginRepositoryImpl(gh<_i22.LoginRepoSource>()));
    gh.singleton<_i50.JokesUseCase>(
        () => _i50.JokesUseCase(jokesRepository: gh<_i105.JokesRepository>()));
    gh.singleton<_i306.LoginUseCase>(
        () => _i306.LoginUseCase(gh<_i801.LoginRepository>()));
    gh.singleton<_i698.IpUseCase>(
        () => _i698.IpUseCase(gh<_i140.IpRepository>()));
    gh.factory<_i111.LoginBloc>(
        () => _i111.LoginBloc(gh<_i306.LoginUseCase>()));
    gh.factory<_i220.IpCubit>(() => _i220.IpCubit(gh<_i698.IpUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i878.RegisterModule {}

class _$DioModule extends _i32.DioModule {}
