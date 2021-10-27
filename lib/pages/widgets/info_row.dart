import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({
    Key? key,
    required this.infoText,
    required this.data,
  }) : super(key: key);
  final String infoText;
  final String data;

  @override
  Widget build(BuildContext context) {
    final isNegativeChange = data.contains("-");
    return Row(
      children: [
        Text(infoText),
        Spacer(),
        Text(
          data,
          style: TextStyle(
              color: isNegativeChange ? Colors.redAccent : Colors.lightGreen),
        )
      ],
    );
  }
}
