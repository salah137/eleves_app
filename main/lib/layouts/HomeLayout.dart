import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
      builder:(ctx,state){ 
        AppCubit cubit = BlocProvider.of(ctx);
        return Scaffold(
          body: cubit.screens[cubit.currenIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: cubit.changeindex,
            currentIndex: cubit.currenIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.money), label: "payement"),
              BottomNavigationBarItem(icon: Icon(Icons.person,), label: "eleves")
            ],
          ),
        );
      },
      listener: (ctx, state) {}
    );
  }
}