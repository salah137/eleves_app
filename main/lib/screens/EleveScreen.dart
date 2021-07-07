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
          List listEnglisBigs = AppCubit.elevelangs
              .where((element) =>
                  element["english"] == 1 && element["category"] == 2)
              .toList();
          List listEnglisKids = AppCubit.elevelangs
              .where((element) =>
                  element["english"] == 1 && element["category"] == 1)
              .toList();
          List listFrenchBigs = AppCubit.elevelangs
              .where((element) =>
                  element["french"] == 1 && element["category"] == 2)
              .toList();
          List listFrenchKids = AppCubit.elevelangs
              .where((element) =>
                  element["french"] == 1 && element["category"] == 1)
              .toList();

          List listPrimaireArabic1 = AppCubit.elevePrimaire
              .where(
                  (element) => element["arabic"] == 1 && element['level'] == 1)
              .toList();
          List listPrimaireArabic2 = AppCubit.elevePrimaire
              .where(
                  (element) => element["arabic"] == 1 && element['level'] == 2)
              .toList();
          List listPrimaireArabic3 = AppCubit.elevePrimaire
              .where(
                  (element) => element["arabic"] == 1 && element['level'] == 3)
              .toList();
          List listPrimaireArabic4 = AppCubit.elevePrimaire
              .where(
                  (element) => element["arabic"] == 1 && element['level'] == 4)
              .toList();
          List listPrimaireArabic5 = AppCubit.elevePrimaire
              .where(
                  (element) => element["arabic"] == 1 && element['level'] == 5)
              .toList();
          ;
          List listPrimaireArabic6 = AppCubit.elevePrimaire
              .where(
                  (element) => element["arabic"] == 1 && element['level'] == 6)
              .toList();
          List listPrimaireFrench1 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element['level'] == 1)
              .toList();
          List listPrimaireFrench2 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element['level'] == 2)
              .toList();
          List listPrimaireFrench3 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element['level'] == 3)
              .toList();
          List listPrimaireFrench4 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element['level'] == 4)
              .toList();
          List listPrimaireFrench5 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element['level'] == 5)
              .toList();
          List listPrimaireFrench6 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element['level'] == 6)
              .toList();
          List listPrimaireMath1 = AppCubit.elevePrimaire
              .where((element) => element["math"] == 1 && element['level'] == 1)
              .toList();
          List listPrimaireMath2 = AppCubit.elevePrimaire
              .where((element) => element["math"] == 1 && element['level'] == 2)
              .toList();
          List listPrimaireMath3 = AppCubit.elevePrimaire
              .where((element) => element["math"] == 1 && element['level'] == 3)
              .toList();
          List listPrimaireMath4 = AppCubit.elevePrimaire
              .where((element) => element["math"] == 1 && element['level'] == 4)
              .toList();
          List listPrimaireMath5 = AppCubit.elevePrimaire
              .where((element) => element["math"] == 1 && element['level'] == 5)
              .toList();
          List listPrimaireMath6 = AppCubit.elevePrimaire
              .where((element) => element["math"] == 1 && element['level'] == 6)
              .toList();

          List CollegeFrench1 = AppCubit.elevecollege
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List CollegeFrench2 = AppCubit.elevecollege
              .where(
                  (element) => element["french"] == 1 && element["level"] == 2)
              .toList();
          List CollegeFrench3 = AppCubit.elevecollege
              .where(
                  (element) => element["french"] == 1 && element["level"] == 3)
              .toList();
          List listCollegeMath1 = AppCubit.elevecollege
              .where((element) => element["math"] == 1 && element["level"] == 1)
              .toList();
          List listCollegeMath2 = AppCubit.elevecollege
              .where((element) => element["math"] == 1 && element["level"] == 2)
              .toList();
          List listCollegeMath3 = AppCubit.elevecollege
              .where((element) => element["math"] == 1 && element["level"] == 3)
              .toList();
          List listCollegePc1 = AppCubit.elevecollege
              .where(
                  (element) => element["physic"] == 1 && element["level"] == 1)
              .toList();
          List listCollegePc2 = AppCubit.elevecollege
              .where(
                  (element) => element["physic"] == 1 && element["level"] == 2)
              .toList();
          List listCollegePc3 = AppCubit.elevecollege
              .where(
                  (element) => element["physic"] == 1 && element["level"] == 3)
              .toList();
          List listCollegeSvt1 = AppCubit.elevecollege
              .where((element) => element["svt"] == 1 && element["level"] == 1)
              .toList();
          List listCollegeSvt2 = AppCubit.elevecollege
              .where((element) => element["svt"] == 1 && element["level"] == 2)
              .toList();
          List listCollegeSvt3 = AppCubit.elevecollege
              .where((element) => element["svt"] == 1 && element["level"] == 3)
              .toList();
          // LyccE
          List listLyccesFrench1 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesFrench2 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesFrench3 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesMath1 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesMath2 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesMath3 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesPc1 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesPc2 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesPc3 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesSvt1 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesSvt2 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();
          List listLyccesSvt3 = AppCubit.elevePrimaire
              .where(
                  (element) => element["french"] == 1 && element["level"] == 1)
              .toList();

          return Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildButton(
                              "Primaire",
                              () {
                                setState(
                                  () {
                                    if (showCollege || showLycces) {
                                      showCollege = false;
                                      showLycces = false;
                                    }
                                    showPrimaire = !showPrimaire;
                                  },
                                );
                              },
                              showPrimaire,
                            ),
                            if (showPrimaire)
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ConditionalBuilder(
                                  condition: AppCubit.elevePrimaire.length != 0,
                                  builder: (ctx) => Column(children: [
                                    buildButton("Arabic", () {
                                      setState(() {
                                        showPrimaireArabic =
                                            !showPrimaireArabic;
                                      });
                                    }, showPrimaireArabic),
                                    if (showPrimaireArabic)
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            buildButton(
                                              "1ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireArabic1 =
                                                      !showPrimaireArabic1;
                                                });
                                              },
                                              showPrimaireArabic1,
                                            ),
                                            if (showPrimaireArabic1)
                                              ConditionalBuilder(
                                                condition:
                                                    listPrimaireArabic1 != 0,
                                                builder: (ctx) => Column(
                                                  children: [
                                                    ...listPrimaireArabic1.map(
                                                      (e) =>
                                                          buildItemForStudent(
                                                        e["name"],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                fallback: (ctx) => Container(
                                                  child: Text(
                                                      "Il n'y a aucun eleve"),
                                                ),
                                              ),
                                            buildButton(
                                              "2ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireArabic2 =
                                                      !showPrimaireArabic2;
                                                });
                                              },
                                              showPrimaireArabic2,
                                            ),
                                            if (showPrimaireArabic2)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireArabic2 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireArabic2
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "3ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireArabic3 =
                                                      !showPrimaireArabic3;
                                                });
                                              },
                                              showPrimaireArabic3,
                                            ),
                                            if (showPrimaireArabic3)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireArabic3 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireArabic3
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "4ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireArabic4 =
                                                      !showPrimaireArabic4;
                                                });
                                              },
                                              showPrimaireArabic4,
                                            ),
                                            if (showPrimaireArabic4)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireArabic4 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireArabic4
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "5ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireArabic5 =
                                                      !showPrimaireArabic5;
                                                });
                                              },
                                              showPrimaireArabic5,
                                            ),
                                            if (showPrimaireArabic5)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireArabic5 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireArabic5
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "6ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireArabic6 =
                                                      !showPrimaireArabic6;
                                                });
                                              },
                                              showPrimaireArabic6,
                                            ),
                                            if (showPrimaireArabic6)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireArabic6 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireArabic6
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                          ],
                                        ),
                                      ),
                                    buildButton("Francais", () {
                                      setState(() {
                                        showPrimaireFrench =
                                            !showPrimaireFrench;
                                      });
                                    }, showPrimaireFrench),
                                    if (showPrimaireFrench)
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            buildButton(
                                              "1ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireFrench1 =
                                                      !showPrimaireFrench1;
                                                });
                                              },
                                              showPrimaireFrench1,
                                            ),
                                            if (showPrimaireFrench1)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireFrench1 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireFrench1
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "2ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireFrench2 =
                                                      !showPrimaireFrench2;
                                                });
                                              },
                                              showPrimaireFrench2,
                                            ),
                                            if (showPrimaireFrench2)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireFrench2 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireFrench2
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "3ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireFrench3 =
                                                      !showPrimaireFrench3;
                                                });
                                              },
                                              showPrimaireFrench3,
                                            ),
                                            if (showPrimaireFrench3)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireFrench3 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireFrench3
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "4ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireFrench4 =
                                                      !showPrimaireFrench4;
                                                });
                                              },
                                              showPrimaireFrench4,
                                            ),
                                            if (showPrimaireArabic4)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireFrench4 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireFrench4
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "5ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireFrench5 =
                                                      !showPrimaireFrench5;
                                                });
                                              },
                                              showPrimaireFrench5,
                                            ),
                                            if (showPrimaireFrench5)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireFrench5 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireFrench5
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "6ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireFrench6 =
                                                      !showPrimaireFrench6;
                                                });
                                              },
                                              showPrimaireFrench6,
                                            ),
                                            if (showPrimaireFrench6)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireFrench6 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireFrench6
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                          ],
                                        ),
                                      ),
                                    buildButton(
                                      "Math",
                                      () {
                                        setState(() {
                                          showPrimaireMath = !showPrimaireMath;
                                        });
                                      },
                                      showPrimaireMath,
                                    ),
                                    if (showPrimaireMath)
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            buildButton(
                                              "1ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireMath1 =
                                                      !showPrimaireMath1;
                                                });
                                              },
                                              showPrimaireMath1,
                                            ),
                                            if (showPrimaireMath1)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireMath1 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireMath1
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "2ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireMath2 =
                                                      !showPrimaireMath2;
                                                });
                                              },
                                              showPrimaireMath2,
                                            ),
                                            if (showPrimaireMath2)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireMath2 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireMath2
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "3ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireMath3 =
                                                      !showPrimaireMath3;
                                                });
                                              },
                                              showPrimaireMath3,
                                            ),
                                            if (showPrimaireMath3)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireMath1 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireMath1
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "4ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireMath4 =
                                                      !showPrimaireMath4;
                                                });
                                              },
                                              showPrimaireMath4,
                                            ),
                                            if (showPrimaireMath4)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireMath4 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireMath4
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "5ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireMath5 =
                                                      !showPrimaireMath5;
                                                });
                                              },
                                              showPrimaireMath5,
                                            ),
                                            if (showPrimaireMath5)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireMath5 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireMath5
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                            buildButton(
                                              "6ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireMath6 =
                                                      !showPrimaireMath6;
                                                });
                                              },
                                              showPrimaireMath6,
                                            ),
                                            if (showPrimaireMath6)
                                              ConditionalBuilder(
                                                  condition:
                                                      listPrimaireMath6 != 0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...listPrimaireMath6
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e["name"],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "Il n'y a aucun eleve"),
                                                      )),
                                          ],
                                        ),
                                      ),
                                  ]),
                                  fallback: (ctx) => Container(
                                    child: Text("Il n'y a aucun eleve"),
                                  ),
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
                            if (showCollege)
                              ConditionalBuilder(
                                condition: AppCubit.elevecollege.length != 0,
                                builder: (ctx) {
                                  return Column(
                                    children: [
                                      buildButton(
                                        'francais',
                                        () {
                                          setState(() {
                                            showCollegeFrench =
                                                !showCollegeFrench;
                                          });
                                        },
                                        showCollegeFrench,
                                      ),
                                      if (showCollegeFrench)
                                        buildButton("1er ", () {
                                          setState(() {
                                            showCollegeFrench1 =
                                                !showCollegeFrench1;
                                          });
                                        }, showCollegeFrench1),
                                      if (showCollegeFrench1)
                                        ConditionalBuilder(
                                            condition:
                                                CollegeFrench1.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...CollegeFrench1.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton("2er ", () {
                                        setState(() {
                                          showCollegeFrench2 =
                                              !showCollegeFrench2;
                                        });
                                      }, showCollegeFrench2),
                                      if (showCollegeFrench2)
                                        ConditionalBuilder(
                                            condition:
                                                CollegeFrench2.length == 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...CollegeFrench2.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton("3er ", () {
                                        setState(() {
                                          showCollegeFrench3 =
                                              !showCollegeFrench3;
                                        });
                                      }, showCollegeFrench3),
                                      if (showCollegeFrench3)
                                        ConditionalBuilder(
                                            condition:
                                                CollegeFrench3.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...CollegeFrench3.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton(
                                        'math',
                                        () {
                                          setState(() {
                                            showCollegeMath = !showCollegeMath;
                                          });
                                        },
                                        showCollegeMath,
                                      ),
                                      if (showCollegeMath)
                                        buildButton("1er ", () {
                                          setState(() {
                                            showCollegeMath1 =
                                                !showCollegeMath1;
                                          });
                                        }, showCollegeMath1),
                                      if (showCollegeMath1)
                                        ConditionalBuilder(
                                            condition:
                                                listCollegeMath1.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listCollegeMath1.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton("2er ", () {
                                        setState(() {
                                          showCollegeMath2 = !showCollegeMath2;
                                        });
                                      }, showCollegeMath2),
                                      if (showCollegeMath2)
                                        ConditionalBuilder(
                                            condition:
                                                listCollegeMath2.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listCollegeMath2.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton("3er ", () {
                                        setState(() {
                                          showCollegeMath3 = !showCollegeMath3;
                                        });
                                      }, showCollegeMath3),
                                      if (showCollegeMath3)
                                        ConditionalBuilder(
                                            condition:
                                                listCollegeMath3.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listCollegeMath3.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton(
                                        'PC',
                                        () {
                                          setState(() {
                                            showCollegePc = !showCollegePc;
                                          });
                                        },
                                        showCollegePc,
                                      ),
                                      if (showCollegePc)
                                        buildButton("1er ", () {
                                          setState(() {
                                            showCollegePc1 =
                                                !showCollegePc1;
                                          });
                                        }, showCollegePc1),
                                      if (showCollegePc1)
                                        ConditionalBuilder(
                                            condition:
                                                listCollegePc1.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listCollegePc1.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton("2er ", () {
                                        setState(() {
                                          showCollegePc2 = !showCollegePc2;
                                        });
                                      }, showCollegePc2),
                                      if (showCollegePc2)
                                        ConditionalBuilder(
                                            condition:
                                                listCollegePc2.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listCollegePc2.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton("3er ", () {
                                        setState(() {
                                          showCollegePc3 = !showCollegePc3;
                                        });
                                      }, showCollegePc3),
                                      if (showCollegePc3)
                                        ConditionalBuilder(
                                            condition:
                                                listCollegePc3.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listCollegePc3.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton(
                                        'Svt',
                                        () {
                                          setState(() {
                                            showCollegeSvt = !showCollegeSvt;
                                          });
                                        },
                                        showCollegeSvt,
                                      ),
                                      if (showCollegeSvt)
                                        buildButton("1er ", () {
                                          setState(() {
                                            showCollegeSvt1 =
                                                !showCollegeSvt1;
                                          });
                                        }, showCollegeSvt1),
                                      if (showCollegeSvt2)
                                        ConditionalBuilder(
                                            condition:
                                                listCollegeSvt1.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listCollegeSvt1.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton("2er ", () {
                                        setState(() {
                                          showCollegeSvt2 = !showCollegeSvt2;
                                        });
                                      }, showCollegeSvt2),
                                      if (showCollegeSvt1)
                                        ConditionalBuilder(
                                            condition:
                                                listCollegeSvt2.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listCollegeSvt2.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                      buildButton("3er ", () {
                                        setState(() {
                                          showCollegeSvt3 = !showCollegeSvt3;
                                        });
                                      }, showCollegeSvt3),
                                      if (showCollegeSvt3)
                                        ConditionalBuilder(
                                            condition:
                                                listCollegeSvt3.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listCollegeSvt3.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                                  child: Text(
                                                      "il n'y a aucun eleve"),
                                                )),
                                    ],
                                  );
                                },
                                fallback: (ctx) => Container(
                                  child: Text("il n'y a aucun eleve"),
                                ),
                              ),
                            buildButton("Lycce", () {
                              setState(() {
                                showLycces = !showLycces;
                              });
                            }, showLycces),
                            if(showLycces)

                              ConditionalBuilder(
                                condition: AppCubit.elevelycees.length != 0,
                                builder: (ctx) {
                                  return Column(
                                    children: [
                                      buildButton(
                                        'francais',
                                            () {
                                          setState(() {
                                            showLyccesFrench =
                                            !showLyccesFrench;
                                          });
                                        },
                                        showLyccesFrench,
                                      ),
                                      if (showLyccesFrench)
                                        buildButton("1er ", () {
                                          setState(() {
                                            showLyccesFrench1 =
                                            !showLyccesFrench1;
                                          });
                                        }, showLyccesFrench1),
                                      if (showLyccesFrench1)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesFrench1.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesFrench1.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton("2er ", () {
                                        setState(() {
                                          showLyccesFrench2 =
                                          !showLyccesFrench2;
                                        });
                                      }, showLyccesFrench2),
                                      if (showLyccesFrench2)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesFrench2.length == 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesFrench2.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton("3er ", () {
                                        setState(() {
                                          showLyccesFrench3 =
                                          !showLyccesFrench3;
                                        });
                                      }, showLyccesFrench3),
                                      if (showLyccesFrench3)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesFrench3.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesFrench3.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton(
                                        'math',
                                            () {
                                          setState(() {
                                            showLyccesMath = !showLyccesMath;
                                          });
                                        },
                                        showLyccesMath,
                                      ),
                                      if (showLyccesMath)
                                        buildButton("1er ", () {
                                          setState(() {
                                            showLyccesMath1 =
                                            !showLyccesMath1;
                                          });
                                        }, showLyccesMath1),
                                      if (showCollegeMath1)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesMath1.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesMath1.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton("2er ", () {
                                        setState(() {
                                          showLyccesMath2 = !showLyccesMath2;
                                        });
                                      }, showLyccesMath2),
                                      if (showLyccesMath2)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesMath2.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesMath2.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton("3er ", () {
                                        setState(() {
                                          showLyccesMath3 = !showLyccesMath3;
                                        });
                                      }, showLyccesMath3),
                                      if (showLyccesMath3)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesMath3.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesMath3.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton(
                                        'PC',
                                            () {
                                          setState(() {
                                            showLyccesPc = !showLyccesPc;
                                          });
                                        },
                                        showLyccesPc,
                                      ),
                                      if (showLyccesPc)
                                        buildButton("1er ", () {
                                          setState(() {
                                            showLyccesPc1 =
                                            !showLyccesPc1;
                                          });
                                        }, showLyccesPc1),
                                      if (showLyccesPc1)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesPc1.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesPc1.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton("2er ", () {
                                        setState(() {
                                          showLyccesPc2 = !showLyccesPc2;
                                        });
                                      }, showLyccesPc2),
                                      if (showLyccesPc2)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesPc2.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listCollegePc2.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton("3er ", () {
                                        setState(() {
                                          showLyccesPc3 = !showLyccesPc3;
                                        });
                                      }, showLyccesPc3),
                                      if (showLyccesPc3)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesPc3.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesPc3.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton(
                                        'Svt',
                                            () {
                                          setState(() {
                                            showLyccesSvt = !showLyccesSvt;
                                          });
                                        },
                                        showLyccesSvt,
                                      ),
                                      if (showLyccesSvt)
                                        buildButton("1er ", () {
                                          setState(() {
                                            showLyccesSvt1 =
                                            !showLyccesSvt1;
                                          });
                                        }, showLyccesSvt1),
                                      if (showLyccesSvt2)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesSvt1.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesSvt1.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton("2er ", () {
                                        setState(() {
                                          showLyccesSvt2 = !showLyccesSvt2;
                                        });
                                      }, showLyccesSvt2),
                                      if (showLyccesSvt1)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesSvt2.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesSvt2.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]))
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                      buildButton("3er ", () {
                                        setState(() {
                                          showLyccesSvt3 = !showLyccesSvt3;
                                        });
                                      }, showLyccesSvt3),
                                      if (showLyccesSvt3)
                                        ConditionalBuilder(
                                            condition:
                                            listLyccesSvt3.length != 0,
                                            builder: (ctx) {
                                              return Column(
                                                children: [
                                                  ...listLyccesSvt3.map((v) =>
                                                      buildItemForStudent(
                                                          v["name"]),)
                                                ],
                                              );
                                            },
                                            fallback: (ctx) => Container(
                                              child: Text(
                                                  "il n'y a aucun eleve"),
                                            )),
                                    ],
                                  );
                                },
                                fallback: (ctx) => Container(
                                  child: Text("il n'y a aucun eleve"),
                                ),
                              ),
                            buildButton("langs", () {
                              setState(
                                () {
                                  showLang = !showLang;
                                },
                              );
                            }, showLang)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(ctx).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return AddEleve();
                      },
                    ),
                  );
                },
                child: Icon(Icons.add),
              ));
        },
        listener: (ctx, state) {});
  }
}
