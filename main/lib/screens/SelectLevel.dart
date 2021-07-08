import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/screens/SelectMatiere.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class SeletLevelPrtimair extends StatefulWidget {
  final String name;

  SeletLevelPrtimair({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  _SeletLevelPrtimairState createState() => _SeletLevelPrtimairState(name);
}

class _SeletLevelPrtimairState extends State<SeletLevelPrtimair> {
  var level;
  final name;

  _SeletLevelPrtimairState(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) {
                return SelectMatiereForPrimair(
                  name: name,
                  clas: level,
                );
              }),
            );
          },
          child: Icon(Icons.arrow_right)),
    );
  }
}

class SeletCollegePrtimair extends StatefulWidget {
  final name;

  const SeletCollegePrtimair({Key? key, this.name}) : super(key: key);
  @override
  _SeletLevelCollegeState createState() => _SeletLevelCollegeState(name);
}

class _SeletLevelCollegeState extends State<SeletCollegePrtimair> {
  var level;
  final name;

  _SeletLevelCollegeState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => SelectMatiereForCollege(
                  name: name,
                  clas: level,
                ),
              ),
            );
          },
          child: Icon(Icons.arrow_right)),
    );
  }
}

class SeletLevelLycce extends StatefulWidget {
  final name;

  const SeletLevelLycce({Key? key, this.name}) : super(key: key);
  @override
  _SeletLevelLycceState createState() => _SeletLevelLycceState(name);
}

class _SeletLevelLycceState extends State<SeletLevelLycce> {
  var level;

  final name;

  _SeletLevelLycceState(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (ctx) => SelectMatiereForLycce(
                        name: name,
                        clas: level,
                      )),
            );
          },
          child: Icon(Icons.arrow_right)),
    );
  }
}

class SeletLevelLangs extends StatefulWidget {
  final name;
  SeletLevelLangs({Key? key, this.name}) : super(key: key);

  @override
  _SeletLevelLangsState createState() => _SeletLevelLangsState(name);
}

class _SeletLevelLangsState extends State<SeletLevelLangs> {
  var level;
  final name;

  _SeletLevelLangsState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => SelectMatiereForLangs(
                      name: name,
                      clas: level,
                    )));
          },
          child: Icon(Icons.arrow_right)),
    );
  }
}

class SeletCalclLangs extends StatefulWidget {
  final name;
  SeletCalclLangs({Key? key, this.name}) : super(key: key);

  @override
  _SeletCalclLangsState createState() => _SeletCalclLangsState(name);
}

class _SeletCalclLangsState extends State<SeletLevelLangs> {
  var level;
  final name;

  _SeletCalclLangsState(this.name);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                onPressed: () {
                  cubit.addCalulateMentaal(
                    name,
                    level,
                  );
                },
                child: Icon(Icons.arrow_right)),
          );
        },
        listener: (ctx, state) {});
  }
}
