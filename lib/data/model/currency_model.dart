import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

part 'currency_model.g.dart';

@JsonSerializable()
class CurrencyModel {
  final String symbol;
  final String name;
  final String nameid;
  final String price_usd;
  final String percent_change_24h;

  final String id;
  final int rank;
  final String percent_change_1h;
  final String percent_change_7d;
  final String price_btc;
  final String market_cap_usd;

  // final Float volume24;
  // final Float volume24a;
  // final String csupply;
  // final String tsupply;
  // final String msupply;

  CurrencyModel(
    this.nameid,
    this.rank,
    this.percent_change_1h,
    this.percent_change_7d,
    this.price_btc,
    this.market_cap_usd,
    // this.volume24,
    // this.volume24a,
    // this.csupply,
    // this.tsupply,
    // this.msupply,
    this.symbol,
    this.name,
    this.price_usd,
    this.percent_change_24h,
    this.id,
  );

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyModelToJson(this);
}
