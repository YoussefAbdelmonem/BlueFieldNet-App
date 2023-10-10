import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/widgets/search/widgets/item_card.dart';
import 'package:flutter/material.dart';

class SearchFindJobTabWidget extends StatelessWidget {
  const SearchFindJobTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          itemBuilder: (context, index) {
            return SearchItemCardWidget();
          },
          itemCount: 1,
          shrinkWrap: true,
        )
      ],
    );
  }
}
