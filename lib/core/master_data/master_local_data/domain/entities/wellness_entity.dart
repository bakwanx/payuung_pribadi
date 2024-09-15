import 'package:freezed_annotation/freezed_annotation.dart';
part 'wellness_entity.freezed.dart';

@freezed
class WellnessEntity with _$WellnessEntity {
  const factory WellnessEntity({
    @Default(0) int id,
    @Default('') String imgName,
    @Default('') String title,
    @Default('') String category,
    @Default(0) int price,
    @Default(0) int minBuy,
    @Default(0) int maxBuy,
    @Default('') String description
  }) = _WellnessEntity;

}
