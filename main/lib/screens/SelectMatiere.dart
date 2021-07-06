import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/layouts/HomeLayout.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class SelectMatiereForPrimair extends StatefulWidget {
  SelectMatiereForPrimair({Key? key, this.name, this.level}) : super(key: key);
  final name;
  final level;

  @override
  _SelectMatiereForPrimairState createState() =>
      _SelectMatiereForPrimairState(name);
}

class _SelectMatiereForPrimairState extends State<SelectMatiereForPrimair> {
  final name;
  bool math = false;

  bool french = false;

  bool arabic = false;

  _SelectMatiereForPrimairState(this.name);

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
                cubit.addPriMairEleve(name, math, french, arabic);
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
