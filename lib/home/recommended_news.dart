import 'package:flutter/material.dart';

class RecommendedNews extends StatelessWidget {
  const RecommendedNews({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendedNewsCard(
            image: "assets/images/news_1.jpg",
            title: "NEWS 1",
            press: () {},
          ),
          RecommendedNewsCard(
            image: "assets/images/news_1.jpg",
            title: "NEWS 2",
            press: () {},
          ),
          RecommendedNewsCard(
            image: "assets/images/news_1.jpg",
            title: "NEWS 3",
            press: () {},
          ),
        ],
      ),
    );
  }
}


class RecommendedNewsCard extends StatelessWidget {
  const RecommendedNewsCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String image, title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        right: 10.0,
        bottom: 20.0 * 2.5,
      ),
      width: size.width * 0.8,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.red.withOpacity(0.23),
                    ),
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: title.toUpperCase(),
                            style: Theme.of(context).textTheme.button)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
