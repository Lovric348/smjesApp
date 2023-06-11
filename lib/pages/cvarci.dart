import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/alert_dialog.dart';

class Cvarci extends StatelessWidget {
  const Cvarci({super.key});

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => const AlertDial(
                    data: 22,
                  ));
        },
        backgroundColor: const Color.fromARGB(255, 195, 191, 191),
        elevation: 3,
        child: const Icon(
          CupertinoIcons.info,
          color: Colors.black,
          size: 30,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Stack(
          children: <Widget>[
            Text(
              'Čvarci',
              style: TextStyle(
                fontSize: scalewidth * 43,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.black,
              ),
            ),
            Text(
              'Čvarci',
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
          SizedBox(height: scaleheight * 90),
          Column(children: [
            //Sol
            Container(
              padding: const EdgeInsets.all(3),
              height: scaleheight * 60,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: scalewidth * 3,
                ),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/icons/sol.png'),
                    backgroundColor: Colors.black87,
                  ),
                  SizedBox(
                    width: scalewidth * 10,
                  ),
                  Text(
                    'Sol',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: scalewidth * 22,
                    ),
                  ),
                  SizedBox(
                    width: scalewidth * 150,
                  ),
                  Text(
                    '15- 20 g',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: scalewidth * 22,
                    ),
                  ),
                ],
              ),
            ),
            //Mlijeko
            Container(
              padding: const EdgeInsets.all(3),
              height: scaleheight * 60,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: scalewidth * 3,
                ),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/icons/mlijeko.png'),
                    backgroundColor: Colors.black87,
                  ),
                  SizedBox(
                    width: scalewidth * 10,
                  ),
                  Text(
                    'Mlijeko',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: scalewidth * 22,
                    ),
                  ),
                  SizedBox(
                    width: scalewidth * 117,
                  ),
                  Text(
                    '1- 3 dl',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: scalewidth * 22,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
