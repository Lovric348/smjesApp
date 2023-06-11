import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/blagi_screen.dart';
import 'package:flutter_application_1/pages/srednji_screen.dart';
import 'package:flutter_application_1/pages/ljuti_screen.dart';
import 'package:flutter_application_1/pages/po_izboru.dart';

class Kulen extends StatelessWidget {
  const Kulen({super.key});

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Stack(
          children: <Widget>[
            Text(
              'Kulen',
              style: TextStyle(
                fontSize: scalewidth * 43,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.black,
              ),
            ),
            Text(
              'Kulen',
              style: TextStyle(
                fontSize: scalewidth * 42,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(
            CupertinoIcons.back,
            size: 44,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/pozadina3.jpg'),
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
        ),
        child:
            ListView(physics: const BouncingScrollPhysics(), children: <Widget>[
          //Blagi recept
          SizedBox(height: scaleheight * 90),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BlagiScreen(
                          data: 10,
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              width: scalewidth * 1,
              height: scaleheight * 60,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/icons/kulen.jpeg'),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: scalewidth * 2,
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: scalewidth * 10),
                  Container(
                    width: scalewidth * 30,
                    height: scaleheight * 35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: scalewidth * 87),
                  Text(
                    "Blagi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: scalewidth * 30,
                      color: const Color.fromARGB(255, 220, 216, 216),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Srednji recept
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SrednjiScreen(
                          data: 11,
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
              ),
              width: scalewidth * 1,
              height: scaleheight * 60,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/icons/kulen.jpeg'),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: scalewidth * 3,
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: scalewidth * 10),
                  Container(
                    width: scalewidth * 30,
                    height: scaleheight * 35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: scalewidth * 30,
                    height: scaleheight * 35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: scalewidth * 47),
                  Text(
                    "Srednji",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: scalewidth * 30,
                      color: const Color.fromARGB(255, 220, 216, 216),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Ljuti recept
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LjutiScreen(
                          data: 12,
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 50, bottom: 20),
              width: scalewidth * 1,
              height: scaleheight * 60,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/icons/kulen.jpeg'),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: scalewidth * 3,
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: scalewidth * 10),
                  Container(
                    width: scalewidth * 30,
                    height: scaleheight * 35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: scalewidth * 30,
                    height: scaleheight * 35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: scalewidth * 30,
                    height: scaleheight * 35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: scalewidth * 30),
                  Text(
                    "Ljuti",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: scalewidth * 30,
                      color: const Color.fromARGB(255, 220, 216, 216),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PoizboruScreen(
                          data: 13,
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
              ),
              width: scalewidth * 1,
              height: scaleheight * 60,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/icons/kulen.jpeg'),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: scalewidth * 3,
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: scalewidth * 100),
                  Text(
                    "Po izboru",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: scalewidth * 30,
                      color: const Color.fromARGB(255, 220, 216, 216),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
