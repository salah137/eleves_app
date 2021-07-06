import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/screens/AddOneScree.dart';
import 'package:main/shared/components/components.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';
import 'package:conditional_builder/conditional_builder.dart';

class ElevesScreen extends StatefulWidget {
  const ElevesScreen({Key? key}) : super(key: key);

  @override
  _ElevesScreenState createState() => _ElevesScreenState();
}

class _ElevesScreenState extends State<ElevesScreen> {

  bool showPrimaire = false;
  bool showCollege = false;
  bool showLycces = false;
  bool showLang = false;
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);

          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  buildButton(
                    "Primaire",
                    () {
                      setState(
                        () {
                          showPrimaire = !showPrimaire;
                        },
                      );
                    },
                    showPrimaire,
                  ),
                  buildButton(
                    "College",
                    () {
                      setState(() {
                        showCollege = !showCollege;
                      });
                    },
                    showCollege,
                  ),
                  buildButton("Lycce", (){
                    setState(() {
                      showLycces = !showLycces;
                    });
                  }, showLycces),
                  buildButton("langs", (){setState(() {
                    showLang = !showLang;
                  });}, showLang)
                ],
              ),
            ),
          );
        },
        listener: (ctx, state) {});
  }
}
