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
  GlobalKey<ScaffoldState> skey = GlobalKey<ScaffoldState>();

  // langs settings
  bool showLang = false;
  bool showLangEnglish = false;
  bool showLangFrench = false;
  bool showEnglisBigs = false;
  bool showEnglisKids = false;
  bool showFrenchBigs = false;
  bool showFrenchKids = false;

  // show Calculate
  bool showcal = false;
  bool showcal1 = false;
  bool showcal2 = false;

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
              key: skey,
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
                                                condition: AppCubit
                                                        .listPrimaireArabic1
                                                        .length !=
                                                    0,
                                                builder: (ctx) => Column(
                                                  children: [
                                                    ...AppCubit
                                                        .listPrimaireArabic1
                                                        .map(
                                                      (e) =>
                                                          buildItemForStudent(
                                                        e,
                                                        ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireArabic2
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireArabic2
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireArabic3
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireArabic3
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireArabic4
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireArabic4
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireArabic5
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireArabic5
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireArabic6
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireArabic6
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireFrench1
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireFrench1
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireFrench2
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireFrench2
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireFrench3
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireFrench3
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireFrench4
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireFrench4
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireFrench5
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireFrench5
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireFrench6
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireFrench6
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireMath1
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireMath1
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireMath2
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireMath2
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireMath1
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireMath1
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireMath4
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireMath4
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireMath5
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireMath5
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                                  condition: AppCubit
                                                          .listPrimaireMath6
                                                          .length !=
                                                      0,
                                                  builder: (ctx) => Column(
                                                        children: [
                                                          ...AppCubit
                                                              .listPrimaireMath6
                                                              .map(
                                                            (e) =>
                                                                buildItemForStudent(
                                                              e,
                                                              ctx,
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
                                        Column(children: [
                                          buildButton("1er ", () {
                                            setState(() {
                                              showCollegeFrench1 =
                                                  !showCollegeFrench1;
                                            });
                                          }, showCollegeFrench1),
                                          if (showCollegeFrench1)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .CollegeFrench1
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit.CollegeFrench1
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
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
                                                condition: AppCubit
                                                        .CollegeFrench2
                                                        .length ==
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit.CollegeFrench2
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
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
                                                condition: AppCubit
                                                        .CollegeFrench3
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit.CollegeFrench3
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
                                                    ],
                                                  );
                                                },
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "il n'y a aucun eleve"),
                                                    )),
                                        ]),
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
                                        Column(children: [
                                          buildButton("1er ", () {
                                            setState(() {
                                              showCollegeMath1 =
                                                  !showCollegeMath1;
                                            });
                                          }, showCollegeMath1),
                                          if (showCollegeMath1)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listCollegeMath1
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit
                                                          .listCollegeMath1
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
                                                    ],
                                                  );
                                                },
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "il n'y a aucun eleve"),
                                                    )),
                                          buildButton("2er ", () {
                                            setState(() {
                                              showCollegeMath2 =
                                                  !showCollegeMath2;
                                            });
                                          }, showCollegeMath2),
                                          if (showCollegeMath2)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listCollegeMath2
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit
                                                          .listCollegeMath2
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
                                                    ],
                                                  );
                                                },
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "il n'y a aucun eleve"),
                                                    )),
                                          buildButton("3er ", () {
                                            setState(() {
                                              showCollegeMath3 =
                                                  !showCollegeMath3;
                                            });
                                          }, showCollegeMath3),
                                          if (showCollegeMath3)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listCollegeMath3
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit
                                                          .listCollegeMath3
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
                                                    ],
                                                  );
                                                },
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "il n'y a aucun eleve"),
                                                    )),
                                        ]),
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
                                        Column(
                                          children: [
                                            buildButton("1er ", () {
                                              setState(() {
                                                showCollegePc1 =
                                                    !showCollegePc1;
                                              });
                                            }, showCollegePc1),
                                            if (showCollegePc1)
                                              ConditionalBuilder(
                                                  condition: AppCubit
                                                          .listCollegePc1
                                                          .length !=
                                                      0,
                                                  builder: (ctx) {
                                                    return Column(
                                                      children: [
                                                        ...AppCubit
                                                            .listCollegePc1
                                                            .map((v) =>
                                                                buildItemForStudent(
                                                                  v,
                                                                  ctx,
                                                                ))
                                                      ],
                                                    );
                                                  },
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "il n'y a aucun eleve"),
                                                      )),
                                            buildButton("2er ", () {
                                              setState(() {
                                                showCollegePc2 =
                                                    !showCollegePc2;
                                              });
                                            }, showCollegePc2),
                                            if (showCollegePc2)
                                              ConditionalBuilder(
                                                  condition: AppCubit
                                                          .listCollegePc2
                                                          .length !=
                                                      0,
                                                  builder: (ctx) {
                                                    return Column(
                                                      children: [
                                                        ...AppCubit
                                                            .listCollegePc2
                                                            .map((v) =>
                                                                buildItemForStudent(
                                                                  v,
                                                                  ctx,
                                                                ))
                                                      ],
                                                    );
                                                  },
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "il n'y a aucun eleve"),
                                                      )),
                                            buildButton("3er ", () {
                                              setState(() {
                                                showCollegePc3 =
                                                    !showCollegePc3;
                                              });
                                            }, showCollegePc3),
                                            if (showCollegePc3)
                                              ConditionalBuilder(
                                                  condition: AppCubit
                                                          .listCollegePc3
                                                          .length !=
                                                      0,
                                                  builder: (ctx) {
                                                    return Column(
                                                      children: [
                                                        ...AppCubit
                                                            .listCollegePc3
                                                            .map((v) =>
                                                                buildItemForStudent(
                                                                  v,
                                                                  ctx,
                                                                ))
                                                      ],
                                                    );
                                                  },
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "il n'y a aucun eleve"),
                                                      )), ],
                                        ),
                                            Column(
                                              children: [
                                                buildButton(
                                                  'Svt',
                                                  () {
                                                    setState(() {
                                                      showCollegeSvt =
                                                          !showCollegeSvt;
                                                    });
                                                  },
                                                  showCollegeSvt,
                                                ),
                                                if (showCollegeSvt)
                                                  Column(
                                                    children: [
                                                      buildButton("1er ", () {
                                                        setState(() {
                                                          showCollegeSvt1 =
                                                              !showCollegeSvt1;
                                                        });
                                                      }, showCollegeSvt1),
                                                      if (showCollegeSvt1)
                                                        ConditionalBuilder(
                                                            condition: AppCubit
                                                                    .listCollegeSvt1
                                                                    .length !=
                                                                0,
                                                            builder: (ctx) {
                                                              return Column(
                                                                children: [
                                                                  ...AppCubit
                                                                      .listCollegeSvt1
                                                                      .map((v) =>
                                                                          buildItemForStudent(
                                                                            v,
                                                                            ctx,
                                                                          ))
                                                                ],
                                                              );
                                                            },
                                                            fallback: (ctx) =>
                                                                Container(
                                                                  child: Text(
                                                                      "il n'y a aucun eleve"),
                                                                )),
                                                      buildButton("2er ", () {
                                                        setState(() {
                                                          showCollegeSvt2 =
                                                              !showCollegeSvt2;
                                                        });
                                                      }, showCollegeSvt2),
                                                      if (showCollegeSvt2)
                                                        ConditionalBuilder(
                                                            condition: AppCubit
                                                                    .listCollegeSvt2
                                                                    .length !=
                                                                0,
                                                            builder: (ctx) {
                                                              return Column(
                                                                children: [
                                                                  ...AppCubit
                                                                      .listCollegeSvt2
                                                                      .map((v) =>
                                                                          buildItemForStudent(
                                                                            v,
                                                                            ctx,
                                                                          ))
                                                                ],
                                                              );
                                                            },
                                                            fallback: (ctx) =>
                                                                Container(
                                                                  child: Text(
                                                                      "il n'y a aucun eleve"),
                                                                )),
                                                      buildButton("3er ", () {
                                                        setState(() {
                                                          showCollegeSvt3 =
                                                              !showCollegeSvt3;
                                                        });
                                                      }, showCollegeSvt3),
                                                      if (showCollegeSvt3)
                                                        ConditionalBuilder(
                                                          condition: AppCubit
                                                                  .listCollegeSvt3
                                                                  .length !=
                                                              0,
                                                          builder: (ctx) {
                                                            return Column(
                                                              children: [
                                                                ...AppCubit
                                                                    .listCollegeSvt3
                                                                    .map((v) =>
                                                                        buildItemForStudent(
                                                                          v,
                                                                          ctx,
                                                                        ))
                                                              ],
                                                            );
                                                          },
                                                          fallback: (ctx) =>
                                                              Container(
                                                            child: Text(
                                                                "il n'y a aucun eleve"),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                              ],
                                            ),
                                         
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
                            if (showLycces)
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
                                        Column(
                                          children: [
                                            buildButton("1er ", () {
                                              setState(() {
                                                showLyccesFrench1 =
                                                    !showLyccesFrench1;
                                              });
                                            }, showLyccesFrench1),
                                            if (showLyccesFrench1)
                                              ConditionalBuilder(
                                                  condition: AppCubit
                                                          .listLyccesFrench1
                                                          .length !=
                                                      0,
                                                  builder: (ctx) {
                                                    return Column(
                                                      children: [
                                                        ...AppCubit
                                                            .listLyccesFrench1
                                                            .map((v) =>
                                                                buildItemForStudent(
                                                                  v,
                                                                  ctx,
                                                                ))
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
                                                  condition: AppCubit
                                                          .listLyccesFrench2
                                                          .length ==
                                                      0,
                                                  builder: (ctx) {
                                                    return Column(
                                                      children: [
                                                        ...AppCubit
                                                            .listLyccesFrench2
                                                            .map((v) =>
                                                                buildItemForStudent(
                                                                  v,
                                                                  ctx,
                                                                ))
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
                                                  condition: AppCubit
                                                          .listLyccesFrench3
                                                          .length !=
                                                      0,
                                                  builder: (ctx) {
                                                    return Column(
                                                      children: [
                                                        ...AppCubit
                                                            .listLyccesFrench3
                                                            .map((v) =>
                                                                buildItemForStudent(
                                                                  v,
                                                                  ctx,
                                                                ))
                                                      ],
                                                    );
                                                  },
                                                  fallback: (ctx) => Container(
                                                        child: Text(
                                                            "il n'y a aucun eleve"),
                                                      )),
                                          ],
                                        ),
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
                                        Column(children: [
                                          buildButton("1er ", () {
                                            setState(() {
                                              showLyccesMath1 =
                                                  !showLyccesMath1;
                                            });
                                          }, showLyccesMath1),
                                          if (showCollegeMath1)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listLyccesMath1
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit
                                                          .listLyccesMath1
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
                                                    ],
                                                  );
                                                },
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "il n'y a aucun eleve"),
                                                    )),
                                          buildButton("2er ", () {
                                            setState(() {
                                              showLyccesMath2 =
                                                  !showLyccesMath2;
                                            });
                                          }, showLyccesMath2),
                                          if (showLyccesMath2)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listLyccesMath2
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit
                                                          .listLyccesMath2
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
                                                    ],
                                                  );
                                                },
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "il n'y a aucun eleve"),
                                                    )),
                                          buildButton("3er ", () {
                                            setState(() {
                                              showLyccesMath3 =
                                                  !showLyccesMath3;
                                            });
                                          }, showLyccesMath3),
                                          if (showLyccesMath3)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listLyccesMath3
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit
                                                          .listLyccesMath3
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
                                                    ],
                                                  );
                                                },
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "il n'y a aucun eleve"),
                                                    )),
                                        ]),
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
                                        Column(children: [
                                          buildButton("1er ", () {
                                            setState(() {
                                              showLyccesPc1 = !showLyccesPc1;
                                            });
                                          }, showLyccesPc1),
                                          if (showLyccesPc1)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listLyccesPc1.length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit.listLyccesPc1
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
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
                                                condition: AppCubit
                                                        .listLyccesPc2.length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit.listCollegePc2
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
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
                                              condition: AppCubit
                                                      .listLyccesPc3.length !=
                                                  0,
                                              builder: (ctx) {
                                                return Column(
                                                  children: [
                                                    ...AppCubit.listLyccesPc3
                                                        .map((v) =>
                                                            buildItemForStudent(
                                                              v,
                                                              ctx,
                                                            ))
                                                  ],
                                                );
                                              },
                                              fallback: (ctx) => Container(
                                                child: Text(
                                                    "il n'y a aucun eleve"),
                                              ),
                                            ),
                                        ]),
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
                                        Column(children: [
                                          buildButton("1er ", () {
                                            setState(() {
                                              showLyccesSvt1 = !showLyccesSvt1;
                                            });
                                          }, showLyccesSvt1),
                                          if (showLyccesSvt1)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listLyccesSvt1
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit.listLyccesSvt1
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
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
                                          if (showLyccesSvt2)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listLyccesSvt2
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit.listLyccesSvt2
                                                          .map((v) =>
                                                              buildItemForStudent(
                                                                v,
                                                                ctx,
                                                              ))
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
                                                condition: AppCubit
                                                        .listLyccesSvt3
                                                        .length !=
                                                    0,
                                                builder: (ctx) {
                                                  return Column(
                                                    children: [
                                                      ...AppCubit.listLyccesSvt3
                                                          .map(
                                                        (v) =>
                                                            buildItemForStudent(
                                                          v,
                                                          ctx,
                                                        ),
                                                      )
                                                    ],
                                                  );
                                                },
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "il n'y a aucun eleve"),
                                                    )),
                                        ])
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
                            }, showLang),
                            if (showLang)
                              ConditionalBuilder(
                                condition: AppCubit.elevelangs.length != 0,
                                builder: (ctx) => Column(
                                  children: [
                                    buildButton("Anglais", () {
                                      setState(() {
                                        showLangEnglish = !showLangEnglish;
                                      });
                                    }, showLangEnglish),
                                    if (showLangEnglish)
                                      Column(
                                        children: [
                                          buildButton("Pour les enfants", () {
                                            setState(() {
                                              showEnglisBigs = !showEnglisBigs;
                                            });
                                          }, showEnglisBigs),
                                          if (showEnglisBigs)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listEnglisBigs
                                                        .length !=
                                                    0,
                                                builder: (ctx) => Column(
                                                      children: [
                                                        ...AppCubit
                                                            .listEnglisBigs
                                                            .map(
                                                          (e) =>
                                                              buildItemForStudent(
                                                            e,
                                                            ctx,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "Il n' y a  pas aucun eleve"),
                                                    )),
                                          buildButton('Pour Les Adultes', () {
                                            setState(() {
                                              showEnglisKids = !showEnglisKids;
                                            });
                                          }, showEnglisKids),
                                          if (showEnglisKids)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listEnglisKids
                                                        .length !=
                                                    0,
                                                builder: (ctx) => Column(
                                                      children: [
                                                        ...AppCubit
                                                            .listEnglisKids
                                                            .map(
                                                          (e) =>
                                                              buildItemForStudent(
                                                            e,
                                                            ctx,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "Il n' y a  pas aucun eleve"),
                                                    )),
                                        ],
                                      ),
                                    buildButton("Francais", () {
                                      setState(() {
                                        showLangFrench = !showLangFrench;
                                      });
                                    }, showLangFrench),
                                    if (showLangFrench)
                                      Column(
                                        children: [
                                          buildButton("Pour les enfants", () {
                                            setState(() {
                                              showFrenchBigs = !showFrenchBigs;
                                            });
                                          }, showFrenchBigs),
                                          if (showFrenchBigs)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listFrenchBigs
                                                        .length !=
                                                    0,
                                                builder: (ctx) => Column(
                                                      children: [
                                                        ...AppCubit
                                                            .listFrenchBigs
                                                            .map(
                                                          (e) =>
                                                              buildItemForStudent(
                                                            e,
                                                            ctx,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "Il n' y a  pas aucun eleve"),
                                                    )),
                                          buildButton('Pour Les Adultes', () {
                                            setState(() {
                                              showFrenchKids = !showFrenchKids;
                                            });
                                          }, showFrenchKids),
                                          if (showFrenchKids)
                                            ConditionalBuilder(
                                                condition: AppCubit
                                                        .listFrenchKids
                                                        .length !=
                                                    0,
                                                builder: (ctx) => Column(
                                                      children: [
                                                        ...AppCubit
                                                            .listFrenchKids
                                                            .map(
                                                          (e) =>
                                                              buildItemForStudent(
                                                            e,
                                                            ctx,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                fallback: (ctx) => Container(
                                                      child: Text(
                                                          "Il n' y a  pas aucun eleve"),
                                                    )),
                                        ],
                                      ),
                                  ],
                                ),
                                fallback: (ctx) => Container(
                                  child: Text("Il n' y a aucun eleve"),
                                ),
                              ),
                            buildButton("calcule mental", () {
                              setState(
                                () {
                                  showcal = !showcal;
                                },
                              );
                            }, showcal),
                            if (showcal)
                              ConditionalBuilder(
                                condition: AppCubit.elevesCalcul.length != 0,
                                builder: (ctx) => Column(
                                  children: [
                                    buildButton("Pour les enfants", () {
                                      setState(() {
                                        showcal1 = !showcal1;
                                      });
                                    }, showcal1),
                                    if (showcal1)
                                      ConditionalBuilder(
                                          condition: AppCubit
                                                  .listCalulateBigs.length !=
                                              0,
                                          builder: (ctx) => Column(
                                                children: [
                                                  ...AppCubit.listCalulateBigs
                                                      .map(
                                                    (e) => buildItemForStudent(
                                                      e,
                                                      ctx,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                          fallback: (ctx) => Container(
                                                child: Text(
                                                    "Il n' y a  pas aucun eleve"),
                                              )),
                                    buildButton('Pour Les Adultes', () {
                                      setState(() {
                                        showcal2 = !showcal2;
                                      });
                                    }, showcal2),
                                    if (showcal2)
                                      ConditionalBuilder(
                                          condition: AppCubit
                                                  .listCalulateKids.length !=
                                              0,
                                          builder: (ctx) => Column(
                                                children: [
                                                  ...AppCubit.listCalulateKids
                                                      .map(
                                                    (e) => buildItemForStudent(
                                                      e,
                                                      ctx,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                          fallback: (ctx) => Container(
                                                child: Text(
                                                    "Il n' y a  pas aucun eleve"),
                                              )),
                                  ],
                                ),
                                fallback: (ctx) => Container(
                                  child: Text("Il n' y a aucun eleve"),
                                ),
                              )
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
