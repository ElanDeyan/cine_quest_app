import 'package:flutter/cupertino.dart';

class HorizontalList<T extends Object?> extends StatelessWidget {
  const HorizontalList({
    super.key,
    this.height = 274,
    this.gap = 10,
    required this.items,
    required this.itemBuilder,
  });

  final double height;
  final double gap;
  final Iterable<T> items;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: itemBuilder,
        separatorBuilder: (context, index) => SizedBox(
          width: gap,
        ),
        itemCount: items.length,
      ),
    );
  }
}
