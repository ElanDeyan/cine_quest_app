import 'package:flutter/material.dart';

class HeaderWithContent extends StatelessWidget {
  const HeaderWithContent({
    super.key,
    required this.header,
    required this.content,
    this.gap = 10,
  });

  final Widget header;
  final Widget content;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        header,
        SizedBox(
          height: gap,
        ),
        content,
      ],
    );
  }
}
