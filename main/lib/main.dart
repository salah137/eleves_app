import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/screens/splachScreen.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

import 'observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => AppCubit()..createDataBase()..chekPayments(),
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
