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
  // langs settings
  bool showLang = false;
  bool showLangEnglish = false;
  bool showLangFrench = false;
  bool showEnglisBigs = false;
  bool showEnglisKids = false;
  bool showFrenchBigs = false;
  bool showFrenchKids = false;
  // primaire settings
  bool showPrimaire = false;
  bool showPrimaireArabic = false;
  bool showPrimaireFrench = false;
  bool showPrimaireMath = false;
  bool showPrimaireArabic1 = false;
  bool showPrimaireArabic2 = false;
  bool showPrimaireArabic3 = false;
  bool showPrimaireArabic4 = false;
  bool showPrimaireArabic5 = false;
  bool showPrimaireArabic6 = false;
  bool showPrimaireFrench1 = false;
  bool showPrimaireFrench2 = false;
  bool showPrimaireFrench3 = false;
  bool showPrimaireFrench4 = false;
  bool showPrimaireFrench5 = false;
  bool showPrimaireFrench6 = false;
  bool showPrimaireMath1 = false;
  bool showPrimaireMath2 = false;
  bool showPrimaireMath3 = false;
  bool showPrimaireMath4 = false;
  bool showPrimaireMath5 = false;
  bool showPrimaireMath6 = false;
  // College settings
  bool showCollege = false;
  bool showCollegeFrench = false;
  bool showCollegeMath = false;
  bool showCollegeSvt = false;
  bool showCollegePc = false;
  bool showCollegeFrench1 = false;
  bool showCollegeFrench2 = false;
  bool showCollegeFrench3 = false;
  bool showCollegeMath1 = false;
  bool showCollegeMath2 = false;
  bool showCollegeMath3 = false;
  bool showCollegePc1 = false;
  bool showCollegePc2 = false;
  bool showCollegePc3 = false;
  bool showCollegeSvt1 = false;
  bool showCollegeSvt2 = false;
  bool showCollegeSvt3 = false;
  // LyccE
  bool showLycces = false;
  bool showLyccesFrench = false;
  bool showLyccesMath = false;
  bool showLyccesSvt = false;
  bool showLyccesPc = false;
  bool showLyccesFrench1 = false;
  bool showLyccesFrench2 = false;
  bool showLyccesFrench3 = false;
  bool showLyccesMath1 = false;
  bool showLyccesMath2 = false;
  bool showLyccesMath3 = false;
  bool showLyccesPc1 = false;
  bool showLyccesPc2 = false;
  bool showLyccesPc3 = false;
  bool showLyccesSvt1 = false;
  bool showLyccesSvt2 = false;
  bool showLyccesSvt3 = false;

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
                  if (showPrimaire)
                    ConditionalBuilder(
                      condition: AppCubit.elevePrimaire.length != 0,
                      builder: (ctx) => Column(children: [
                        buildButton("Arabic", () {
                          setState(() {
                            showPrimaireArabic = !showPrimaireArabic;
                          });
                        }, showPrimaireArabic),
                        buildButton("Francais", () {
                          setState(() {
                            showPrimaireFrench = !showPrimaireFrench;
                          });
                        }, showPrimaireFrench),
                        buildButton(
                          "Math",
                          () {
                            setState(() {
                              showPrimaireMath = !showPrimaireMath;
                            });
                          },
                          showPrimaireMath,
                        ),
                      ]),
                      fallback: (ctx) => Container(
                        child: Text("Il n'y a aucun eleve"),
                      ),
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
                  buildButton("Lycce", () {
                    setState(() {
                      showLycces = !showLycces;
                    });
                  }, showLycces),
                  -buildButton("langs", () {
                    setState(
                      () {
                        showLang = !showLang;
                      },
                    );
                  }, showLang)
                ],
              ),
            ),
          );
        },
        listener: (ctx, state) {});
  }
}
