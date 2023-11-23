import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_app/components/card_profile.dart';
import 'package:my_app/components/discover_item_widget.dart';
import 'package:my_app/components/discover_list_item.dart';
import 'package:my_app/components/profile_information_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CardProfile(),
            renderDiscoverable(),
          ],
        ),
      ),
    ));
  }

  Widget renderDiscoverable() {
    return Container(
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleListView(
                title: "Notable works",
                subTitle: "Based on the popularity of articles",
              ),
              DiscoverListItem()
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleListView(
                title: "New release",
                subTitle: "Discover new release",
              ),
              DiscoverListItem()
            ],
          )
        ],
      ),
    );
  }
}

class TitleListView extends StatelessWidget {
  const TitleListView({Key? key, required this.subTitle, required this.title})
      : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Color.fromARGB(255, 19, 16, 16)),
          ),
          Text(
            subTitle,
            style: TextStyle(color: Colors.grey[400], fontSize: 12),
          )
        ],
      ),
    );
  }
}
