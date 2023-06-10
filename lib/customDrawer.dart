import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
   double scaleheight = MediaQuery.of(context).size.height / 800;
    return Drawer(
      
        child: Container(
          
          
          padding: EdgeInsets.all(9),
      child: Column(
        
        children: [
          SizedBox(
            height: scaleheight * 30,
          ),
          Text(
            'O aplikaciji',
            
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: scalewidth * 32,
              color: const Color.fromARGB(255, 216, 203, 203),
            ),
          ),
          SizedBox(height: scaleheight * 20),
          Text('Obratite pozornost na to kakvu papriku koristite! ',
          style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: scalewidth * 24,
                  color: const Color.fromARGB(255, 248, 48, 34),
                ),),
                SizedBox(height: scaleheight * 13,),
              Text(
                ' Za recepturu aplikacije koristena je mljevena paprika "Šarfran". Ako ste sigurni da koristite izuzetno ljutu papriku odlučite se za blaže recepte, odnosno koristite opciju "Po izboru".\n\n '
                'Okrugla "Info" tipka pri dnu ekrana sadrži savjete koji bih Vam mogli koristiti. \n\n'
                'Prilikom korištenja aplikacije imajte u vidu da sastojci i količine variraju od regije i podneblja. Aplikacija je pravljena da bih se implementirala stečena znanja. Svaka kritika i savjet glede recepata, izgleda i funkcionalnosti je dobrodošla.\n\nDobar tek!',
                style: TextStyle(
                  
                  fontSize: scalewidth * 15,
                  color: const Color.fromARGB(255, 216, 203, 203),
                ),
              ),
              
                
            ],
          
        
      ),
      decoration: BoxDecoration(
        color: Colors.black87,
        image: DecorationImage(
          image: AssetImage('assets/icons/pozadina3.jpg'),
          
          fit: BoxFit.cover,
          opacity: 0.2,
        ),
      ),
    ));
  }
}
