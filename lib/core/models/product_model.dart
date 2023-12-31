import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String category,
    required String title,
    required String pictureUrl,
    required double price,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, Object?> json) => _$ProductModelFromJson(json);
}
