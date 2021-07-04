import 'package:flutter/material.dart';

class SelectEleve extends StatefulWidget {
  SelectEleve(this.name);
  final name;

  @override
  _SelectEleveState createState() => _SelectEleveState();
}

class _SelectEleveState extends State<SelectEleve> {
  var _radioval;

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
              ),Text("Langue"),
            ],
          )
        ],
      ),
    );
  }
}
