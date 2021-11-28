import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shalom_tv/grace.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:webview_flutter/webview_flutter.dart";
import "package:flutter_webview_plugin/flutter_webview_plugin.dart";


class Partner extends StatefulWidget {
  const Partner({Key? key}) : super(key: key);

  @override
  _PartnerState createState() => _PartnerState();
}

class _PartnerState extends State<Partner> {
  final String partner = ("https://paypal.me/SHALOMTV?country.x=LS&locale.x=en_US");
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Partner with Shalom TV"),
      ),
        url: partner);
  }
}
