import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/blagiScreen.dart';
import 'package:flutter_application_1/pages/srednjiScreen.dart';
import 'package:flutter_application_1/pages/ljutiScreen.dart';
import 'package:flutter_application_1/pages/poIzboru.dart';

class Kulenovaseka extends StatelessWidget {
  const Kulenovaseka({super.key});

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
              'Kulenova seka',
              style: TextStyle(
        fontSize: scalewidth * 43,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = Colors.black,
            ),
            ),
            Text(
              'Kulenova seka',
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
          child: Icon(CupertinoIcons.back, size: 44, color: Colors.black87,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
          //Blagi recept
          SizedBox(height: 90 * scaleheight),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BlagiScreen(
                          data: 5,
                        )),
              );
            },
            child: Container(
              child: Row(
                children: [
                  SizedBox(width: 10* scalewidth),
                  Container(
                    width: 30* scalewidth,
                    height: 35* scaleheight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 87* scalewidth),
                  Text(
                    "Blagi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: scalewidth * 30,
                      color: Color.fromARGB(255, 220, 216, 216),
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 20,
              right: 20,
              ),
              width: 1* scalewidth,
              height: 60* scaleheight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/kulenovaseka.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 2* scalewidth,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          //Srednji recept
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SrednjiScreen(
                          data: 6,
                        )),
              );
            },
            child: Container(
              
              child: Row(
                children: [
                  SizedBox(width: 10* scalewidth),
                  Container(
                    width: 30* scalewidth,
                    height: 35* scaleheight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 30* scalewidth,
                    height: 35* scaleheight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 47* scalewidth),
                  Text(
                    "Srednji",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: scalewidth * 30,
                      color: Color.fromARGB(255, 220, 216, 216),
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 20,
              right: 20,
              top: 40,),
              width: 1* scalewidth,
              height: 60* scaleheight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/kulenovaseka.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 3* scalewidth,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          //Ljuti recept
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LjutiScreen(
                          data: 7,
                        )),
              );
            },
            child: Container(
              child: Row(
                children: [
                  SizedBox(width: 10* scalewidth),
                  Container(
                    width: 30* scalewidth,
                    height: 35* scaleheight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 30* scalewidth,
                    height: 35* scaleheight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 30* scalewidth,
                    height: 35* scaleheight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/chili.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 30* scalewidth),
                  Text(
                    "Ljuti",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: scalewidth * 30,
                      color: Color.fromARGB(255, 220, 216, 216),
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 20,
              right: 20,
              top: 50,
              bottom: 20),
              width: 1* scalewidth,
              height: 60* scaleheight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/kulenovaseka.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 3* scalewidth,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PoizboruScreen(
                          data: 8,
                        )),
              );
            },
            child: Container(
              child: Row(
                children: [
                  SizedBox(width: 100* scalewidth),
                  Text(
                    "Po izboru",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: scalewidth * 30,
                      color: Color.fromARGB(255, 220, 216, 216),
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 20,
              right: 20,
              top: 40,),
              width: 1* scalewidth,
              height: 60* scaleheight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/kulenovaseka.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 3* scalewidth,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
