 import 'package:trello_client/trello_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:trello_flutter/features/landing/presentation/index.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trello',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/',
      routes: {
'/':(context) => const Landing(),

      },
    );
  }
}
