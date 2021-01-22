import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppBarCustom extends StatelessWidget {
  static const IconData auto_awesome =
      IconData(0xe5ca, fontFamily: 'MaterialIcons');
  static const IconData notifications_none =
      IconData(0xe8c8, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 292,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35)),
          color: HexColor('#544ECC'),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  auto_awesome,
                  size: 34,
                  color: Colors.white,
                ),
                Icon(
                  notifications_none,
                  size: 34,
                  color: HexColor('#EFECFB'),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Ana',
                        style:
                            TextStyle(color: HexColor('#EFECFB'), fontSize: 24),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              'Welcome Back',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Image.asset(
                                'lib/app/assets/icons/hello.png',
                                width: 24,
                                height: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 30),
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 19),
                  decoration: InputDecoration(
                      hintText: 'what category are you searching for ?',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                      border: InputBorder.none,
                      fillColor: HexColor('#a7a0ec'),
                      filled: true,
                      prefixIcon: Container(
                        margin: EdgeInsets.only(left: 10, top: 5),
                        child: new Icon(
                          Icons.search,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      )),
                ))
          ],
        ));
  }
}
