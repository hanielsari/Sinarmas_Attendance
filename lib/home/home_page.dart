import 'package:flutter/material.dart';
import 'package:sinarmas_attendance/home/recommended_news.dart';
import 'package:sinarmas_attendance/home/title_more_btn.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';

   const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final String text;
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header with search box
            Container(
              margin: const EdgeInsets.only(bottom: 20.0 * 0.5),
              height: size.height * 0.2,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: 36 + 20.0,
                    ),
                    height: size.height * 0.2 - 27,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                    ),
                    child: Row(
                      children: const <Widget>[
                        Text(
                          'Hi Hani Elsari',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      height: 54,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Colors.red.withOpacity(0.23),
                            )
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.red.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          suffixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width * 0.9,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/grafik_attendance.jpg'),
                ],
              ),
            ),
            TitleMoreBtn(
              title: "News",
              press: () {},
            ),
            RecommendedNews(),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   padding: const EdgeInsets.only(left: 20.0, right: 40.0, bottom: 10.0),
      //   height: 60,
      //   decoration: BoxDecoration(color: Colors.white, boxShadow: [
      //     BoxShadow(
      //         offset: Offset(0, -10),
      //         blurRadius: 35,
      //         color: Colors.red.withOpacity(0.38))
      //   ]),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: <Widget>[
      //       IconButton(
      //         onPressed: () {},
      //         icon: Icon(Icons.home),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: Icon(Icons.fact_check),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: Icon(Icons.calendar_month),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: Icon(Icons.summarize),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: Icon(Icons.person),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.red,
      automaticallyImplyLeading: false,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {},
        )
      ],
    );
  }
}
