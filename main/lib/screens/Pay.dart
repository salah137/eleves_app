import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/shared/cubit/AppCubit.dart';
import 'package:main/shared/cubit/AppStates.dart';

class Pay extends StatefulWidget {
  const Pay({Key? key, this.modedl1}) : super(key: key);
  final modedl1;
  @override
  _PayState createState() => _PayState(modedl1);
}

class _PayState extends State<Pay> {
  final Map model1;

  _PayState(this.model1);

  @override
  Widget build(BuildContext context) {
    Map model = Map.from(model1);
    return BlocConsumer<AppCubit, AppState>(
        builder: (ctx, state) {
          AppCubit cubit = BlocProvider.of(ctx);
          return Scaffold(
            body: Center(
              child: Container(
                margin: EdgeInsets.all(5),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.pink
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), 
                  child: MaterialButton(
                  
                      onPressed: () {
                        model["hepaythisMonth"] = 1;
                
                        if (model["payedlastmonth"] == 0) {
                          model["nonPayedMonths"]--;
                          model["payedlastmonth"] = 1;
                        }
                        cubit.updateData(model, true);
                      },
                      child: Text('He pay to me')),
                ),
              ),
            ),
          );
        },
        listener: (ctx, state) {});
  }
}
