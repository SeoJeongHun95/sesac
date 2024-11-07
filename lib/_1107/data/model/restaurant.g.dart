// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantImpl _$$RestaurantImplFromJson(Map<String, dynamic> json) =>
    _$RestaurantImpl(
      restaurantName: json['restaurantName'] as String,
      restaurantnameNumber: (json['restaurantnameNumber'] as num?)?.toInt(),
      restaurantnameNote: json['restaurantnameNote'] as String?,
      restaurantnameScore: (json['restaurantnameScore'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RestaurantImplToJson(_$RestaurantImpl instance) =>
    <String, dynamic>{
      'restaurantName': instance.restaurantName,
      'restaurantnameNumber': instance.restaurantnameNumber,
      'restaurantnameNote': instance.restaurantnameNote,
      'restaurantnameScore': instance.restaurantnameScore,
    };
