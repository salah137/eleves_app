import 'dart:math';

import 'package:flutter/material.dart';
import 'package:main/screens/SelectLevel.dart';
import 'package:main/screens/SelectMatiere.dart';

class SelectEleve extends StatefulWidget {
  SelectEleve(this.name);
  final name;

  @override
  SelectEleveState createState() => SelectEleveState(name);
}

class SelectEleveState extends State<SelectEleve> {
  var _radioval;
  final name;

  SelectEleveState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("selecter le niveau de l'eleve"),
          Row(
            children: [
              Radio(
                  value: "Primaire",
                  groupValue: _radioval,
                  onChanged: (v) {
                    setState(() {
                      _radioval = v;
                    });
                  }),
              SizedBox(
                height: 5,
              ),
              Text("Primaire")
            ],
          ),
          Row(
            children: [
              Radio(
                  value: "College",
                  groupValue: _radioval,
                  onChanged: (v) {
                    setState(() {
                      _radioval = v;
                    });
                  }),
              SizedBox(
                height: 5,
              ),
              Text("College")
            ],
          ),
          Row(
            children: [
              Radio(
                  value: "Lycce",
                  groupValue: _radioval,
                  onChanged: (v) {
                    setState(() {
                      _radioval = v;
                    });
                  }),
              SizedBox(
                height: 5,
              ),
              Text("Lycce"),
            ],
          ),
          Row(
            children: [
              Radio(
                  value: "Langue",
                  groupValue: _radioval,
                  onChanged: (v) {
                    setState(() {
                      _radioval = v;
                    });
                  }),
              SizedBox(
                height: 5,
              ),
              Text("Langue"),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Widget toNavigate = _radioval == "Primaire"
              ? SeletLevelPrtimair(name: name)
              : _radioval == "College"
                  ? SeletCollegePrtimair(name: name)
                  : _radioval == "Lycce"
                      ? SeletLevelLycce(name: name)
                      : SeletLevelLangs(name: name);
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => toNavigate),
          );
        },
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}
