import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @Default(0) int userId,
    @Default('') String imgPath,
    @Default('') String fullname,
    @Default('') String bornDate,
    @Default('') String gender,
    @Default('') String email,
    @Default('') String password,
    @Default('') String phoneNumber,
    @Default('') String education,
    @Default('') String maritalStatus,
  }) = _UserEntity;

}
