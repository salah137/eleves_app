import 'package:flutter/material.dart';

Widget itemBuilder(context, name, matiere, isPayed, nonPayedMonths) => Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                child: Text("${name[0]}"),
                backgroundColor: isPayed == 0 ? Colors.pink : Colors.blue,
                radius: 30,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("$matiere")
              ],
            ),
            Spacer(),
            Text("$nonPayedMonths")
          ],
        ),
      ),
    );
