import 'package:flutter/material.dart';

class MenuCategory extends StatefulWidget {
  MenuCategory({Key? key}) : super(key: key);

  @override
  MenuCategoryState createState() => MenuCategoryState();
}

class MenuCategoryState extends State<MenuCategory> {
  List<String> imageLists = [
    'assets/images/pic1.jpg',
    'assets/images/pic1.jpg',
    'assets/images/pic1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text("Category"),
              Container(
                  height: 100,
                  margin: EdgeInsets.all(10),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              childAspectRatio: 1),
                      itemCount: imageLists.length,
                      itemBuilder: (context, index) => Image.asset(
                            imageLists[index],
                            fit: BoxFit.cover,
                          )))
            ]));
  }
}
