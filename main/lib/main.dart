import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/screens/PaymentScreen.dart';
import 'package:main/screens/splachScreen.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => AppCubit()..createDataBase(),
      child: BlocConsumer<AppCubit,AppState>(
        builder: (ctx, state) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            
            
          ),
          debugShowCheckedModeBanner: false,
          home: Splash(),
        ),
        listener: (ctx, state) {},
      ),
    );
  }
}
