import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/screens/PaymentScreen.dart';
import 'package:main/shared/cubit/AppCubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => AppCubit()..createDataBase(),
      child: BlocConsumer(
        builder: (ctx, state) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: PaymentScreen(),
        ),
        listener: (ctx, state) {},
      ),
    );
  }
}
