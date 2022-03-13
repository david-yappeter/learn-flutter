import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:flut_hive/model/transaction.dart';
import 'package:flut_hive/pages/transaction.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>('transactions');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Hive Expense App';

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: TransactionPage(),
    );
  }
}
