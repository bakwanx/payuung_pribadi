import 'package:freezed_annotation/freezed_annotation.dart';

part 'wellness_model.freezed.dart';

part 'wellness_model.g.dart';

@freezed
class WellnessModel with _$WellnessModel{
  const factory WellnessModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'imgName') String? imgName,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'minBuy') int? minBuy,
    @JsonKey(name: 'maxBuy') int? maxBuy,
    @JsonKey(name: 'description') String? description
  }) = _WellnessModel;

  factory WellnessModel.fromJson(Map<String, dynamic> json) =>
      _$WellnessModelFromJson(json);
}
