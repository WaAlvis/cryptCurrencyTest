import 'package:flutter/material.dart';
import 'package:prueb_tecnica_cryptocurrency/data/model/currency_model.dart';
import 'package:prueb_tecnica_cryptocurrency/pages/widgets/coin_item.dart';
import 'package:prueb_tecnica_cryptocurrency/pages/widgets/info_row.dart';

class DetailPage extends StatelessWidget {
  final CurrencyModel model;

  const DetailPage({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(model.name),
        ),
        body: Column(
          children: [
            Hero(
              tag: model.nameid,
              child: Material(
                type: MaterialType.transparency,
                child: CoinItem(model: model),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    InfoRow(
                      infoText: 'Rank',
                      data: model.rank.toString(),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InfoRow(
                      infoText: 'Change 1h',
                      data: model.percent_change_1h.toString(),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InfoRow(
                      infoText: 'Change 7d',
                      data: model.percent_change_7d.toString(),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InfoRow(
                      infoText: 'Price in BTC',
                      data: model.price_btc.toString(),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InfoRow(
                      infoText: 'Market Cap USD',
                      data: model.market_cap_usd.toString(),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
