// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i4;
import 'package:mobile/core/di/modules/database.dart' as _i9;
import 'package:mobile/core/di/modules/storage.dart' as _i8;
import 'package:mobile/features/authentication/data/datasources/local.dart'
    as _i5;
import 'package:mobile/features/authentication/data/repositories/auth.dart'
    as _i7;
import 'package:mobile/features/authentication/domain/repositories/auth.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final storageModule = _$StorageModule();
    final databaseModule = _$DatabaseModule();
    gh.singleton<_i3.FlutterSecureStorage>(() => storageModule.secureStorage);
    await gh.factoryAsync<_i4.Isar>(
      () => databaseModule.db,
      preResolve: true,
    );
    gh.singleton<_i5.AuthUserLocalDataSource>(() => _i5.AuthUserLocalDataSource(
          gh<_i3.FlutterSecureStorage>(),
          gh<_i4.Isar>(),
        ));
    gh.singleton<_i6.AuthRepository>(() => _i7.AuthRepositoryImpl(
          gh<_i3.FlutterSecureStorage>(),
          gh<_i5.AuthUserLocalDataSource>(),
        ));
    return this;
  }
}

class _$StorageModule extends _i8.StorageModule {}

class _$DatabaseModule extends _i9.DatabaseModule {}
