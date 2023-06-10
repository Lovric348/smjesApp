import 'dart:ui';

import 'package:flutter/material.dart';

class AlertDial extends StatefulWidget {
  final int data;

  AlertDial({required this.data});

  @override
  State<AlertDial> createState() => _AlertDialState();
}

class _AlertDialState extends State<AlertDial> {
  String _text = '';
  String _naslov= '';
  @override
  void initState() {
    super.initState();
    if (widget.data == 11) {
      _naslov = 'Upute';
      _text = ' Krvavice (krvenjače) tradicionalno se prave od kože i ostalih organa koji se skupa sa kostima i mesom kuhaju u velikom loncu.'
' Prvo u lonac stavljamo kosti sa više ili manje mesa, po Vašem izboru. Nakon što primjetimo da se meso krenulo odvajati'
' od kostiju, dodajemo i kože. Sve skupa treba kuhati još otprilike 30 minuta, odnosno dok se meso potpuno odvaja od kosti, a'
' kože možemo probiti pritiskom prstiju. Zatim se kuhani sadržaj vadi na klupu na kojoj se cijedi i na kojoj ćemo odvojiti'
' kosti prije nadjevanja. \n\n'
' Sadržaj, ovisno o želji, meljemo mašinom ili sječemo na manje komade. Preporuka je da šajba za mašinu bude 10- 12mm za'
' mesnati dio, a 6mm za kože. Izrezani, odnosno mljeveni sadržaj stavljamo u posudu i dodajemo začine koje koristimo'
' pravilno rasporedimo po posudi i zamješamo. Ako u tablici nema sastojaka koje koristite, iskoristite neke od polja'
' na ekranu "Po izboru" da izračunate količinu (biljno- zrnati dodatci, brašno, riža...)\n\n'
' Nakon rezanja pristupamo nadjevanju. Velika je mogućnost da se smjesa stegnula zbog hladnoće jer se svinjokolje odvijaju u'
' mjesecima s niskim temperaturama. Hladna smjesa znatno otežava nadjevanje. Riješenje je dodati vode u kojoj se kuhala u'
' smjesu i odmah pristupiti nadjevanju.\n\n';
    } else if (widget.data == 22) {
      _naslov = 'Upute';
      _text = ' Za čvarake potrebno je pripremiti svježu slaninu narezanu na kocke, veličine po Vašem izboru'
' Krupni komadi daju masnije i gumaste čvarke, dok sitniji daju hrskavije. Optimalna veličina je oko 2x2 cm.'
' Za pripremanje 1 kg čvaraka bit će vam potrebno oko 6 kg slanine.\n\n'
' Na početku topljenja na dno se stavlja nepuna čaša vode ili manja količina stare masti.' 
' Lonac (kotluša) se ne puni do vrhan nego nešto malo više od polovice. Kuhanje se obavlja na umjerenoj temperaturi.' 
' Važno je neprekidno miješati čime potičemo topljenje masti i spriječavamo lijepljenje čvaraka za lonac.' 
' Drvenom žlicom se struže dno posude. Vatra se mora stalno održavati i mora biti umjerena.\n\n'
' Mast se topi dok ne postane bistra, a čvarci moraju biti rumeni. Gotovi su kad su zlatnožute boje i isplivaju na površinu.\n\n'
' Nakon što se lonac skine s vatre, čvarci se procijede te ih stavljamo u presu radi oslobađanja viška masti.\n\n'
' Jedan dio gurmana je protiv dodavanja mlijeka u čvarke i smatraju da ih je nakon cijeđenja najbolje samo ohladiti i ne soliti da ostanu hrskavi.'
' Drugi dio ističe prednosti dodavanja mlijeka, a to je zlatno-žuta boja i hrskavost. Stvar je osobne preferencije.'
' Jedni mlijeko dodaju na početku topljenja slanine, drugi kad se mast pojavi na površini, dok ga treći doliju kad se mast počne pjeniti.' 
' Treba biti pažljiv s količinom, jer previše mlijeka daje tamne čvarke, a premalo je uzrok blijedih, bijelih čvaraka.'
' Uobičajeno je da se na 10 kg narezanih kockica dodaje 1 dl mlijeka.';
    }
    
  }

  Widget build(BuildContext context) {
     double scalewidth = MediaQuery.of(context).size.width / 400;
   
    return AlertDialog(
      scrollable: true,
      backgroundColor: const Color.fromARGB(255, 216, 203, 203),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
            
              
            
          },
          child: Text(
            'Zatvori',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
        )
      ],
      content: Text(_text),
      title: Text(
        _naslov,
        style: TextStyle(
          fontSize: scalewidth * 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
