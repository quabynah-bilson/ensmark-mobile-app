import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mobile/features/shared/data/datasources/database.dart';

@module
abstract class DatabaseModule {
  @preResolve
  Future<Isar> get db => AppDatabaseService.db;
}
