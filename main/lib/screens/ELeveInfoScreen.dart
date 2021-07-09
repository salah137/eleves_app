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
  final element;
  _EleveInfoState(this.element);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          bool showCalcullate =
              AppCubit.elevesCalculNames.contains(widget.element["name"]);
          bool showPrimair = AppCubit.elevePrimaire.contains(widget.element);
          buildBottomSheet(String matiere) {
          showModalBottomSheet(context: ctx, builder: (ctx)=> Container(
              child: MaterialButton(
              onPressed: () {
            if(matiere ==  "CM"){
              AppCubit().deleteData(element);
            }
            else {
              widget.element["$matiere"] = 0;
              AppCubit().updateData(widget.element);
            }
          },
            child: Text("Suprimer Cette Matiere Pour ${widget.element["name"]}"),
            ),
            )
          );
          }
          return Scaffold(
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
                              '${widget.element["name"][0]}',
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
                            if (widget.element["math"] == 1)
                              buildMatiereItem(text: "Math", ontap: () {
                                buildBottomSheet("math");
                              }),
                            if (widget.element["french"] == 1)
                              buildMatiereItem(text: "francais", ontap: () {
                                buildBottomSheet("french");
                              }),
                            if (widget.element["arabic"] == 1)
                              buildMatiereItem(text: "Arabic", ontap: () {
                                buildBottomSheet('arabic');
                              }),
                          ],
                        ),
                      ),
                    if (AppCubit.elevecollegeNames.contains(widget.element["name"]))
                      Column(
                        children: [
                          if (widget.element["math"] == 1)
                            buildMatiereItem(text: "Math", ontap: () {
                              buildBottomSheet("math");
                            }),
                          if (widget.element["french"] == 1)
                            buildMatiereItem(text: "francais", ontap: () {
                              buildBottomSheet("french");
                            }),
                          if (widget.element['physic'] == 1)
                            buildMatiereItem(text: "physic", ontap: () {
                              buildBottomSheet("physic");
                            }),
                          if (widget.element["svt"] == 1)
                            buildMatiereItem(text: 'SVT', ontap: () {
                              buildBottomSheet("svt");
                            })
                        ],
                      ),
                    if (AppCubit.elevelyceesNames.contains(widget.element["name"]))
                      Column(
                        children: [
                          if (widget.element["math"] == 1)
                            buildMatiereItem(text: "Math", ontap: () {
                              buildBottomSheet("math");
                            }),
                          if (widget.element["french"] == 1)
                            buildMatiereItem(text: "francais", ontap: () {
                              buildBottomSheet("french");
                            }),
                          if (widget.element['physic'] == 1)
                            buildMatiereItem(text: "physic", ontap: () {
                              buildBottomSheet("physic");
                            }),
                          if (widget.element["svt"] == 1)
                            buildMatiereItem(text: 'SVT', ontap: () {
                              buildBottomSheet("svt");
                            })
                        ],
                      ),
                    if (AppCubit.elevelangsNames.contains(widget.element["name"]))
                      Column(
                        children: [
                          if (widget.element["french"] == 1 ||
                              AppCubit.elevelangs[AppCubit.elevelangsNames
                                      .indexOf(widget.element["name"])]["french"] ==
                                  1)
                            buildMatiereItem(text: "french", ontap: () {
                              buildBottomSheet("french");
                            }),
                          if (widget.element["english"] == 1 ||
                              AppCubit.elevelangs[AppCubit.elevelangsNames
                                      .indexOf(widget.element["name"])]["english"] ==
                                  1)
                            buildMatiereItem(text: "english", ontap: () {
                              buildBottomSheet("english");                            }),
                        ],
                      ),
                    if (AppCubit.elevesCalculNames.contains(widget.element["name"]))
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          buildMatiereItem(
                              text: "Calcule Mentale", ontap: () {
                                buildBottomSheet("CM");
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
                      model: widget.element,
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
