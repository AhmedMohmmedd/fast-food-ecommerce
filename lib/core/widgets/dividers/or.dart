import 'package:flutter/material.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical:20),
      child: Row(
        children: [
          Expanded(child: Divider(thickness: 1.5, endIndent: 20)),
          Text("Or"),
          Expanded(child: Divider(thickness: 1.5, indent: 20)),
        ],
      ),
    );
  }
}
