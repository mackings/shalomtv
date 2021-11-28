import 'package:flutter/material.dart';
import 'package:shalom_tv/grace.dart';
import 'package:shalom_tv/livetv.dart';
import 'package:shalom_tv/partner.dart';
import 'package:shalom_tv/shalomaffrica.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'about.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  String youtube = ("https://youtube.com/channel/UCdO24vnW9giAM0V1UQ2X59g");


  _launchYouTube() async {
    const url = 'https://youtube.com/channel/UCdO24vnW9giAM0V1UQ2X59g';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchfb() async {
    const url = 'https://www.facebook.com/bishopemekanwankpafoundation/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _livestream() async {
    const url = 'https://stream.commec.tv/iframe/b/169562/c/584002';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shalom TV"),
          backgroundColor: Colors.green,
          elevation: 0,
        ),
        
        body: Column(
          children: [
            SizedBox(height: 130,),

            Center(child: SvgPicture.asset("assets/place.svg",height: 250, width: 250,color: Colors.green,)),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Livetv()));
                //_livestream();
              },
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Stream our TV",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                ),
              ),
            ),
          ],
        ),




        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Shalom TV"),
                accountEmail: Text("Shalom TV 33@Gmail.com"),
                currentAccountPicture: Image(image: AssetImage("assets/shalomlogo.jpeg")),
              ),

              SizedBox(height: 30,),
              ListTile(
                onTap: (){
                  _launchYouTube();
                },
                title: Text("Watch on Youtube",style: TextStyle(
                    color: Colors.green,
                    fontSize: 20
                ),),
                trailing: Icon(Icons.video_collection_outlined,size: 50,color: Colors.red,),
              ),
              SizedBox(height: 20,),

              ListTile(
                onTap: _launchfb,
                title: Text("Visit our Facebook",style: TextStyle(
                    color: Colors.green,
                    fontSize: 20
                ),),
                trailing: Icon(Icons.facebook,size: 50,color: Colors.blue,),
              ),
              SizedBox(height: 20,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Grace()));
                },
                child: ListTile(
                  title: Text("Partner with Grace",style: TextStyle(
                      color: Colors.green,
                      fontSize: 20
                  ),),
                  trailing: Icon(Icons.work_sharp,size: 50,color: Colors.blue,),
                ),
              ),
              SizedBox(height: 20,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Partner()));
                },
                child: ListTile(
                  title: Text("Partner with Shalom TV",style: TextStyle(
                      color: Colors.green,
                      fontSize: 20
                  ),),
                  trailing: Icon(Icons.workspaces_filled,size: 50,color: Colors.red,),
                ),
              ),
              SizedBox(height: 20,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Aboutus()));
                },
                child: ListTile(
                  title: Text("About Us",style: TextStyle(
                      color: Colors.green,
                      fontSize: 20
                  ),),
                  trailing: Icon(Icons.person_pin_sharp,size: 50,color: Colors.black,),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ShalomAfrica()));
                },
                child: ListTile(
                  title: Text("Shalom Africa",style: TextStyle(
                      color: Colors.green,
                      fontSize: 20
                  ),),
                  trailing: Icon(Icons.tv,size: 50,color: Colors.red,),
                ),
              ),
              SizedBox(height: 20,),

              ListTile(
                title: Text("Privacy Policy",style: TextStyle(
                    color: Colors.green,
                    fontSize: 20
                ),),
                trailing: Icon(Icons.privacy_tip_outlined,size: 50,color: Colors.green,),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

