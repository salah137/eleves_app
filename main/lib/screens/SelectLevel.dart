import 'package:flutter/material.dart';

class SeletLevelPrtimair extends StatefulWidget {
  SeletLevelPrtimair({Key? key}) : super(key: key);

  @override
  _SeletLevelPrtimairState createState() => _SeletLevelPrtimairState();
}

class _SeletLevelPrtimairState extends State<SeletLevelPrtimair> {
  var level;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RadioListTile(
            value: 1,
            groupValue: level,
            onChanged: (v) {
              setState(
                () {
                  level = v;
                },
              );
            },
            title: Text("1ere anne"),
          ),
          RadioListTile(
            value: 2,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("2ere anne"),
          ),
          RadioListTile(
            value: 1,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("1ere anne"),
          ),
          RadioListTile(
            value: 3,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("3ere anne"),
          ),
          RadioListTile(
            value: 4,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("4ere anne"),
          ),
          RadioListTile(
            value: 5,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("5ere anne"),
          ),
          RadioListTile(
            value: 6,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("6ere anne"),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child:Icon(Icons.arrow_right)
      ),
    );
  }
}
class SeletCollegePrtimair extends StatefulWidget {

  @override
  _SeletLevelCollegeState createState() => _SeletLevelCollegeState();
}

class _SeletLevelCollegeState extends State<SeletCollegePrtimair> {
  var level;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RadioListTile(
            value: 1,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("1ere anne"),
          ),
          RadioListTile(
            value: 2,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("2ere anne"),
          ),
          RadioListTile(
            value: 1,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("1ere anne"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child:Icon(Icons.arrow_right)
      ),
    );
  }
}


class SeletLevelLycce extends StatefulWidget {

  @override
  _SeletLevelLycceState createState() => _SeletLevelLycceState();
}

class _SeletLevelLycceState extends State<SeletLevelLycce> {
  var level;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RadioListTile(
            value: 1,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("1ere anne"),
          ),
          RadioListTile(
            value: 2,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("2ere anne"),
          ),
          RadioListTile(
            value: 1,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("1ere anne"),
          ),
          RadioListTile(
            value: 3,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("3ere anne"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child:Icon(Icons.arrow_right)
      ),
    );
  }
}
class SeletLevelLangs extends StatefulWidget {
  SeletLevelLangs({Key? key}) : super(key: key);

  @override
  _SeletLevelLangsState createState() => _SeletLevelLangsState();
}

class _SeletLevelLangsState extends State<SeletLevelLangs> {
  var level;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RadioListTile(
            value: 1,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("Pour les petits enfants"),
          ),
          RadioListTile(
            value: 2,
            groupValue: level,
            onChanged: (v) {
              setState(
                    () {
                  level = v;
                },
              );
            },
            title: Text("pour les adulte"),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child:Icon(Icons.arrow_right)
      ),
    );
  }
}

