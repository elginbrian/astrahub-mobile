import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/service_item_entity.dart';

part 'service_item_model.freezed.dart';
part 'service_item_model.g.dart';

@freezed
abstract class ServiceItemModel with _$ServiceItemModel {
  const factory ServiceItemModel({
    required String id,
    @JsonKey(name: 'item_type') required String itemType,
    @JsonKey(name: 'item_id') String? itemId,
    required String name,
    required int price,
  }) = _ServiceItemModel;

  factory ServiceItemModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceItemModelFromJson(json);
}

extension ServiceItemModelX on ServiceItemModel {
  ServiceItemEntity toEntity() => ServiceItemEntity(
        id: id,
        itemType: itemType,
        itemId: itemId,
        name: name,
        price: price,
      );
}
