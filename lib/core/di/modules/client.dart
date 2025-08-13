import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/constants.dart';
import 'package:mobile/core/storage.keys.dart';
import 'package:mobile/generated/auth.pbgrpc.dart';
import 'package:mobile/generated/payment.pbgrpc.dart';
import 'package:mobile/generated/sync.pbgrpc.dart';
import 'package:mobile/generated/user.pbgrpc.dart';

@module
abstract class ApiClientModule {
  final channelOpts = ClientChannel(
    AppConstants.apiBaseUrl,
    port: AppConstants.apiPort,
    options: ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  @preResolve
  Future<UserServiceClient> userClient(FlutterSecureStorage storage) async {
    final headers = {'Authorization': '${await storage.read(key: StorageKeys.kUserAuthToken)}'};
    final callOpts = CallOptions(metadata: headers, timeout: const Duration(seconds: 30));
    return UserServiceClient(channelOpts, options: callOpts);
  }

  @preResolve
  Future<PaymentServiceClient> paymentClient(FlutterSecureStorage storage) async {
    final headers = {'Authorization': '${await storage.read(key: StorageKeys.kUserAuthToken)}'};
    final callOpts = CallOptions(metadata: headers, timeout: const Duration(seconds: 30));
    return PaymentServiceClient(channelOpts, options: callOpts);
  }

  @preResolve
  Future<SyncServiceClient> syncClient(FlutterSecureStorage storage) async {
    final headers = {'Authorization': '${await storage.read(key: StorageKeys.kUserAuthToken)}'};
    final callOpts = CallOptions(metadata: headers, timeout: const Duration(seconds: 30));
    return SyncServiceClient(channelOpts, options: callOpts);
  }

  @preResolve
  Future<AuthServiceClient> authClient(FlutterSecureStorage storage) async {
    final callOpts = CallOptions(timeout: const Duration(seconds: 30));
    return AuthServiceClient(channelOpts, options: callOpts);
  }
}
