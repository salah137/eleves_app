import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/shared/components/components.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          List list = AppCubit.payement;
          return Scaffold(
            body: SafeArea(
                child: ListView.builder(
              itemBuilder: (ctx, i) => itemBuilder(
                  ctx,
                  list[i]['eleveName'],
                  list[i]["matiere"],
                  list[i]["payedlastmonth"],
                  list[i]["nonPayedMonths"]),
              itemCount: 10,
            )),
          );
        },
        listener: (ctx, state) {});
  }
}

