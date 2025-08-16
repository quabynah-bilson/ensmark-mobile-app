// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:grpc/grpc.dart' as _i1017;
import 'package:injectable/injectable.dart' as _i526;
import 'package:isar/isar.dart' as _i338;
import 'package:mobile/core/di/modules/client.dart' as _i131;
import 'package:mobile/core/di/modules/database.dart' as _i431;
import 'package:mobile/core/di/modules/storage.dart' as _i750;
import 'package:mobile/features/authentication/data/datasources/user.local.dart'
    as _i379;
import 'package:mobile/features/authentication/data/repositories/auth.dart'
    as _i958;
import 'package:mobile/features/authentication/domain/repositories/auth.dart'
    as _i830;
import 'package:mobile/features/authentication/domain/usecases/auth.status.dart'
    as _i266;
import 'package:mobile/features/authentication/domain/usecases/create.password.dart'
    as _i601;
import 'package:mobile/features/authentication/domain/usecases/current.user.dart'
    as _i1017;
import 'package:mobile/features/authentication/domain/usecases/login.property.owner.dart'
    as _i823;
import 'package:mobile/features/authentication/domain/usecases/login.revenue.officer.dart'
    as _i984;
import 'package:mobile/features/authentication/domain/usecases/logout.dart'
    as _i666;
import 'package:mobile/features/authentication/domain/usecases/request.account.dart'
    as _i622;
import 'package:mobile/features/properties/data/datasources/property.local.dart'
    as _i924;
import 'package:mobile/features/properties/data/repositories/property.dart'
    as _i436;
import 'package:mobile/features/properties/domain/repositories/property.dart'
    as _i631;
import 'package:mobile/features/shared/data/datasources/local/revenue.item.dart'
    as _i3;
import 'package:mobile/features/shared/data/repositories/revenue.item.dart'
    as _i507;
import 'package:mobile/features/shared/domain/repositories/revenue.item.dart'
    as _i552;
import 'package:mobile/features/shared/domain/usecases/get.revenue.items.dart'
    as _i290;
import 'package:mobile/features/sync/data/repositories/sync.dart' as _i111;
import 'package:mobile/features/sync/data/services/sync.dart' as _i762;
import 'package:mobile/features/sync/domain/repositories/sync.dart' as _i1032;
import 'package:mobile/generated/auth.pbgrpc.dart' as _i681;
import 'package:mobile/generated/payment.pbgrpc.dart' as _i941;
import 'package:mobile/generated/sync.pbgrpc.dart' as _i1055;
import 'package:mobile/generated/user.pbgrpc.dart' as _i281;

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
    final apiClientModule = _$ApiClientModule();
    final databaseModule = _$DatabaseModule();
    final storageModule = _$StorageModule();
    gh.factory<_i1017.ClientChannel>(() => apiClientModule.channelOpts);
    await gh.factoryAsync<_i338.Isar>(
      () => databaseModule.db,
      preResolve: true,
    );
    gh.singleton<_i558.FlutterSecureStorage>(() => storageModule.secureStorage);
    gh.singleton<_i379.AuthUserLocalDataSource>(
        () => _i379.AuthUserLocalDataSource(
              gh<_i558.FlutterSecureStorage>(),
              gh<_i338.Isar>(),
            ));
    gh.singleton<_i830.AuthRepository>(() => _i958.AuthRepositoryImpl(
          gh<_i558.FlutterSecureStorage>(),
          gh<_i379.AuthUserLocalDataSource>(),
        ));
    gh.singleton<_i984.LoginRevenueOfficerUseCase>(
        () => _i984.LoginRevenueOfficerUseCase(gh<_i830.AuthRepository>()));
    gh.singleton<_i266.CheckAuthStatusUseCase>(
        () => _i266.CheckAuthStatusUseCase(gh<_i830.AuthRepository>()));
    gh.singleton<_i1017.CurrentUserUseCase>(
        () => _i1017.CurrentUserUseCase(gh<_i830.AuthRepository>()));
    gh.singleton<_i666.LogoutUseCase>(
        () => _i666.LogoutUseCase(gh<_i830.AuthRepository>()));
    gh.singleton<_i823.LoginPropertyOwnerUseCase>(
        () => _i823.LoginPropertyOwnerUseCase(gh<_i830.AuthRepository>()));
    gh.lazySingleton<_i622.RequestAccountUseCase>(
        () => _i622.RequestAccountUseCase(gh<_i830.AuthRepository>()));
    gh.lazySingleton<_i3.RevenueItemLocalDataSource>(
        () => _i3.RevenueItemLocalDataSource(gh<_i338.Isar>()));
    await gh.factoryAsync<_i281.UserServiceClient>(
      () => apiClientModule.userClient(gh<_i558.FlutterSecureStorage>()),
      preResolve: true,
    );
    await gh.factoryAsync<_i941.PaymentServiceClient>(
      () => apiClientModule.paymentClient(gh<_i558.FlutterSecureStorage>()),
      preResolve: true,
    );
    await gh.factoryAsync<_i1055.SyncServiceClient>(
      () => apiClientModule.syncClient(gh<_i558.FlutterSecureStorage>()),
      preResolve: true,
    );
    await gh.factoryAsync<_i681.AuthServiceClient>(
      () => apiClientModule.authClient(gh<_i558.FlutterSecureStorage>()),
      preResolve: true,
    );
    gh.lazySingleton<_i924.PropertyLocalDataSource>(
        () => _i924.PropertyLocalDataSource(
              gh<_i338.Isar>(),
              gh<_i558.FlutterSecureStorage>(),
            ));
    gh.singleton<_i1032.SyncRepository>(
        () => _i111.SyncRepositoryImpl(gh<_i338.Isar>()));
    gh.singleton<_i552.RevenueItemRepository>(() =>
        _i507.RevenueItemRepositoryImpl(gh<_i3.RevenueItemLocalDataSource>()));
    gh.lazySingleton<_i631.PropertyRepository>(() =>
        _i436.PropertyRepositoryImpl(gh<_i924.PropertyLocalDataSource>()));
    gh.lazySingleton<_i762.SyncService>(() => _i762.SyncService(
          gh<_i1032.SyncRepository>(),
          gh<_i1055.SyncServiceClient>(),
        ));
    gh.lazySingleton<_i290.GetRevenueItemsUseCase>(
        () => _i290.GetRevenueItemsUseCase(gh<_i552.RevenueItemRepository>()));
    gh.lazySingleton<_i601.CreatePasswordUseCase>(
        () => _i601.CreatePasswordUseCase(gh<_i830.AuthRepository>()));
    return this;
  }
}

class _$ApiClientModule extends _i131.ApiClientModule {}

class _$DatabaseModule extends _i431.DatabaseModule {}

class _$StorageModule extends _i750.StorageModule {}
