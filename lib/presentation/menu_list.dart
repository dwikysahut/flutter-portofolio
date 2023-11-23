import 'package:flutter/material.dart';
import 'package:my_app/components/card.dart';
import 'package:my_app/presentation/menu_category_list.dart';

class MenuList extends StatelessWidget {
  const MenuList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                //         child: ListView(scrollDirection: Axis.vertical, children: const [
                //   CardItem(image: "assets/images/pic1.jpg"),
                //   CardItem(image: "assets/images/pic1.jpg"),
                //   CardItem(image: "assets/images/pic1.jpg"),
                //   CardItem(image: "assets/images/pic1.jpg"),
                //   CardItem(image: "assets/images/pic1.jpg"),
                //   CardItem(image: "assets/images/pic1.jpg"),
                //   CardItem(image: "assets/images/pic1.jpg"),
                // ]
                child: Column(children: <Widget>[
      MenuCategory(),
      Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 8,
              itemBuilder: (context, index) => Container(
                    child: CardItem(image: "assets/images/pic1.jpg"),
                  )))
    ]))));
  }
}
