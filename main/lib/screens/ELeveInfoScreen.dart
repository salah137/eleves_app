import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/screens/AddMatiere.dart';
import 'package:main/shared/components/components.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class EleveInfo extends StatefulWidget {
  Map element;
  EleveInfo(this.element);

  @override
  _EleveInfoState createState() => _EleveInfoState(element);
}

class _EleveInfoState extends State<EleveInfo> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Map element;
  _EleveInfoState(this.element);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          bool showCalcullate =
              AppCubit.elevesCalculNames.contains(widget.element["name"]);
          bool showPrimair = AppCubit.elevePrimaire.contains(widget.element);
         void buildBottomSheet(String matiere) {
          setState(() {
              if (matiere == "CM") {
              cubit.deleteData(element);
            } else {
              element["$matiere"] = 0;
              cubit.updateData(element);
            }
      });
          }

          return Scaffold(
          key: scaffoldKey,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      width: double.infinity,
                      height: 400,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 80,
                            child: Text(
                              '${element["name"][0]}',
                              style: TextStyle(fontSize: 50),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            widget.element["name"],
                            style: TextStyle(fontSize: 50),
                          )
                        ],
                      ),
                    ),
                    if (AppCubit.elevePrimaire.contains(widget.element))
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            if (element["math"] == 1)
                              buildMatiereItem(
                                  text: "Math",
                                  ontap: () {
                                    scaffoldKey.currentState!
                                        .showBottomSheet((ctx) => Container(
                                              child: MaterialButton(
                                                onPressed: () {
                                                  buildBottomSheet("math");
                                                },
                                                child: Text(
                                                    "Suprimer Cette Matiere Pour ${element["name"]}"),
                                              ),
                                            ));
                                  }),
                            if (element["french"] == 1)
                              buildMatiereItem(
                                  text: "francais",
                                  ontap: () {
                                    scaffoldKey.currentState!
                                        .showBottomSheet((ctx) => Container(
                                              child: MaterialButton(
                                                onPressed: () {
                                                  buildBottomSheet("french");
                                                },
                                                child: Text(
                                                    "Suprimer Cette Matiere Pour ${element["name"]}"),
                                              ),
                                            ));
                                  }),
                            if (element["arabic"] == 1)
                              buildMatiereItem(
                                  text: "Arabic",
                                  ontap: () {
                                    scaffoldKey.currentState!
                                        .showBottomSheet((ctx) => Container(
                                              child: MaterialButton(
                                                onPressed: () {
                                                  buildBottomSheet("arabic");
                                                },
                                                child: Text(
                                                    "Suprimer Cette Matiere Pour ${element["name"]}"),
                                              ),
                                            ));
                                  }),
                          ],
                        ),
                      ),
                    if (AppCubit.elevecollegeNames.contains(element["name"]))
                      Column(
                        children: [
                          if (element["math"] == 1)
                            buildMatiereItem(
                              text: "Math",
                              ontap: () {
                                scaffoldKey.currentState!.showBottomSheet(
                                  (ctx) => Container(
                                    child: MaterialButton(
                                      onPressed: () {
                                        buildBottomSheet("math");
                                      },
                                      child: Text(
                                          "Suprimer Cette Matiere Pour ${element["name"]}"),
                                    ),
                                  ),
                                );
                              },
                            ),
                          if (element["french"] == 1)
                            buildMatiereItem(
                                text: "francais",
                                ontap: () {
                                  scaffoldKey.currentState!
                                      .showBottomSheet((ctx) => Container(
                                            child: MaterialButton(
                                              onPressed: () {
                                                buildBottomSheet("french");
                                              },
                                              child: Text(
                                                  "Suprimer Cette Matiere Pour ${element["name"]}"),
                                            ),
                                          ));
                                }),
                          if (element['physic'] == 1)
                            buildMatiereItem(
                                text: "physic",
                                ontap: () {
                                  scaffoldKey.currentState!.showBottomSheet(
                                    (ctx) => Container(
                                      child: MaterialButton(
                                        onPressed: () {
                                          buildBottomSheet("physic");
                                        },
                                        child: Text(
                                            "Suprimer Cette Matiere Pour ${element["name"]}"),
                                      ),
                                    ),
                                  );
                                }),
                          if (element["svt"] == 1)
                            buildMatiereItem(
                                text: 'SVT',
                                ontap: () {
                                  scaffoldKey.currentState!
                                      .showBottomSheet((ctx) => Container(
                                            child: MaterialButton(
                                              onPressed: () {
                                                buildBottomSheet("svt");
                                              },
                                              child: Text(
                                                  "Suprimer Cette Matiere Pour ${element["name"]}"),
                                            ),
                                          ));
                                })
                        ],
                      ),
                    if (AppCubit.elevelyceesNames.contains(element["name"]))
                      Column(
                        children: [
                          if (element["math"] == 1)
                            buildMatiereItem(
                                text: "Math",
                                ontap: () {
                                  scaffoldKey.currentState!
                                      .showBottomSheet((ctx) => Container(
                                            child: MaterialButton(
                                              onPressed: () {
                                                buildBottomSheet("math");
                                              },
                                              child: Text(
                                                  "Suprimer Cette Matiere Pour ${element["name"]}"),
                                            ),
                                          ));
                                }),
                          if (element["french"] == 1)
                            buildMatiereItem(
                                text: "francais",
                                ontap: () {
                                  scaffoldKey.currentState!
                                      .showBottomSheet((ctx) => Container(
                                            child: MaterialButton(
                                              onPressed: () {
                                                buildBottomSheet("french");
                                              },
                                              child: Text(
                                                  "Suprimer Cette Matiere Pour ${element["name"]}"),
                                            ),
                                          ));
                                }),
                          if (element['physic'] == 1)
                            buildMatiereItem(
                                text: "physic",
                                ontap: () {
                                  scaffoldKey.currentState!
                                      .showBottomSheet((ctx) => Container(
                                            child: MaterialButton(
                                              onPressed: () {
                                                buildBottomSheet("physic");
                                              },
                                              child: Text(
                                                  "Suprimer Cette Matiere Pour ${element["name"]}"),
                                            ),
                                          ));
                                }),
                          if (element["svt"] == 1)
                            buildMatiereItem(
                                text: 'SVT',
                                ontap: () {
                                  scaffoldKey.currentState!
                                      .showBottomSheet((ctx) => Container(
                                            child: MaterialButton(
                                              onPressed: () {
                                                buildBottomSheet("svt");
                                              },
                                              child: Text(
                                                  "Suprimer Cette Matiere Pour ${element["name"]}"),
                                            ),
                                          ));
                                })
                        ],
                      ),
                    if (AppCubit.elevelangsNames.contains(element["name"]))
                      Column(
                        children: [
                          if (element["french"] == 1 ||
                              AppCubit.elevelangs[AppCubit.elevelangsNames
                                      .indexOf(element["name"])]["french"] ==
                                  1)
                            buildMatiereItem(
                                text: "french",
                                ontap: () {
                                  scaffoldKey.currentState!
                                      .showBottomSheet((ctx) => Container(
                                            child: MaterialButton(
                                              onPressed: () {
                                                buildBottomSheet("french");
                                              },
                                              child: Text(
                                                  "Suprimer Cette Matiere Pour ${element["name"]}"),
                                            ),
                                          ));
                                }),
                          if (element["english"] == 1 ||
                              AppCubit.elevelangs[AppCubit.elevelangsNames
                                      .indexOf(element["name"])]["english"] ==
                                  1)
                            buildMatiereItem(
                                text: "english",
                                ontap: () {
                                  scaffoldKey.currentState!
                                      .showBottomSheet((ctx) => Container(
                                            child: MaterialButton(
                                              onPressed: () {
                                                buildBottomSheet("english");
                                              },
                                              child: Text(
                                                  "Suprimer Cette Matiere Pour ${element["name"]}"),
                                            ),
                                          ));
                                }),
                        ],
                      ),
                    if (AppCubit.elevesCalculNames.contains(element["name"]))
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          buildMatiereItem(
                              text: "Calcule Mentale",
                              ontap: () {
                                scaffoldKey.currentState!
                                    .showBottomSheet((ctx) => Container(
                                          child: MaterialButton(
                                            onPressed: () {
                                              buildBottomSheet("CM");
                                            },
                                            child: Text(
                                                "Suprimer Cette Matiere Pour ${element["name"]}"),
                                          ),
                                        ));
                              }),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              icon: Icon(Icons.add),
              label: Text('Ajouter Une Matiere'),
              onPressed: () {
                Navigator.of(ctx).push(
                  MaterialPageRoute(
                    builder: (ctx) => AddMatiere(
                      model: element,
                    ),
                  ),
                );
              },
            ),
          );
        },
        listener: (ctx, state) {});
  }
}
