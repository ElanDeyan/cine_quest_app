import 'package:cine_quest_app/helper/horizontal_scrollable_section.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final sampleItems = List.generate(
      50,
      (index) => const ColoredBox(
        color: Colors.white,
        child: SizedBox(
          width: 185,
          height: 274,
        ),
      ),
    );

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SearchBar(
            trailing: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_outlined),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          HorizontalScrollableSection(
            header: Text(
              'Favorites',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            items: sampleItems,
            verticalGap: 10,
            rowMaxHeight: 274,
            itemBuilder: (context, index) => sampleItems[index],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Made with the watchmode API'),
          ),
        ],
      ),
    );
  }
}
