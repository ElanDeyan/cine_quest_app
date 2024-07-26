import 'package:flutter/cupertino.dart';

class Section extends StatelessWidget {
  const Section({super.key, this.header, this.gap = 10, required this.content});

  final Widget? header;
  final double gap;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (header != null) ...[
          header!,
          SizedBox(
            height: gap,
          ),
        ],
        content,
      ],
    );
  }
}
