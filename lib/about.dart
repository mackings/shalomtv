import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  _AboutusState createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("About Us"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(" YOU ARE WATCHING SHALOM TV  \n FROM THE CITY OF ONITSHA ANAMBRA STATE, \n NIGERIA; ONITSHA ADDRESS:\n  No 4 BISHOP EMEKA NWANKPA STREET,3-3 JUNCTION,\n  BEHIND CHIPET FILLING STATION, NKWELLE EZUNAKA\n  OYI L.G.A,. LAGOS ADDRESS: No 36 BABS ANIMASHAUN OFF BODE THOMAS STREET ",style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),),
                ),
              ),

      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Text("SURULERE, LAGOS STATE,.\nAWKA ADDRESS: UMUDIOKA AWKA OPPOSITE ICHIDA BOREHOLE,AWKA ANAMBRA STATE.,  PARTNER WITH GRACE, FIDELITY BANK  A/C : CHAPEL OF FAITH  6220086678, PAYPAL A/C: shalomtv33@gmail.com, FOR INQUIRIES PLEASE CALL +(234)7042913778. ",style: TextStyle(
            color: Colors.green,
            fontSize: 20,
          ),),
      ),
    ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text("bishop emeka Nwankpa street \n33juntion nkwelle ezunaka oyi L.G.A \nbishop emeka Nwankpa street 33juntion nkwelle \nezunaka oyi L.G.AOnisha,\nAnanbra 432104",style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
