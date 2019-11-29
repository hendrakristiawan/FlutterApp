import 'package:flutter/material.dart';
import 'package:flutter_app/Config.dart';
import 'package:flutter_app/flavor_banner.dart';

void mainDelegate() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: FlavorBanner(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Home Screen'),
            ),
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Server - ${Config.state}"),
                    Divider(),
                    Text("url base gateway - ${Config.urlGateWay}"),
                    Divider(),
                    Text("url base - ${Config.url}")
                  ],
                )
            )
        ),
      ),
    );
  }
}
