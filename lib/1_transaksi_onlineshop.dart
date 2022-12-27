import 'package:flutter/material.dart';

class TransaksiOnlineshop extends StatelessWidget {
  final Widget leading;
  final String label;
  const TransaksiOnlineshop(
      {super.key, required this.leading, required this.label});

  @override
  Widget build(BuildContext context) {
    return Onlineshop(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            leading,
            const SizedBox(width: 4),
            Text("\$$label"),
          ],
        ),
      ),
    );
  }
}
