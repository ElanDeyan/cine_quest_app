import 'package:flutter/material.dart';

final class HorizontalScrollableSection extends StatelessWidget {
  const HorizontalScrollableSection({
    super.key,
    this.header,
    required this.items,
    this.verticalGap,
    required this.itemBuilder,
    required this.rowMaxHeight,
  });

  final Widget? header;
  final List<Widget> items;
  final double? verticalGap;
  final double rowMaxHeight;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (header != null) ...[
          header!,
          SizedBox(
            height: verticalGap,
          ),
        ],
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: rowMaxHeight),
          child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: itemBuilder,
            separatorBuilder: (context, index) => const SizedBox(
              width: 5.0,
            ),
          ),
        ),
      ],
    );
  }
}
