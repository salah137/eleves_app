import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/screens/AddOneScree.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class ElevesScreen extends StatefulWidget {
  @override
  _ElevesScreenState createState() => _ElevesScreenState();
}

class _ElevesScreenState extends State<ElevesScreen> {
  bool isTrue1 = false;

  bool isTrue2 = false;

  bool isTrue3 = false;

  bool isTrue4 = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      child: Container(
                        color: Colors.grey[300],
                        child: Row(
                          children: [
                            Text("primaire"),
                            Spacer(),
                            Icon(!isTrue1
                                ? Icons.arrow_right
                                : Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(
                          () {
                            isTrue1 = !isTrue1;
                          },
                        );
                      },
                    ),
                    if (isTrue1)
                      if (AppCubit.elevePrimaire.length != 0)
                        ...AppCubit.elevePrimaire.map(
                          (e) => Card(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Text('${e["name"][0]}'),
                                  radius: 30,
                                ),
                                Text(e['name']),
                              ],
                            ),
                          ),
                        ),
                    InkWell(
                      child: Container(
                        color: Colors.grey[300],
                        child: Row(
                          children: [
                            Text("collee"),
                            Spacer(),
                            Icon(!isTrue2
                                ? Icons.arrow_right
                                : Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(
                          () {
                            isTrue2 = !isTrue2;
                          },
                        );
                      },
                    ),
                    if (isTrue1)
                      if (AppCubit.elevecollege.length != 0)
                        ...AppCubit.elevecollege.map(
                          (e) => Card(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Text('${e["name"][0]}'),
                                  radius: 30,
                                ),
                                Text(e['name']),
                              ],
                            ),
                          ),
                        ),
                    InkWell(
                      child: Container(
                        color: Colors.grey[300],
                        child: Row(
                          children: [
                            Text("lycee"),
                            Spacer(),
                            Icon(!isTrue3
                                ? Icons.arrow_right
                                : Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(
                          () {
                            isTrue3 = !isTrue3;
                          },
                        );
                      },
                    ),
                    if (isTrue1)
                      if (AppCubit.elevelycees.length != 0)
                        ...AppCubit.elevelycees.map(
                          (e) => Card(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Text('${e["name"][0]}'),
                                  radius: 30,
                                ),
                                Text(e['name']),
                              ],
                            ),
                          ),
                        ),
                    InkWell(
                      child: Container(
                        color: Colors.grey[300],
                        child: Row(
                          children: [
                            Text("langues"),
                            Spacer(),
                            Icon(!isTrue4
                                ? Icons.arrow_right
                                : Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(
                          () {
                            isTrue4 = !isTrue4;
                          },
                        );
                      },
                    ),
                    if (isTrue1)
                      if (AppCubit.elevelangs.length != 0)
                        ...AppCubit.elevePrimaire.map(
                          (e) => Card(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Text('${e["name"][0]}'),
                                  radius: 30,
                                ),
                                Text(e['name']),
                              ],
                            ),
                          ),
                        ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.of(ctx).push(
                  MaterialPageRoute(
                    builder: (ctx) => AddEleve(),
                  ),
                );
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          );
        },
        listener: (ctx, state) {});
  }
}
