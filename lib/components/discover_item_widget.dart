import 'package:flutter/material.dart';

class DiscoverItem extends StatelessWidget {
  const DiscoverItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/pic1.jpg',
              fit: BoxFit.fill,
              height: 80,
              width: double.infinity,
            )),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nature",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 10,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Let us plant more trees from this year",
              maxLines: 2,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 11),
              overflow: TextOverflow.ellipsis,
            )
          ],
        )
      ]),
    );
  }
}
