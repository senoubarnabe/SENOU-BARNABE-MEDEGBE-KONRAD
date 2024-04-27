// CandidateDetailPage
import 'package:cand/models/candidat.dart';
import 'package:flutter/material.dart';

class CandidateDetailPage extends StatelessWidget {
  final Candidat candidate;

  const CandidateDetailPage({Key? key, required this.candidate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${candidate.firstName} ${candidate.name}'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(candidate.photo),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              candidate.description,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}