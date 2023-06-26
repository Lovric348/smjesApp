// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class KrvRecept extends StatefulWidget {
  final int data;

  const KrvRecept({super.key, required this.data});

  @override
  State<KrvRecept> createState() => _KrvReceptState();
}

class _KrvReceptState extends State<KrvRecept> {
  String _naslov = '';
  double _slatka = 0.0;
  double _ljuta = 0.0;
  double _krv = 0.0;
  double _papar = 0.0;
  double _sol = 0.0;
  double _przeniluk = 0.0;
  double _kilograma = 0.0;
  int _index = 0;
  double _novo1 = 0.0;
  double _novo2 = 0.0;
  double _novo3 = 0.0;
  bool _slatkabool = false;
  bool _ljutabool = false;

  bool _solbool = false;
  bool _paparbool = false;
  bool _lukbool = false;
  bool _krvbool = false;
  bool _novo1bool = false;
  bool _novo2bool = false;
  bool _novo3bool = false;
  bool _slatkabool1 = false;
  bool _ljutabool1 = false;
  bool _solbool1 = false;
  bool _paparbool1 = false;
  bool _lukbool1 = false;
  bool _krvbool1 = false;
 
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _slatkaController = TextEditingController();
  final TextEditingController _ljutaController = TextEditingController();
  final TextEditingController _solController = TextEditingController();
  final TextEditingController _lukController = TextEditingController();
  final TextEditingController _krvController = TextEditingController();
  final TextEditingController _paparController = TextEditingController();
  final TextEditingController _novo1Controller = TextEditingController();
  final TextEditingController _novo2Controller = TextEditingController();
  final TextEditingController _novo3Controller = TextEditingController();
  final TextEditingController _novo1imeController = TextEditingController();
  final TextEditingController _novo2imeController = TextEditingController();
  final TextEditingController _novo3imeController = TextEditingController();
  int maxDigits = 9;
  @override
  void initState() {
    super.initState();
    if (widget.data == 22) {
      _naslov = 'Slavonski';
      _slatka = 0.003;
      _ljuta = 0.001;
      _sol = 0.2;
      _przeniluk = 0.1;
      _papar = 0.03;
      _krv = 0.1;
      _index = 0;
    } else if (widget.data == 33) {
      _naslov = 'Moj izbor';
      _index = 1;
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    //Rezultat za "po izboru"
    double _slatkarezg =
        double.parse((_slatka * _kilograma).toStringAsFixed(1));
    double _ljutarezg = double.parse((_ljuta * _kilograma).toStringAsFixed(1));
    double _solrezg = double.parse((_sol * _kilograma).toStringAsFixed(1));
    double _lukrezg =
        double.parse((_przeniluk * _kilograma).toStringAsFixed(1));
    double _paparrezg = double.parse((_papar * _kilograma).toStringAsFixed(1));
    double _krvrezg =
        double.parse(((_krv * _kilograma) / 10).toStringAsFixed(0));
    double _novo1rezg = double.parse((_novo1 * _kilograma).toStringAsFixed(1));
    double _novo2rezg = double.parse((_novo2 * _kilograma).toStringAsFixed(1));
    double _novo3rezg = double.parse((_novo3 * _kilograma).toStringAsFixed(1));
    //Rezultati kilogram
    double _slatkarezkg = double.parse((_slatkarezg / 1000).toStringAsFixed(1));
    double _ljutarezkg = double.parse((_ljutarezg / 1000).toStringAsFixed(1));
    double _solrezkg = double.parse((_solrezg / 1000).toStringAsFixed(1));
    double _lukrezkg = double.parse((_lukrezg / 1000).toStringAsFixed(1));
    double _paparrezkg = double.parse((_paparrezg / 1000).toStringAsFixed(1));
    double _krvrezl = double.parse((_krvrezg / 100).toStringAsFixed(1));
    double _novo1rezkg = double.parse((_novo1rezg / 1000).toStringAsFixed(1));
    double _novo2rezkg = double.parse((_novo2rezg / 1000).toStringAsFixed(1));
    double _novo3rezkg = double.parse((_novo3rezg / 1000).toStringAsFixed(1));
    
    //Rezultat
    double _slatkarezg1 =
        double.parse(((_slatka * _kilograma) * 100).toStringAsFixed(1));
    double _ljutarez1 =
        double.parse(((_ljuta * _kilograma) * 100).toStringAsFixed(1));
    double _solrez1 =
        double.parse(((_sol * _kilograma) * 100).toStringAsFixed(1));
    double _lukrez1 =
        double.parse(((_przeniluk * _kilograma) * 100).toStringAsFixed(1));
    double _paparrez1 =
        double.parse(((_papar * _kilograma) * 100).toStringAsFixed(1));
    double _krvrez1 =
        double.parse(((_krv * _kilograma) * 10).toStringAsFixed(0));

    double _slatkarezkg1 = double.parse((_slatkarezg1 / 1000).toStringAsFixed(1));
    double _ljutarezkg1 = double.parse((_ljutarez1 / 1000).toStringAsFixed(1));
    double _solrezkg1 = double.parse((_solrez1 / 1000).toStringAsFixed(1));
    double _lukrezkg1 = double.parse((_lukrez1 / 1000).toStringAsFixed(1));
    double _paparrezkg1 = double.parse((_paparrez1 / 1000).toStringAsFixed(1));
    double _krvrezl1 = double.parse((_krvrez1 / 100).toStringAsFixed(1));    

    //Postotak
    double _slatkapos = double.parse((_slatka * 100).toStringAsFixed(1));
    double _ljutapos = double.parse((_ljuta * 100).toStringAsFixed(1));
    double _solpos = double.parse((_sol * 100).toStringAsFixed(1));
    double _lukpos = double.parse((_przeniluk * 100).toStringAsFixed(1));
    double _krvpos = double.parse((_krv * 100).toStringAsFixed(1));
    double _paparpos = double.parse((_papar * 100).toStringAsFixed(1));

    _slatkabool = _slatkarezg > 999? true : false;
    _ljutabool = _ljutarezg > 999 ? true : false;
    _paparbool = _paparrezg > 999 ? true : false;
    _solbool = _solrezg > 999 ? true : false;
    _krvbool = _krvrezg > 999 ? true : false;
    _lukbool = _lukrezg > 999? true : false;
    _novo1bool = _novo1rezg > 999 ? true : false;
    _novo2bool = _novo2rezg > 999 ? true : false;
    _novo3bool = _novo3rezg > 999 ? true : false;

    _slatkabool1 = _slatkarezg1 > 999 ? true : false;
    _ljutabool1 = _ljutarez1 >999 ? true : false;
    _paparbool1 = _paparrez1 > 999 ? true : false;
    _solbool1 =  _solrez1 > 999 ? true : false;
    _krvbool1 = _krvrez1 > 999 ? true : false;
    _lukbool1 = _lukrez1 > 999 ? true : false;
    

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
            title: Stack(children: <Widget>[
              Text(
                _naslov,
                style: TextStyle(
                  fontSize: scalewidth * 43,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.black,
                ),
              ),
              Text(
                _naslov,
                style: TextStyle(
                  fontSize: scalewidth * 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ]),
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
        body: IndexedStack(
          index: _index,
          children: <Widget>[
            Container(
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
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        decimal: true),
                                onChanged: (value) {
                                  setState(() {
                                    _kilograma = double.parse(value);
                                    // double.parse doesn't give error while there are empty values
                                  });
                                },
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'^\d{0,3}(\.\d{0,1})?$')),
                                ],
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
                          backgroundImage:
                              AssetImage('assets/icons/paprika.png'),
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
                          width: scalewidth * 27,
                        ),
                        Flexible(
                          child: FittedBox(
                            child: Text(
                              _slatkabool1 ? '$_slatkarezkg1 kg' : '$_slatkarezg1 g',
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
                          width: scalewidth * 37,
                        ),
                        Flexible(
                          child: FittedBox(
                            child: Text(
                          _ljutabool1 ? '$_ljutarezkg1 kg' : '$_ljutarez1 g',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),),),
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
                          width: scalewidth * 121,
                        ),
                        Flexible(
                          child: FittedBox(
                            child: Text(
                          _solbool1 ? '$_solrezkg1 kg' : '$_solrez1 g',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),),),
                        ),
                      ],
                    ),
                  ),
                  //Luk
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
                          backgroundImage: AssetImage('assets/icons/luk.png'),
                          backgroundColor: Colors.black87,
                        ),
                        SizedBox(
                          width: scalewidth * 10,
                        ),
                        Text(
                          'Prženi luk $_lukpos%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),
                        ),
                        SizedBox(
                          width: scalewidth * 57,
                        ),
                        Flexible(
                          child: FittedBox(
                            child: Text(
                          _lukbool1 ? '$_lukrezkg1 kg' : '$_lukrez1 g',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),),),
                        ),
                      ],
                    ),
                  ),
                  //Krv
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
                          backgroundImage: AssetImage('assets/icons/krv.png'),
                          backgroundColor: Colors.black87,
                        ),
                        SizedBox(
                          width: scalewidth * 10,
                        ),
                        Text(
                          'Krv $_krvpos%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),
                        ),
                        SizedBox(
                          width: scalewidth * 115,
                        ),
                        Flexible(
                          child: FittedBox(
                            child: Text(
                          _krvbool1 ? '$_krvrezl1 l' : '$_krvrez1 ml',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),),),
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
                          'Papar $_paparpos%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),
                        ),
                        SizedBox(
                          width: scalewidth * 112,
                        ),
                        Flexible(
                          child: FittedBox(
                            child: Text(
                          _paparbool1 ? '$_paparrezkg1 kg' : '$_paparrez1 g',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        decimal: true),
                                onChanged: (value) {
                                  setState(() {
                                    _kilograma = double.parse(value);
                                    // double.parse doesn't give error while there are empty values
                                  });
                                },
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'^\d{0,3}(\.\d{0,1})?$')),
                                ],
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
                          backgroundImage:
                              AssetImage('assets/icons/paprika.png'),
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
                          width: scalewidth * 2,
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              onChanged: (value) {
                                setState(() {
                                  _slatka = double.parse(value);
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
                          width: scalewidth * 10,
                        ),
                        Flexible(
                          child: FittedBox(
                            child: Text(
                              _slatkabool
                                  ? '$_slatkarezkg kg'
                                  : '$_slatkarezg g',
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
                          width: scalewidth * 11,
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
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
                          width: scalewidth * 10,
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
                          width: scalewidth * 109,
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
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
                          width: scalewidth * 10,
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
                  //Prženi luk
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
                          backgroundImage: AssetImage('assets/icons/luk.png'),
                          backgroundColor: Colors.black87,
                        ),
                        SizedBox(
                          width: scalewidth * 10,
                        ),
                        Text(
                          'Prženi luk',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),
                        ),
                        SizedBox(
                          width: scalewidth * 40,
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              onChanged: (value) {
                                setState(() {
                                  _przeniluk = double.parse(value);
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
                          width: scalewidth * 10,
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
                          width: scalewidth * 83,
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
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
                          width: scalewidth * 10,
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
                  //Krv
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
                          backgroundImage: AssetImage('assets/icons/krv.png'),
                          backgroundColor: Colors.black87,
                        ),
                        SizedBox(
                          width: scalewidth * 10,
                        ),
                        Text(
                          'Krv',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: scalewidth * 22,
                          ),
                        ),
                        SizedBox(
                          width: scalewidth * 100,
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              onChanged: (value) {
                                setState(() {
                                  _krv = double.parse(value);
                                  // double.parse doesn't give error while there are empty values
                                });
                              },
                              controller: _krvController,
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
                          width: scalewidth * 8,
                        ),
                        Flexible(
                          child: FittedBox(
                            child: Text(
                              _krvbool ? '$_krvrezl l' : '$_krvrez1 ml',
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
                          backgroundImage:
                              AssetImage('assets/icons/povrce.png'),
                          backgroundColor: Colors.black87,
                        ),
                        SizedBox(
                          width: scalewidth * 10,
                        ),
                        SizedBox(
                          height: scaleheight * 40,
                          width: scalewidth * 143,
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
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
                          width: scalewidth * 10,
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
                          backgroundImage:
                              AssetImage('assets/icons/povrce.png'),
                          backgroundColor: Colors.black87,
                        ),
                        SizedBox(
                          width: scalewidth * 10,
                        ),
                        SizedBox(
                          height: scaleheight * 40,
                          width: scalewidth * 143,
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
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
                          width: scalewidth * 10,
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
                          backgroundImage:
                              AssetImage('assets/icons/povrce.png'),
                          backgroundColor: Colors.black87,
                        ),
                        SizedBox(
                          width: scalewidth * 10,
                        ),
                        SizedBox(
                          height: scaleheight * 40,
                          width: scalewidth * 143,
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
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
                          width: scalewidth * 10,
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
          ],
        ),
      ),
    );
  }
}
