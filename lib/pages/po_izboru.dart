// ignore_for_file: no_leading_underscores_for_local_identifiers, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class PoizboruScreen extends StatefulWidget {
  final int data;
  //The BlagiScreen class is defined as a StatefulWidget that takes an int data parameter.
  //This parameter is used to determine the content of the screen based on its value.

  const PoizboruScreen({super.key, required this.data});

  @override
  // ignore: library_private_types_in_public_api
  _PoizboruScreenState createState() => _PoizboruScreenState();
}

class _PoizboruScreenState extends State<PoizboruScreen> {
  String _naslov = '';
  double _slatka = 0.0;
  double _ljuta = 0.0;
  double _sol = 0.0;
  double _luk = 0.0;
  double _kilograma = 0.0;
  double _papar = 0.0;
  double _secer = 0.0;
  double _novo1 = 0.0;
  double _novo2 = 0.0;
  double _novo3 = 0.0;
  bool _slatkabool = false;
  bool _ljutabool = false;
  bool _paparbool = false;
  bool _solbool = false;
  bool _secerbool = false;
  bool _lukbool = false;
  bool _novo1bool = false;
  bool _novo2bool = false;
  bool _novo3bool = false;

  final TextEditingController _textController = TextEditingController();
  final TextEditingController _novo1Controller = TextEditingController();
  final TextEditingController _novo2Controller = TextEditingController();
  final TextEditingController _novo3Controller = TextEditingController();
  final TextEditingController _novo1imeController = TextEditingController();
  final TextEditingController _novo2imeController = TextEditingController();
  final TextEditingController _novo3imeController = TextEditingController();
  final TextEditingController _slatkaController = TextEditingController();
  final TextEditingController _ljutaController = TextEditingController();
  final TextEditingController _solController = TextEditingController();
  final TextEditingController _lukController = TextEditingController();
  final TextEditingController _secerController = TextEditingController();
  final TextEditingController _paparController = TextEditingController();
  int maxDigits = 9;
//_BlagiScreenState class is defined as the state class for BlagiScreen. It extends the State class and overrides the necessary methods.
// The class contains variables for various properties of the screen, such as _naslov, _slatkarez, _slatka, etc.
//The initState method initializes these variables based on the data parameter passed to the screen.

//_textController is initialized as a TextEditingController which will be used to control the text field's behavior.
  @override
  void initState() {
    super.initState();

    _naslov = 'Moj izbor';
    _slatka = 0;
    _ljuta = 0;
    _sol = 0;
    _luk = 0;
    _papar = 0;
    _secer = 0;
    _novo1 = 0;
    _novo2 = 0;
    _novo3 = 0;
  }

  // The initState method initializes these variables based on the data parameter passed to the screen.
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
    //Rezultati u gramima
    double _slatkarezg =
        double.parse((_slatka * _kilograma).toStringAsFixed(1));
    double _ljutarezg = double.parse((_ljuta * _kilograma).toStringAsFixed(1));
    double _solrezg = double.parse((_sol * _kilograma).toStringAsFixed(1));
    double _lukrezg = double.parse((_luk * _kilograma).toStringAsFixed(1));
    double _paparrezg = double.parse((_papar * _kilograma).toStringAsFixed(1));
    double _secerrezg = double.parse((_secer * _kilograma).toStringAsFixed(1));
    double _novo1rezg = double.parse((_novo1 * _kilograma).toStringAsFixed(1));
    double _novo2rezg = double.parse((_novo2 * _kilograma).toStringAsFixed(1));
    double _novo3rezg = double.parse((_novo3 * _kilograma).toStringAsFixed(1));
    //Rezultati u kilogramima
    double _slatkarezkg = double.parse((_slatkarezg / 1000).toStringAsFixed(1));
    double _ljutarezkg = double.parse((_ljutarezg / 1000).toStringAsFixed(1));
    double _solrezkg = double.parse((_solrezg / 1000).toStringAsFixed(1));
    double _lukrezkg = double.parse((_lukrezg / 1000).toStringAsFixed(1));
    double _paparrezkg = double.parse((_paparrezg / 1000).toStringAsFixed(1));
    double _secerrezkg = double.parse((_secerrezg / 1000).toStringAsFixed(1));
    double _novo1rezkg = double.parse((_novo1rezg / 1000).toStringAsFixed(1));
    double _novo2rezkg = double.parse((_novo2rezg / 1000).toStringAsFixed(1));
    double _novo3rezkg = double.parse((_novo3rezg / 1000).toStringAsFixed(1));
    _slatkabool = _slatkarezg > 999 ? true : false;
    _ljutabool = _ljutarezg > 999 ? true : false;
    _secerbool = _secerrezg > 999 ? true : false;
    _solbool = _solrezg > 999 ? true : false;
    _paparbool = _paparrezg > 999 ? true : false;

    _lukbool = _lukrezg > 999 ? true : false;
    _novo1bool = _novo1rezg > 999 ? true : false;
    _novo2bool = _novo2rezg > 999 ? true : false;
    _novo3bool = _novo3rezg > 999 ? true : false;

    return Scaffold(
      extendBodyBehindAppBar: true,
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
                  style: TextStyle(
                    fontSize: scalewidth * 41,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.black,
                  ),
                ),
                Text(
                  '$_naslov',
                  style: TextStyle(
                    fontSize: scalewidth * 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            expandedHeight: 40.0,
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
                                  fontSize: scalewidth * 17,
                                  color: Colors.black,
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
                      'Slatka paprika',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scalewidth * 22,
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 7,
                    ),
                    SizedBox(
                      width: scalewidth * 60,
                      height: scaleheight * 40,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: TextField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d{0,2}(\.\d{0,2})?$')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _slatka = double.parse(value);
                              // double.parse doesn't give error while there are empty values
                            });
                          },
                          controller: _slatkaController,
                          decoration: InputDecoration(
                            suffix: const Text(
                              '%',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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
                    SizedBox(
                      width: scalewidth * 5,
                    ),
                     Flexible(
                       child: FittedBox(
                        
                          child: Text(
                            _slatkabool ? '$_slatkarezkg kg' : '$_slatkarezg g',
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
                      'Ljuta paprika',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scalewidth * 22,
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 16,
                    ),
                    SizedBox(
                      width: scalewidth * 60,
                      height: scaleheight * 40,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: TextField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d{0,2}(\.\d{0,2})?$')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _ljuta = double.parse(value);
                              // double.parse doesn't give error while there are empty values
                            });
                          },
                          controller: _ljutaController,
                          decoration: InputDecoration(
                            suffix: const Text(
                              '%',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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
                    SizedBox(
                      width: scalewidth * 5,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _ljutabool ? '$_ljutarezkg kg' : '$_ljutarezg g',
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
                      'Sol',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scalewidth * 22,
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 118,
                    ),
                    SizedBox(
                      width: scalewidth * 60,
                      height: scaleheight * 40,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: TextField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d{0,2}(\.\d{0,2})?$')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _sol = double.parse(value);
                              // double.parse doesn't give error while there are empty values
                            });
                          },
                          controller: _solController,
                          decoration: InputDecoration(
                            suffix: const Text(
                              '%',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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
                    SizedBox(
                      width: scalewidth * 5,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _solbool ? '$_solrezkg kg' : '$_solrezg g',
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
                      'Češnjak',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scalewidth * 22,
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 69,
                    ),
                    SizedBox(
                      width: scalewidth * 60,
                      height: scaleheight * 40,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: TextField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d{0,2}(\.\d{0,2})?$')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _luk = double.parse(value);
                              // double.parse doesn't give error while there are empty values
                            });
                          },
                          controller: _lukController,
                          decoration: InputDecoration(
                            suffix: const Text(
                              '%',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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
                    SizedBox(
                      width: scalewidth * 5,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _lukbool ? '$_lukrezkg kg' : '$_lukrezg g',
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
              //Papar
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
                      backgroundImage: AssetImage('assets/icons/papar.png'),
                      backgroundColor: Colors.black87,
                    ),
                    SizedBox(
                      width: scalewidth * 10,
                    ),
                    Text(
                      'Papar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scalewidth * 22,
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 90,
                    ),
                    SizedBox(
                      width: scalewidth * 60,
                      height: scaleheight * 40,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: TextField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d{0,2}(\.\d{0,2})?$')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _papar = double.parse(value);
                              // double.parse doesn't give error while there are empty values
                            });
                          },
                          controller: _paparController,
                          decoration: InputDecoration(
                            suffix: const Text(
                              '%',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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
                    SizedBox(
                      width: scalewidth * 5,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _paparbool ? '$_paparrezkg kg' : '$_paparrezg g',
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
              //Šećer
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
                      backgroundImage: AssetImage('assets/icons/secer.png'),
                      backgroundColor: Colors.black87,
                    ),
                    SizedBox(
                      width: scalewidth * 10,
                    ),
                    Text(
                      'Šećer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scalewidth * 22,
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 92,
                    ),
                    SizedBox(
                      width: scalewidth * 60,
                      height: scaleheight * 40,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: TextField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d{0,2}(\.\d{0,2})?$')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _secer = double.parse(value);
                              // double.parse doesn't give error while there are empty values
                            });
                          },
                          controller: _secerController,
                          decoration: InputDecoration(
                            suffix: const Text(
                              '%',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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
                    SizedBox(
                      width: scalewidth * 5,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _secerbool ? '$_secerrezkg kg' : '$_secerrezg g',
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
              //Novo1
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
                      backgroundImage: AssetImage('assets/icons/povrce.png'),
                      backgroundColor: Colors.black87,
                    ),
                    SizedBox(
                      width: scalewidth * 10,
                    ),
                    SizedBox(
                      height: scaleheight * 40,
                      width: scalewidth * 146,
                      child: TextField(
                        controller: _novo1imeController,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(9),
                        ],
                        decoration: const InputDecoration(
                            hintText: '*Sastojak*',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: scalewidth * 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 60,
                      height: scaleheight * 40,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: TextField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d{0,2}(\.\d{0,2})?$')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _novo1 = double.parse(value);
                            });
                          },
                          controller: _novo1Controller,
                          decoration: InputDecoration(
                            suffix: const Text(
                              '%',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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
                    SizedBox(
                      width: scalewidth * 5,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _novo1bool ? '$_novo1rezkg kg' : '$_novo1rezg g',
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
              //Novo2
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
                      backgroundImage: AssetImage('assets/icons/povrce.png'),
                      backgroundColor: Colors.black87,
                    ),
                    SizedBox(
                      width: scalewidth * 10,
                    ),
                    SizedBox(
                      height: scaleheight * 40,
                      width: scalewidth * 146,
                      child: TextField(
                        controller: _novo2imeController,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(9),
                        ],
                        decoration: const InputDecoration(
                            hintText: '*Sastojak*',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: scalewidth * 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 60,
                      height: scaleheight * 40,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: TextField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d{0,2}(\.\d{0,2})?$')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _novo2 = double.parse(value);
                            });
                          },
                          controller: _novo2Controller,
                          decoration: InputDecoration(
                            suffix: const Text(
                              '%',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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
                    SizedBox(
                      width: scalewidth * 5,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _novo2bool ? '$_novo2rezkg kg' : '$_novo2rezg g',
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
              //Novo3
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
                      backgroundImage: AssetImage('assets/icons/povrce.png'),
                      backgroundColor: Colors.black87,
                    ),
                    SizedBox(
                      width: scalewidth * 10,
                    ),
                    SizedBox(
                      height: scaleheight * 40,
                      width: scalewidth * 146,
                      child: TextField(
                        controller: _novo3imeController,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(9),
                        ],
                        decoration: const InputDecoration(
                            hintText: '*Sastojak*',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: scalewidth * 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: scalewidth * 60,
                      height: scaleheight * 40,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: TextField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d{0,2}(\.\d{0,2})?$')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _novo3 = double.parse(value);
                            });
                          },
                          controller: _novo3Controller,
                          decoration: InputDecoration(
                            suffix: const Text(
                              '%',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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
                    SizedBox(
                      width: scalewidth * 5,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          _novo3bool ? '$_novo3rezkg kg' : '$_novo3rezg g',
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
