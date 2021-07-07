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

buildButton(text, ontap, value) => InkWell(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Text("arabe"),
          Spacer(),
          Icon(
            !value ? Icons.arrow_right : Icons.arrow_drop_down,
            size: 30,
          ),
        ],
      ),
    ),
    onTap: ontap);

Widget buildItemForStudent(name) => Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 30,
              child: Text("${name[0]}"),
            ),
          ),
          Text('$name')
        ],
      ),
    );
