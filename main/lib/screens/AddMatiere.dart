import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class AddMatiere extends StatefulWidget {
  final model;
  const AddMatiere({Key? key, this.model}) : super(key: key);

  @override
  _AddMatiereState createState() => _AddMatiereState(model);
}

class _AddMatiereState extends State<AddMatiere> {
  final model;
  _AddMatiereState(this.model);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          bool maxdepth = false;
          bool arabic = false;
          bool frenchP = false;
          bool mahC = false;
          bool frenchC = false;
          bool svtC = false;
          bool PcC = false;

          bool mahL = false;
          bool frenchL = false;
          bool svtL = false;
          bool PcL = false;

          bool french = false;
          bool english = false;

          return Scaffold(
            body: Column(
              children: [
                if (AppCubit.elevePrimaireNames.contains(model["name"]))
                  Column(children: [
                    if (model["math"] == 0)
                      CheckboxListTile(
                        value: maxdepth,
                        onChanged: (v) {
                          setState(() {
                            maxdepth = v!;
                            model["math"] = maxdepth?1:0;
                          });
                        },
                        title: Text("math"),
                      ),
                    if (model["arabic"] == 0)
                      CheckboxListTile(
                        value: arabic,
                        onChanged: (v) {
                          setState(() {
                            arabic = v!;
                            model["arabic"] = arabic?1:0;
                          });
                        },
                        title: Text("arabic"),
                      ),
                    if (model["french"] == 0)
                      CheckboxListTile(
                        value: frenchP,
                        onChanged: (v) {
                          setState(() {
                            frenchP = v!;
                            model['french'] = french ? 1 : 0;
                          });
                        },
                        title: Text("francais"),
                      ),
                  ]),
                if (AppCubit.elevelyceesNames.contains(model["name"]) || AppCubit.elevecollegeNames.contains(model["name"]))
                  Column(
                    children: [
                      if (model["math"] == 0)
                        CheckboxListTile(
                            value: mahC,
                            onChanged: (v) {
                              setState(() {
                                mahC = v!;
                                model["math"] = mahC?1 : 0;
                              });
                            }),
                      if (model["french"] == 0)
                        CheckboxListTile(
                            value: frenchC,
                            onChanged: (v) {
                              setState(() {
                                frenchC = v!;
                                model["french"] = frenchC?1 : 0;
                              });
                            }),
                      if (model["svt"] == 0)
                        CheckboxListTile(
                            value: svtC,
                            onChanged: (v) {
                              setState(() {
                                svtC = v!;
                                model["svt"] = svtC?1:0;
                              });
                            },                          title: Text("Svt")
                        ),
                      if (model["physic"] == 0)
                        CheckboxListTile(
                            value: PcC,
                            onChanged: (v) {
                              setState(() {
                                PcC = v!;
                                model["physic"]= PcC?1 : 0;
                              },);
                            },
                          title: Text("physic")
                            ),
                    ],
                  ),
                if(AppCubit.elevelangsNames.contains(model["name"]))
                  Column(
                    children: [
                      if(model["english"] == 0)
                        CheckboxListTile(value: english, onChanged: (v){
                          setState(() {
                            english = v!;
                            model["english"] = english?1 : 0;
                          });
                        }),
                      if(model["french"] == 0)
                        CheckboxListTile(value: english, onChanged: (v){
                          setState(() {
                            french = v!;
                            model["french"] = french?1 : 0;
                          });
                        }),
                    ],
                  )
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                cubit.updateData(model);
              },
              child: Icon(Icons.done),
            )
          );
        },
        listener: (ctx, state) {});
  }
}
