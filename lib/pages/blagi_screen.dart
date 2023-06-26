// ignore_for_file: no_leading_underscores_for_local_identifiers, duplicate_ignore, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class BlagiScreen extends StatefulWidget {
  final int data;
  //The BlagiScreen class is defined as a StatefulWidget that takes an int data parameter.
  //This parameter is used to determine the content of the screen based on its value.

  const BlagiScreen({super.key, required this.data});

  @override
  // ignore: library_private_types_in_public_api
  _BlagiScreenState createState() => _BlagiScreenState();
}

class _BlagiScreenState extends State<BlagiScreen> {
  String _naslov = '';
  double _slatka = 0.0;
  double _ljuta = 0.0;
  double _sol = 0.0;
  double _luk = 0.0;
  double _kilograma = 0.0;
  bool _slatkabool = false;
  bool _ljutabool = false;
  bool _solbool = false;
  bool _lukbool = false;

  final TextEditingController _textController = TextEditingController();
  int maxDigits = 3;
//_BlagiScreenState class is defined as the state class for BlagiScreen. It extends the State class and overrides the necessary methods.
// The class contains variables for various properties of the screen, such as _naslov, _slatkarez, _slatka, etc.

//_textController is initialized as a TextEditingController which will be used to control the text field's behavior.
  @override
  void initState() {
    super.initState();
    if (widget.data == 1) {
      _naslov = 'Kobasica blagi';
      _slatka = 0.002;
      _ljuta = 0.002;
      _sol = 0.019;
      _luk = 0.01;
    } else if (widget.data == 5) {
      _naslov = 'Kulenova seka blagi';
      _slatka = 0.003;
      _ljuta = 0.003;
      _sol = 0.019;
      _luk = 0.01;
    } else if (widget.data == 10) {
      _naslov = 'Kulen blagi';
      _slatka = 0.005;
      _ljuta = 0.005;
      _sol = 0.02;
      _luk = 0.01;
    }
  }

  //The initState method initializes these variables based on the data parameter passed to the screen.
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
  //The dispose method is overridden to dispose of the _textController when the screen is disposed of. This is necessary to avoid memory leaks.

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    // ignore: no_leading_underscores_for_local_identifiers
    double _slatkarez =
        double.parse(((_slatka * _kilograma) * 100).toStringAsFixed(1));

    // build method include the calculation of _slatkarez as the product of _slatka and _kilograma.
    //.toStringAsFixed(1) rounds the result to one decimal space
    // ignore: no_leading_underscores_for_local_identifiers
    double _ljutarez =
        double.parse(((_ljuta * _kilograma) * 100).toStringAsFixed(1));
    double _solrez =
        double.parse(((_sol * _kilograma) * 100).toStringAsFixed(1));
    double _lukrez =
        double.parse(((_luk * _kilograma) * 100).toStringAsFixed(1));
    //Rezultati u kilogramima
    double _slatkarezkg = double.parse((_slatkarez / 1000).toStringAsFixed(1));
    double _ljutarezkg = double.parse((_ljutarez / 1000).toStringAsFixed(1));
    double _solrezkg = double.parse((_solrez / 1000).toStringAsFixed(1));
    double _lukrezkg = double.parse((_lukrez / 1000).toStringAsFixed(1));
    double _slatkapos = double.parse((_slatka * 100).toStringAsFixed(1));
    double _ljutapos = double.parse((_ljuta * 100).toStringAsFixed(1));
    double _solpos = double.parse((_sol * 100).toStringAsFixed(1));
    double _lukpos = double.parse((_luk * 100).toStringAsFixed(1));

    _slatkabool = _slatkarez > 999 ? true : false;
    _ljutabool = _ljutarez > 999 ? true : false;
    _solbool = _solrez > 999 ? true : false;
    _lukbool = _lukrez > 999 ? true : false;

    return Scaffold(
      extendBodyBehindAppBar: true,

      //The first container displays a message and a text field for entering the weight of the mixture.
      //The text field uses the _textController to control its behavior.
      body: NestedScrollView(
        //Podesiti app bar!!!!!!

        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: true,
            centerTitle: true,
            title: Stack(
              children: <Widget>[
                Text(
                  '$_naslov',
                  style: widget.data == 5
                      ? TextStyle(
                          fontSize: scalewidth * 32,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.black,
                        )
                      : TextStyle(
                          fontSize: scalewidth * 43,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.black,
                        ),
                ),
                Text(
                  '$_naslov',
                  style: widget.data == 5
                      ? TextStyle(
                          fontSize: scalewidth * 31,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        )
                      : TextStyle(
                          fontSize: scalewidth * 41,
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
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/pozadina3.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.9,
                ),
              ),
            ),
          ),
        ],

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
            children: [
              SizedBox(height: scaleheight * 10),
              Container(
                //The second container displays information about the ingredient "Slatka paprika" along with its percentage value.
                //However, the value of _slatkarez is not updated dynamically.
                //To update it based on user input or other factors, you should consider using a setState method to update the value and reflect it in the UI.
                width: scalewidth * 5,
                height: scaleheight * 110,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: scalewidth * 3,
                      color: Colors.black,
                    )),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Unesite težinu smjese',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: scalewidth * 22,
                        ),
                      ),
                      SizedBox(height: scaleheight * 15),
                      SizedBox(
                        height: scaleheight * 50,
                        width: scalewidth * 85,
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {},
                          child: TextField(
                            style: TextStyle(
                              fontSize: scalewidth * 22,
                              fontWeight: FontWeight.bold,
                            ),
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'^\d{0,3}(\.\d{0,1})?$')),
                            ],
                            //This pattern allows for up to three digits before the decimal point (0-999)
                            //and allows for an optional decimal point followed by up to one digit.
                            onChanged: (value) {
                              setState(() {
                                _kilograma = double.parse(value);
                                // double.parse doesn't give error while there are empty values
                              });
                            },
                            controller: _textController,
                            decoration: InputDecoration(
                              suffix: Text(
                                'kg',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: scalewidth * 17,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 3.0, horizontal: 7.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Slatka
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
                      backgroundImage: AssetImage('assets/icons/paprika.png'),
                      backgroundColor: Colors.black87,
                    ),
                    SizedBox(
                      width: scalewidth * 10,
                    ),
                    Text(
                      'Slatka paprika $_slatkapos%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scalewidth * 22,
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 20,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _slatkabool ? '$_slatkarezkg kg' : '$_slatkarez g',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Ljuta
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
                      backgroundImage: AssetImage('assets/icons/chili.png'),
                      backgroundColor: Colors.black87,
                    ),
                    SizedBox(
                      width: scalewidth * 10,
                    ),
                    Text(
                      'Ljuta paprika $_ljutapos%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scalewidth * 22,
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 30,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _ljutabool ? '$_ljutarezkg kg' : '$_ljutarez g',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

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
                      'Sol $_solpos%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scalewidth * 22,
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 130,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _solbool ? '$_solrezkg kg' : '$_solrez g',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Češnjak
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
                      backgroundImage: AssetImage('assets/icons/cesnjak.png'),
                      backgroundColor: Colors.black87,
                    ),
                    SizedBox(
                      width: scalewidth * 10,
                    ),
                    Text(
                      'Češnjak $_lukpos%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scalewidth * 22,
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 75,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _lukbool ? '$_lukrezkg kg' : '$_lukrez g',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
