import 'dart:io';

import 'package:flutter/material.dart';
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
                      sleep(
                        Duration(seconds: 1),
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => SelectMatiere(
                            name: name,
                            level: _radioval,
                          ),
                        ),
                      );
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
                      sleep(
                        Duration(seconds: 1),
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => SelectMatiere(
                            name: name,
                            level: _radioval,
                          ),
                        ),
                      );
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
                      sleep(
                        Duration(seconds: 1),
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => SelectMatiere(
                            name: name,
                            level: _radioval,
                          ),
                        ),
                      );
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
                      sleep(
                        Duration(seconds: 1),
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => SelectMatiere(
                            name: name,
                            level: _radioval,
                          ),
                        ),
                      );
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
    );
  }
}
