import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/blagi_screen.dart';

import 'package:flutter_application_1/pages/srednji_screen.dart';
import 'package:flutter_application_1/pages/ljuti_screen.dart';
import 'package:flutter_application_1/pages/po_izboru.dart';

class Kobasice extends StatelessWidget {
  const Kobasice({super.key});

  @override
  Widget build(BuildContext context) {
    double widgetwidth = MediaQuery.of(context).size.width;
    double widgetheight = MediaQuery.of(context).size.height;
    double scalewidth = widgetwidth / 400;
    double scaleheight = widgetheight / 800;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Stack(
          children: <Widget>[
            Text(
              'Kobasice',
              style: TextStyle(
                fontSize: 43 * scalewidth,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.black,
              ),
            ),
            Text(
              'Kobasice',
              style: TextStyle(
                fontSize: 41 * scalewidth,
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
          SizedBox(height: 90 * scaleheight),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BlagiScreen(
                    data: 1,
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              width: 1 * scalewidth,
              height: 60 * scaleheight,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/icons/kobasica.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 2 * scalewidth,
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    width: 30 * scalewidth,
                    height: 35 * scaleheight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 87 * scalewidth),
                  Text(
                    "Blagi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * scalewidth,
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
                          data: 2,
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
              ),
              width: 1 * scalewidth,
              height: 60 * scaleheight,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/icons/kobasica.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 3 * scalewidth,
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10 * scalewidth),
                  Container(
                    width: 30 * scalewidth,
                    height: 35 * scaleheight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 30 * scalewidth,
                    height: 35 * scaleheight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 47 * scalewidth),
                  Text(
                    "Srednji",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * scalewidth,
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
                          data: 3,
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 50, bottom: 20),
              width: 1 * scalewidth,
              height: 60 * scaleheight,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/icons/kobasica.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 3 * scalewidth,
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10 * scalewidth),
                  Container(
                    width: 30 * scalewidth,
                    height: 35 * scaleheight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 30 * scalewidth,
                    height: 35 * scaleheight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 30 * scalewidth,
                    height: 35 * scaleheight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 30 * scalewidth),
                  Text(
                    "Ljuti",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * scalewidth,
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
                          data: 4,
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
              ),
              width: 1 * scalewidth,
              height: 60 * scaleheight,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/icons/kobasica.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 3 * scalewidth,
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 100 * scalewidth),
                  Text(
                    "Po izboru",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * scalewidth,
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
