// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) {
  return CurrencyModel(
    json['nameid'] as String,
    json['rank'] as int,
    json['percent_change_1h'] as String,
    json['percent_change_7d'] as String,
    json['price_btc'] as String,
    json['market_cap_usd'] as String,
    json['symbol'] as String,
    json['name'] as String,
    json['price_usd'] as String,
    json['percent_change_24h'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$CurrencyModelToJson(CurrencyModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'nameid': instance.nameid,
      'price_usd': instance.price_usd,
      'percent_change_24h': instance.percent_change_24h,
      'id': instance.id,
      'rank': instance.rank,
      'percent_change_1h': instance.percent_change_1h,
      'percent_change_7d': instance.percent_change_7d,
      'price_btc': instance.price_btc,
      'market_cap_usd': instance.market_cap_usd,
    };
