import 'package:flutter/material.dart';
import 'package:my_app/components/discover_item_widget.dart';

class DiscoverListItem extends StatelessWidget {
  const DiscoverListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(12, 12, 0, 12),
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return DiscoverItem();
          }),
    );
  }
}
