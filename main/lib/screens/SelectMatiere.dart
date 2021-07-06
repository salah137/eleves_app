import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/layouts/HomeLayout.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class SelectMatiereForPrimair extends StatefulWidget {
  SelectMatiereForPrimair({Key? key, this.name, this.level, this.clas})
      : super(key: key);
  final name;
  final level;
  final clas;
  @override
  _SelectMatiereForPrimairState createState() =>
      _SelectMatiereForPrimairState(name, level, clas);
}

class _SelectMatiereForPrimairState extends State<SelectMatiereForPrimair> {
  final name;
  final level;
  final clas;
  bool math = false;

  bool french = false;

  bool arabic = false;

  _SelectMatiereForPrimairState(this.name, this.level, this.clas);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Text("Selecter Les matiere"),
                  CheckboxListTile(
                    value: math,
                    onChanged: (v) {
                      setState(
                            () {
                          math = v!;
                        },
                      );
                    },
                    title: Text('Math'),
                  ),
                  CheckboxListTile(
                    value: french,
                    onChanged: (v) {
                      setState(
                            () {
                          french = v!;
                        },
                      );
                    },
                    title: Text('francais'),
                  ),
                  CheckboxListTile(
                    value: arabic,
                    onChanged: (v) {
                      setState(
                            () {
                          arabic = v!;
                        },
                      );
                    },
                    title: Text('Arabic'),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                cubit.addPriMairEleve(name, math, french, arabic, clas);
                Navigator.of(ctx).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (ctx) => HomePage()),
                        (route) => false);
              },
              child: Icon(Icons.done),
            ),
          );
        },
        listener: (ctx, state) {});
  }
}

class SelectMatiereForCollege extends StatefulWidget {
  SelectMatiereForCollege({Key? key, this.name, this.level, this.clas})
      : super(key: key);
  final name;
  final level;
  final clas;
  @override
  _SelectMatiereForCollegeState createState() =>
      _SelectMatiereForCollegeState(name, level, clas);
}

class _SelectMatiereForCollegeState extends State<SelectMatiereForPrimair> {
  final name;
  final level;
  final clas;
  bool math = false;

  bool french = false;

  bool svt = false;

  bool pc = false;

  _SelectMatiereForCollegeState(this.name, this.level, this.clas);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Text("Selecter Les matiere"),
                  CheckboxListTile(
                    value: math,
                    onChanged: (v) {
                      setState(
                            () {
                          math = v!;
                        },
                      );
                    },
                    title: Text('Math'),
                  ),
                  CheckboxListTile(
                    value: french,
                    onChanged: (v) {
                      setState(
                            () {
                          french = v!;
                        },
                      );
                    },
                    title: Text('francais'),
                  ),
                  CheckboxListTile(
                    value: svt,
                    onChanged: (v) {
                      setState(
                            () {
                          svt = v!;
                        },
                      );
                    },
                    title: Text('Svt'),
                  ),
                  CheckboxListTile(
                    value: pc,
                    onChanged: (v) {
                      setState(
                            () {
                          pc = v!;
                        },
                      );
                    },
                    title: Text('Physics'),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                cubit.addCollegeStudent(name, french, math, pc, svt, clas);
                Navigator.of(ctx).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (ctx) => HomePage()),
                        (route) => false);
              },
              child: Icon(Icons.done),
            ),
          );
        },
        listener: (ctx, state) {});
  }
}

class SelectMatiereForLycce extends StatefulWidget {
  SelectMatiereForLycce({Key? key, this.name, this.level, this.clas})
      : super(key: key);
  final name;
  final level;
  final clas;
  @override
  _SelectMatiereForLycceState createState() =>
      _SelectMatiereForLycceState(name, level, clas);
}

class _SelectMatiereForLycceState extends State<SelectMatiereForPrimair> {
  final name;
  final level;
  final clas;
  bool math = false;

  bool french = false;

  bool pc = false;

  bool svt = false;

  _SelectMatiereForLycceState(this.name, this.level, this.clas);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Text("Selecter Les matiere"),
                  CheckboxListTile(
                    value: math,
                    onChanged: (v) {
                      setState(
                            () {
                          math = v!;
                        },
                      );
                    },
                    title: Text('Math'),
                  ),
                  CheckboxListTile(
                    value: french,
                    onChanged: (v) {
                      setState(
                            () {
                          french = v!;
                        },
                      );
                    },
                    title: Text('francais'),
                  ),
                  CheckboxListTile(
                    value: svt,
                    onChanged: (v) {
                      setState(
                            () {
                          svt = v!;
                        },
                      );
                    },
                    title: Text('Svt'),
                  ),
                  CheckboxListTile(
                    value: pc,
                    onChanged: (v) {
                      setState(
                            () {
                          pc = v!;
                        },
                      );
                    },
                    title: Text('Physics'),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                cubit.addLyceeStudent(name, french, math, pc, svt, clas);
                Navigator.of(ctx).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (ctx) => HomePage()),
                        (route) => false);
              },
              child: Icon(Icons.done),
            ),
          );
        },
        listener: (ctx, state) {});
  }
}

class SelectMatiereForLangs extends StatefulWidget {
  SelectMatiereForLangs({Key? key, this.name, this.level, this.clas})
      : super(key: key);
  final name;
  final level;
  final clas;
  @override
  _SelectMatiereForLangsState createState() =>
      _SelectMatiereForLangsState(name, level, clas);
}

class _SelectMatiereForLangsState extends State<SelectMatiereForPrimair> {
  final name;
  final level;
  final clas;

  bool french = false;

  bool englih = false;

  _SelectMatiereForLangsState(this.name, this.level, this.clas);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Text("Selecter Les Langues"),
                  CheckboxListTile(
                    value: french,
                    onChanged: (v) {
                      setState(
                            () {
                          french = v!;
                        },
                      );
                    },
                    title: Text('francais'),
                  ),
                  CheckboxListTile(
                    value: englih,
                    onChanged: (v) {
                      setState(
                            () {
                          englih = v!;
                        },
                      );
                    },
                    title: Text('Englih'),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                cubit.addLangsState(name, level, englih, french);
                Navigator.of(ctx).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (ctx) => HomePage()),
                        (route) => false);
              },
              child: Icon(Icons.done),
            ),
          );
        },
        listener: (ctx, state) {});
  }
}
