import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleMoreBtn extends StatelessWidget {
  const TitleMoreBtn(
      { Key? key,
       required this.title,
       required this.press,
      })
      : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 24,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.only(right: 4.0),
                      height: 7,
                      color: Colors.red.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.red,
              onPressed: () {},
              child: Text(
                "More",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
