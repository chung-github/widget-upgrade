import 'package:flutter/material.dart';
import 'package:my_app/upgrade.dart';
import 'package:my_app/feature.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Text("Nâng cấp F2")),
                Tab(icon: Text("Tính năng")),
              ],
            ),
            title: const Text('Nâng cấp tài khoản'),
          ),
          body: const TabBarView(
            children: [
              UpgradeWidget(),
              FeatureWidget(),
            ],
          ),
        )
    );
  }
}