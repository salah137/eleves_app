import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/screens/SelectEleveClass.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class AddEleve extends StatelessWidget {
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      builder: (ctx, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Entres Le Nome de l'eleve"),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
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
                      ;
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (ctx, state) {},
    );
  }
}
