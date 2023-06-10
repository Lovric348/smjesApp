import 'package:flutter/material.dart';
import 'package:flutter_application_1/customApp.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/customDrawer.dart';
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
      drawer: CustomDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/pozadina3.jpg'),
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            SizedBox(height: scaleheight* 40),
            

            //Kobasice
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Kobasice()),
                );
              },
              child: Container(
                child: Text(
                  "Kobasice",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scalewidth * 30,
                    color: Colors.white,
                  ),
                ),
                margin: EdgeInsets.all(20),
                width: scalewidth * 1,
                height: scaleheight *60,
                decoration: BoxDecoration(
                  image: DecorationImage(
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
              ),
            ),
            //Kulenove seke
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Kulenovaseka()),
                );
              },
              child: Container(
                child: Text(
                  "Kulenove seke",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scalewidth * 30,
                    color: Colors.white,
                  ),
                ),
                margin: EdgeInsets.all(20),
                width: scalewidth * 1,
                height:scaleheight * 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
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
              ),
            ),
            //Kulen
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Kulen()),
                );
              },
              child: Container(
                child: Text(
                  "Kulen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scalewidth * 30,
                    color: Colors.white,
                  ),
                ),
                margin: EdgeInsets.all(20),
                width: scalewidth * 1,
                height: scaleheight *60,
                decoration: BoxDecoration(
                  image: DecorationImage(
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
              ),
            ),
            //Krvavice
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Krvavice()),
                );
              },
              child: Container(
                child: Text(
                  "Krvavice",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scalewidth * 30,
                    color: Colors.white,
                  ),
                ),
                margin: EdgeInsets.all(20),
                width: scalewidth * 1,
                height: scaleheight *60,
                decoration: BoxDecoration(
                  image: DecorationImage(
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
              ),
            ),
            //Čvarci
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cvarci()),
                );
              },
              child: Container(
                child: Text(
                  "Čvarci",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scalewidth * 30,
                    color: Colors.white,
                  ),
                ),
                margin: EdgeInsets.all(20),
                width: scalewidth * 1,
                height:scaleheight * 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
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
              ),
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
    );
  }
}
