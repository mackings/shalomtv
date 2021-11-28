import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shalom_tv/grace.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:webview_flutter/webview_flutter.dart";
import "package:flutter_webview_plugin/flutter_webview_plugin.dart";



class Livetv extends StatefulWidget {
  const Livetv({Key? key}) : super(key: key);

  @override
  _LivetvState createState() => _LivetvState();
}

class _LivetvState extends State<Livetv> {
  FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();
  final String url = 'https://stream.commec.tv/iframe/b/169562/c/584002';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged wvs) { });
  }
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Shalom TV"),
      ),
        url: url,
      withZoom: true,

    );
  }
}
