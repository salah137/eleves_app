import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(itemBuilder: (ctx,i)=>itemBuilder(ctx), itemCount: 10,)
      ),
    );
  }
}

Widget itemBuilder(context)=>Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        child: Text("S"),
                        backgroundColor: Colors.red,
                        radius: 30,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Salah",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("physic")
                      ],
                    ),
                    Spacer(),
                    Text("3")
                  ],
                ),
              ),
            );