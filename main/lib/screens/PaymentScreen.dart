import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/shared/components/components.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class PaymentScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      builder: (ctx, state) {
                AppCubit cubit = BlocProvider.of(ctx);
                List list = AppCubit.payementForUsing;
                return Scaffold(
                  body: SafeArea(
                    child: list.length != 0
                        ? ListView.builder(
                            itemBuilder: (ctx, i) => itemBuilder(ctx,
                                list[i]),
                            itemCount: AppCubit.payementForUsing.length,
                          )
                        : Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.task,
                                  size: 50,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Il n'y a aucun eleve",
                                )
                              ],
                            ),
                          ),
                  ),
                );
              },
              listener: (ctx, state) {});
        }
      }
