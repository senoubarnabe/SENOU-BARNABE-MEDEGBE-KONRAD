import 'package:cand/common/button_form.dart';
import 'package:cand/common/input_form.dart';
import 'package:cand/models/candidate.dart';
import 'package:flutter/material.dart';

class AddCandidateForm extends StatefulWidget {
  const AddCandidateForm({super.key});

  @override
  State<AddCandidateForm> createState() => _AddCandidateFormState();
}

class _AddCandidateFormState extends State<AddCandidateForm> {
  final _formKey = GlobalKey<FormState>();
  final Candidate candidate = Candidate();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Création de candidat"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              InputForm(
                name: 'Nom',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Champ obligatoire";
                  }
                  return null;
                },
                onSaved: (value) {
                  candidate.name = value;
                },
                prefixIcon: Icon(Icons.person),
              ),
              SizedBox(height: 20),
              InputForm(
                name: 'Prénom(s)',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Champ obligatoire";
                  }
                  return null;
                },
                onSaved: (value) {
                  candidate.surname = value;
                },
                prefixIcon: Icon(Icons.person),
              ),
              SizedBox(height: 20),
              InputForm(
                name: 'Parti politique',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Champ obligatoire";
                  }
                  return null;
                },
                onSaved: (value) {
                  candidate.surname = value;
                },
                prefixIcon: Icon(Icons.flag),
              ),
              SizedBox(height: 20),
              InputForm(
                name: 'Description',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Champ obligatoire";
                  }
                  return null;
                },
                onSaved: (value) {
                  candidate.describe = value;
                },
                prefixIcon: Icon(Icons.error),
              ),
              SizedBox(height: 20),

              ListTile(
                title: Text('Date de naissance'),
                subtitle: Text('21/09/2021'),
                trailing: Icon(Icons.calendar_month),
                onTap: () async {
                  var bookPeriod = await showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2024, 12, 31), // Correction: Utilisez une date valide.
                  );
                  if (bookPeriod != null) {
                    print(bookPeriod); // Affiche la date sélectionnée dans la console.

                    // Formatage de la date pour l'affichage dans le format désiré.
                    String formattedDate = "${bookPeriod.day}/${bookPeriod.month}/${bookPeriod.year}";
                    print(formattedDate); // Affiche la date formatée dans la console.
                  }
                },
              ),

              SizedBox(height: 20),
              ButtonForm(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pop(context, candidate);
                  }
                },
                text: "SAUVEGARDER",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

