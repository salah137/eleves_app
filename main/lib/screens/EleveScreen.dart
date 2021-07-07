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
  bool listEnglisBigs = false;
  bool listEnglisKids = false;
  bool listFrenchBigs = false;
  bool listFrenchKids = false;
  // primaire settings

  bool listPrimaireArabic1 = false;
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
                                    if (showCollege || showLycces){
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
                                        showPrimaireArabic = !showPrimaireArabic;
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["arabic"] == 1 &&
                                                    e["level"] == 1) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["arabic"] == 1 &&
                                                    e["level"] == 2) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["arabic"] == 1 &&
                                                    e["level"] == 3) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["arabic"] == 1 &&
                                                    e["level"] == 4) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["arabic"] == 1 &&
                                                    e["level"] == 3) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["arabic"] == 1 &&
                                                    e["level"] == 6) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
                                          ],
                                        ),
                                      ),
                                    buildButton("Francais", () {
                                      setState(() {
                                        showPrimaireFrench = !showPrimaireFrench;
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["french"] == 1 &&
                                                    e["level"] == 1) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["french"] == 1 &&
                                                    e["level"] == 2) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["french"] == 1 &&
                                                    e["level"] == 3) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["french"] == 1 &&
                                                    e["level"] == 4) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["french"] == 1 &&
                                                    e["level"] == 3) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["french"] == 1 &&
                                                    e["level"] == 6) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["math"] == 1 && e["level"] == 1) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["math"] == 1 && e["level"] == 2) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["math"] == 1 && e["level"] == 3) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["math"] == 1 && e["level"] == 4) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["math"] == 1 && e["level"] == 3) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
                                            buildButton(
                                              "6ere anne",
                                              () {
                                                setState(() {
                                                  showPrimaireMath6 =
                                                      !showPrimaireMath6;
                                                });
                                              },
                                              showPrimaireFrench6,
                                            ),
                                            if (showPrimaireFrench6)
                                              ...AppCubit.elevePrimaire.map((e) {
                                                if (e["math"] == 1 && e["level"] == 6) {
                                                  return buildItemForStudent(e["name"]);
                                                }
                                                return Container();
                                              }),
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
                            buildButton("Lycce", () {
                              setState(() {
                                showLycces = !showLycces;
                              });
                            }, showLycces),
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
