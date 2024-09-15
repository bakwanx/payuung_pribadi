import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'imgPath') String? imgPath,
    @JsonKey(name: 'fullname') String? fullname,
    @JsonKey(name: 'bornDate') String? bornDate,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @JsonKey(name: 'education') String? education,
    @JsonKey(name: 'maritalStatus') String? maritalStatus,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
