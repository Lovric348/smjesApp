import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_app.dart';
import 'package:flutter_application_1/custom_drawer.dart';
import 'package:flutter_application_1/pages/cvarci.dart';
import 'package:flutter_application_1/pages/kobasice.dart';
import 'package:flutter_application_1/pages/krvavice.dart';
import 'package:flutter_application_1/pages/kulenovaseka.dart';
import 'package:flutter_application_1/pages/kulen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const CustomDrawer(),
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
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            SizedBox(height: scaleheight * 40),

            //Kobasice
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Kobasice()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: scalewidth * 1,
                height: scaleheight * 60,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/kobasica.jpg'),
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
                child: Text(
                  "Kobasice",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scalewidth * 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //Kulenove seke
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Kulenovaseka()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: scalewidth * 1,
                height: scaleheight * 60,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/kulenovaseka.jpg'),
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
                child: Text(
                  "Kulenove seke",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scalewidth * 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //Kulen
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Kulen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(20),
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
                child: Text(
                  "Kulen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scalewidth * 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //Krvavice
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Krvavice()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: scalewidth * 1,
                height: scaleheight * 60,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/krvavica.jpg'),
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
                child: Text(
                  "Krvavice",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scalewidth * 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //Čvarci
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cvarci()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: scalewidth * 1,
                height: scaleheight * 60,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/cvarci.jpg'),
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
                child: Text(
                  "Čvarci",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scalewidth * 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
    );
  }
}
