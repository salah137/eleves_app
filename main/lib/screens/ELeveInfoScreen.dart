import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/shared/components/components.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class EleveInfo extends StatelessWidget {
  Map element;
  EleveInfo(this.element);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          bool showCalcullate =
              AppCubit.elevesCalculNames.contains(element["name"]);
          bool showPrimair = AppCubit.elevePrimaire.contains(element);

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
                              bottomRight: Radius.circular(15))),
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
                            element["name"],
                            style: TextStyle(fontSize: 50),
                          )
                        ],
                      ),
                    ),
                    if (AppCubit.elevePrimaire.contains(element))
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            if (element["math"] == 1)
                              buildMatiereItem(text: "Math", ontap: () {}),
                            if (element["french"] == 1)
                              buildMatiereItem(text: "francais", ontap: () {}),
                            if (element["arabic"] == 1)
                              buildMatiereItem(text: "Arabic", ontap: () {})
                          ],
                        ),
                      ),
                    if (AppCubit.elevecollegeNames.contains(element["name"]))
                      Column(
                        children: [
                          if (element["math"] == 1)
                            buildMatiereItem(text: "Math", ontap: () {}),
                          if (element["french"] == 1)
                            buildMatiereItem(text: "francais", ontap: () {}),
                          if (element['physic'] == 1)
                            buildMatiereItem(text: "physic", ontap: () {}),
                          if (element["svt"] == 1)
                            buildMatiereItem(text: 'SVT', ontap: () {})
                        ],
                      ),
                    if (AppCubit.elevelyceesNames.contains(element["name"]))
                      Column(
                        children: [
                          if (element["math"] == 1)
                            buildMatiereItem(text: "Math", ontap: () {}),
                          if (element["french"] == 1)
                            buildMatiereItem(text: "francais", ontap: () {}),
                          if (element['physic'] == 1)
                            buildMatiereItem(text: "physic", ontap: () {}),
                          if (element["svt"] == 1)
                            buildMatiereItem(text: 'SVT', ontap: () {})
                        ],
                      ),
                    if (AppCubit.elevelangsNames.contains(element["name"]))
                      Column(
                        children: [
                          if (element["french"] == 1 ||
                              AppCubit.elevelangs[AppCubit.elevelangsNames
                                      .indexOf(element["name"])]["french"] ==
                                  1)
                            buildMatiereItem(text: "french", ontap: () {}),
                          if (element["english"] == 1 ||
                              AppCubit.elevelangs[AppCubit.elevelangsNames
                                      .indexOf(element["name"])]["english"] ==
                                  1)
                            buildMatiereItem(text: "english", ontap: () {}),
                        ],
                      ),
                    if (AppCubit.elevesCalculNames.contains(element["name"]))
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          buildMatiereItem(
                              text: "Calcule Mentale", ontap: () {}),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              icon: Icon(Icons.add),
              label: Text('Ajouter Une Matiere'),
              onPressed: () {},
            ),
          );
        },
        listener: (ctx, state) {});
  }
}
