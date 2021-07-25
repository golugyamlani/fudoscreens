import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fudoscreens/screens/sign_in_screen.dart';
import 'package:fudoscreens/WelcomeScreen/Slider.dart';
import 'package:fudoscreens/WelcomeScreen/SliderText.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void moveToSignIN(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return SignInScreen();
    }));
  }

  @override
  List<SliderText> _items = [
    SliderText(
        title: 'Find Nearest Restaurants on Highways',
        description:
            'Find nearest restaurants by choosing filters like best budget deals, FUDOstar!'),
    SliderText(
        title: 'Find Nearest Restroom on Highways',
        description:
            'Now you can order your favorite delights before rearching the selected restaurant'),
    SliderText(
        title: 'Pre-order your delights with FUDO',
        description:
            'We are there to provide you the best discounts and offers at top restaurants!'),
  ];
  var _current = 0;
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black38,
              Colors.black,
            ],
          ),
        ),
        // color: Colors.blueAccent,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 50, bottom: 10),
                      child: Image.asset('images/fudo.png')),
                  Container(
                    child: Text(
                      'FUDO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Column(children: [
              Row(
                children: [
                  Expanded(
                    child: CarouselSlider(
                      items: _items.map((item) {
                        return Sder(
                          first: item.title,
                          second: item.description,
                        );
                      }).toList(),
                      carouselController: _controller,
                      options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 1.1,
                          // enlargeCenterPage: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _items.length,
                  (index) => buildDot(index: index),
                ),
              ),
            ]),
            Spacer(
              flex: 1,
            ),
            RaisedButton(
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 17),
              ),
              onPressed: () => moveToSignIN(context),
              color: Colors.indigo[800],
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 20.0),
              textColor: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 750),
      margin: EdgeInsets.only(right: 5),
      height: _current == index ? 14 : 12,
      width: _current == index ? 14 : 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
        color: _current == index ? Colors.white : Colors.transparent,
        // borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: _items.asMap().entries.map((entry) {
//     return GestureDetector(
//       onTap: () => _controller.animateToPage(entry.key),
//       child: Container(
//         width: 12.0,
//         height: 12.0,
//         margin:
//             EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//         decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: (Theme.of(context).brightness == Brightness.dark
//                     ? Colors.white
//                     : Colors.black)
//                 .withOpacity(_current == entry.key ? 0.9 : 0.4)),
//       ),
//     );
//   }).toList(),
// ),
// Container(
//   alignment: Alignment.bottomLeft,
//   child: Text(
//     'Find Nearest',
//     style: TextStyle(
//       color: Colors.white,
//       fontWeight: FontWeight.bold,
//       fontSize: 48,
//     ),
//   ),
// ),
// Container(
//   alignment: Alignment.bottomLeft,
//   child: Text(
//     'Restaurants',
//     style: TextStyle(
//       color: Colors.white,
//       fontWeight: FontWeight.bold,
//       fontSize: 48,
//     ),
//   ),
// ),
// Row(
//   children: [
//     Container(
//       alignment: Alignment.bottomLeft,
//       child: Text(
//         'on',
//         style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           fontSize: 48,
//         ),
//       ),
//     ),
//     Container(
//       alignment: Alignment.bottomLeft,
//       child: Text(
//         ' Highways',
//         style: TextStyle(
//           color: Colors.indigo[800],
//           fontWeight: FontWeight.w900,
//           fontSize: 48,
//         ),
//       ),
//     ),
//   ],
// ),
// Container(
//   child: Text(
//     'Find nearest restaurants by choosing filters like best budget deals, FUDO star!',
//     style: TextStyle(
//       color: Colors.white,
//       fontWeight: FontWeight.bold,
//       fontSize: 16,
//     ),
//   ),
// ),
// Expanded(
//           child: CarouselSlider(
//             // items: imageSliders,
//             carouselController: _controller,
//             options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 2.0,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: imgList.asMap().entries.map((entry) {
//             return GestureDetector(
//               onTap: () => _controller.animateToPage(entry.key),
//               child: Container(
//                 width: 12.0,
//                 height: 12.0,
//                 margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: (Theme.of(context).brightness == Brightness.dark
//                             ? Colors.white
//                             : Colors.black)
//                         .withOpacity(_current == entry.key ? 0.9 : 0.4)),
//               ),
//             );
//           }).toList(),
//         ),
