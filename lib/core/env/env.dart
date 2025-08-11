import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Env {
  const Env._();

  static String get grpcServerBaseUrl => dotenv.env['GRPC_SERVER_URL'] ?? 'ensmark-grpc-svc:50051';
}
