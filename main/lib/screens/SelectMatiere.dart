import 'package:flutter/material.dart';

class SelectMatiereForPrimair extends StatefulWidget {
   SelectMatiereForPrimair({ Key? key, this.name, this.level }) : super(key: key);
  final name;
  final level;

  @override
  _SelectMatiereForPrimairState createState() => _SelectMatiereForPrimairState();
}

class _SelectMatiereForPrimairState extends State<SelectMatiereForPrimair> {
  bool math =false;

  bool french = false;

  bool arabic = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Text("Selecter Les matiere"),
          CheckboxListTile(value: math, onChanged: (v){
            setState(() {
              math = v!;
            },);

          },
          title: Text('Math'),
          ),
          CheckboxListTile(value: math, onChanged: (v){
            setState(() {
              french = v!;
            },);

          },
            title: Text('francais'),
          ),
          CheckboxListTile(value: math, onChanged: (v){
            setState(() {
              arabic = v!;
            },);

          },
            title: Text('Arabic'),
          ),
        ],
      )),

    );
  }
}