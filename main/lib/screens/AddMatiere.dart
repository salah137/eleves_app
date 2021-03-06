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
  Map model;
  _AddMatiereState(this.model);
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

  @override
  Widget build(BuildContext context) {
  Map useableMap = model;
    
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);

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
                            useableMap["math"] = maxdepth?1:0;
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
                            useableMap["arabic"] = arabic?1:0;
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
                            useableMap['french'] = french ? 1 : 0;
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
                                useableMap["math"] = mahC?1 : 0;
                              });
                            }),
                      if (model["french"] == 0)
                        CheckboxListTile(
                            value: frenchC,
                            onChanged: (v) {
                              setState(() {
                                frenchC = v!;
                                useableMap["french"] = frenchC?1 : 0;
                              });
                            }),
                      if (model["svt"] == 0)
                        CheckboxListTile(
                            value: svtC,
                            onChanged: (v) {
                              setState(() {
                                svtC = v!;
                                useableMap["svt"] = svtC?1:0;
                              });
                            },                          title: Text("Svt")
                        ),
                      if (model["physic"] == 0)
                        CheckboxListTile(
                            value: PcC,
                            onChanged: (v) {
                              setState(() {
                                PcC = v!;
                                useableMap["physic"]= PcC?1 : 0;
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
                            useableMap["english"] = english?1 : 0;
                          });
                        }),
                      if(model["french"] == 0)
                        CheckboxListTile(value: english, onChanged: (v){
                          setState(() {
                            french = v!;
                            useableMap["french"] = french?1 : 0;
                          });
                        }),
                    ],
                  )
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                if(arabic){
                  cubit.addPayment(model["name"], "arabic");
                }
                if(french || frenchC || frenchP) {
                  cubit.addPayment(model["name"], "french");
                
                }
                if(maxdepth || mahC){
                  cubit.addPayment(model["name"], "math");
                }
                if(svtC) {
                  cubit.addPayment(model["name"], "svt");
                }
                if(PcC) {
                  cubit.addPayment(model["name"], "phisyc");
                }
                if(english) {
                  cubit.addPayment(model["name"], "english");
                }
                cubit.updateData(model,false);
              },
              child: Icon(Icons.done),
            )
          );
        },
        listener: (ctx, state) {});
  }
}
