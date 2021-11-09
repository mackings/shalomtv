import 'package:flutter/material.dart';

class Grace extends StatefulWidget {
  const Grace({Key? key}) : super(key: key);

  @override
  _GraceState createState() => _GraceState();
}

class _GraceState extends State<Grace> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Parner with Grace"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(" PARTNER WITH GRACE, \n FIDELITY BANK  A/C : \n CHAPEL OF FAITH  6220086678, \n PAYPAL A/C: shalomtv33@gmail.com,\n  FOR INQUIRIES PLEASE CALL +(234)7042913778",style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
