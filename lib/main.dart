import 'package:flutter/material.dart';
import 'candidat_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Candidats',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CandidateListPage(),
    );
  }
}
