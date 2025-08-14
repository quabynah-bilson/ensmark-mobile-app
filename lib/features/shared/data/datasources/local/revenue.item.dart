import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';
import 'package:uuid/uuid.dart';

@singleton
class RevenueItemLocalDataSource {
  final Isar _db;

  RevenueItemLocalDataSource(this._db) {
    _prepare();
  }

  Future<List<RevenueItem>> getRevenueItems({int? limit, int? offset}) async =>
      _db.revenueItems.where().findAll(limit: limit, offset: offset);

  Future<void> _prepare() async {
    await _db.writeAsync((isar) async {
      // clear existing revenue items
      isar.revenueItems.clear();

      // pre-populate revenue items
      final uuid = Uuid();
      final items = [
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'FIN1'
          ..description = 'Business Operating Permit',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'FIN2'
          ..description = 'Property Rate',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'FIN3'
          ..description = 'Property Rate Arrears',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'FIN4'
          ..description = 'Telecommunication Mast & Renewal',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'URT1'
          ..description = 'Car Sticker',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'URT2'
          ..description = 'Embossment',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'URT3'
          ..description = 'Renewal of Commercial Drivers Licence',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'WRK1'
          ..description = 'Building Permit',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'WRK2'
          ..description = 'Building Permit Arrears',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'WRK3'
          ..description = 'Penalties',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'WRK4'
          ..description = 'Habitation License',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'PHP1'
          ..description = 'Temporal Structure Permit & Renewal',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'PHP2'
          ..description = 'Business Signage and Billboard Renewal',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'ENH1'
          ..description = 'Suitability Renewal',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'ENH2'
          ..description = 'Franchise',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'ENH3'
          ..description = 'Health Card Renewal',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'SOW1'
          ..description = 'Renewal of Foster Home',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'SOW2'
          ..description = 'Registration of Montessori School',
        RevenueItem()
          ..guid = uuid.v4()
          ..code = 'SOW3'
          ..description = 'NGOs Renewal',
      ];
      isar.revenueItems.putAll(items);
    });
  }
}
