import 'base.dart';

class Failure extends BaseException<dynamic> {
  const Failure(super.reason);
}

class ServerFailure extends Failure {
  const ServerFailure() : super('We encountered an error while processing your request');
}

class CacheFailure extends Failure {
  const CacheFailure() : super('An error occurred while accessing the cache');
}

class NetworkFailure extends Failure {
  const NetworkFailure() : super('A network error occurred while processing your request');
}
