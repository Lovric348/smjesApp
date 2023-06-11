import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/alert_dialog.dart';
import 'package:flutter_application_1/pages/krvavice_recept.dart';

class Krvavice extends StatelessWidget {
  const Krvavice({super.key});

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
                    data: 11,
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
              'Krvavice',
              style: TextStyle(
                fontSize: scalewidth * 43,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.black,
              ),
            ),
            Text(
              'Krvavice',
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
          //Slavonski recept
          SizedBox(height: scaleheight * 90),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const KrvRecept(
                          data: 22,
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
                  image: AssetImage('assets/icons/krvavica.jpg'),
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
                  const SizedBox(width: 10),
                  const SizedBox(width: 87),
                  Text(
                    "Slavonski",
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
          // Po izboru
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const KrvRecept(
                          data: 33,
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
              child: Row(
                children: [
                  const SizedBox(width: 100),
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
