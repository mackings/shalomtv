import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shalom_tv/grace.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:webview_flutter/webview_flutter.dart";
import "package:flutter_webview_plugin/flutter_webview_plugin.dart";


class ShalomAfrica extends StatefulWidget {
  const ShalomAfrica({Key? key}) : super(key: key);

  @override
  _ShalomAfricaState createState() => _ShalomAfricaState();
}

class _ShalomAfricaState extends State<ShalomAfrica> {

  final String tva = ("https://mixlr.com/shalom-radio-africa");
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(" Shalom Africa's TV "),
      ),
        url: tva);
  }
}
