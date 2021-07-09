import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/screens/SelectEleveClass.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class AddEleve extends StatelessWidget {
  TextEditingController controller = new TextEditingController();
  GlobalKey<FormState> formkey = new GlobalKey<FormState>()
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      builder: (ctx, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Form(
                 key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Entres Le Nome de l'eleve"),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (v){
                        if(v!.isEmpty || v == null)
                          return "Entrer Un Nome";
                        else if(AppCubit.elevecollegeNames.contains(v!) || AppCubit.elevelangsNames.contains(v!) || AppCubit.elevePrimaireNames.contains(v!) || AppCubit.elevelyceesNames.contains(v!) || AppCubit.elevesCalculNames.contains(v!))
                          return "Ce nome est deja enregistrer, entrer un autre nome";
                        return null;
                      },
                      controller: controller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder()),
                      onFieldSubmitted: (value) {
                        Navigator.of(ctx).push(
                          MaterialPageRoute(
                            builder: (ctx) => SelectEleve(value),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){
          if(formkey.currentState!.validate())

            Navigator.of(ctx).push(
              MaterialPageRoute(
                builder: (ctx) => SelectEleve(controller.text),
              ),);
          },
          child: Icon(Icons.arrow_right),),
        );
      },
      listener: (ctx, state) {},
    );
  }
}
