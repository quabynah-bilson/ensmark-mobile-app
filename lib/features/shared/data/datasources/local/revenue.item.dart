import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';

@lazySingleton
class RevenueItemLocalDataSource {
  final Isar _db;

  RevenueItemLocalDataSource(this._db) {
    _prepare();
  }

  Future<List<RevenueItem>> getRevenueItems({int? limit, int? offset}) async =>
      _db.revenueItems.where().findAll(limit: limit, offset: offset);

  Future<void> _prepare() async {
    _db.write((isar) {
      if (isar.revenueItems.count() > 0) return;

      // pre-populate revenue items
      final items = [
        RevenueItem()
          ..code = 'FIN1'
          ..description = 'Business Operating Permit',
        RevenueItem()
          ..code = 'FIN2'
          ..description = 'Property Rate',
        RevenueItem()
          ..code = 'FIN3'
          ..description = 'Property Rate Arrears',
        RevenueItem()
          ..code = 'FIN4'
          ..description = 'Telecommunication Mast & Renewal',
        RevenueItem()
          ..code = 'URT1'
          ..description = 'Car Sticker',
        RevenueItem()
          ..code = 'URT2'
          ..description = 'Embossment',
        RevenueItem()
          ..code = 'URT3'
          ..description = 'Renewal of Commercial Drivers Licence',
        RevenueItem()
          ..code = 'WRK1'
          ..description = 'Building Permit',
        RevenueItem()
          ..code = 'WRK2'
          ..description = 'Building Permit Arrears',
        RevenueItem()
          ..code = 'WRK3'
          ..description = 'Penalties',
        RevenueItem()
          ..code = 'WRK4'
          ..description = 'Habitation License',
        RevenueItem()
          ..code = 'PHP1'
          ..description = 'Temporal Structure Permit & Renewal',
        RevenueItem()
          ..code = 'PHP2'
          ..description = 'Business Signage and Billboard Renewal',
        RevenueItem()
          ..code = 'ENH1'
          ..description = 'Suitability Renewal',
        RevenueItem()
          ..code = 'ENH2'
          ..description = 'Franchise',
        RevenueItem()
          ..code = 'ENH3'
          ..description = 'Health Card Renewal',
        RevenueItem()
          ..code = 'SOW1'
          ..description = 'Renewal of Foster Home',
        RevenueItem()
          ..code = 'SOW2'
          ..description = 'Registration of Montessori School',
        RevenueItem()
          ..code = 'SOW3'
          ..description = 'NGOs Renewal',
      ];
      isar.revenueItems.putAll(items);
    });
  }
}
