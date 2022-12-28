// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefundModel _$RefundModelFromJson(Map<String, dynamic> json) {
  return RefundModel(
    user_id: json['_id'] as String?,
    transaction_id: json['transaction_id'] as String?,
    feedback: json['feedback'] as int?,
    refund_reason: json['refund_reason'] as String?,
  );
}

Map<String, dynamic> _$RefundModelToJson(RefundModel instance) =>
    <String, dynamic>{
      '_id': instance.user_id,
      'transaction_id': instance.transaction_id,
      'feedback': instance.feedback,
      'refund_reason': instance.refund_reason,
    };
