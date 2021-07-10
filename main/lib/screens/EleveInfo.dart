
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/screens/AddMatiere.dart';
import 'package:main/shared/components/components.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class ChangeStudentParametres extends StatefulWidget {
  
  Map model;
  ChangeStudentParametres(this.model) ;
  @override
  _ChangeStudentParametresState createState() => _ChangeStudentParametresState(this.model);
}

class _ChangeStudentParametresState extends State<ChangeStudentParametres> {
  Map model1;
  _ChangeStudentParametresState(this.model1);
  
  @override
  Widget build(BuildContext context) {
  
    Map model = Map.from(model1);
    
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: MaterialButton(
              onPressed: (){},
              child: Text('Supprimer cet eleve'),
            ),
            
          ),
            Container(
              child: MaterialButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>AddMatiere(model: model,)));
                },
                child: Text("Editer les matieres de cet eleve")
              )
            )
        ],
      ),
          
    );
  }
}