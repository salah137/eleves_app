import 'package:flutter/material.dart';
import 'package:main/screens/EleveInfo.dart';
import 'package:main/shared/cubit/AppCubit.dart';

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
          Text("$text"),
          Spacer(),
          Icon(
            !value ? Icons.arrow_right : Icons.arrow_drop_down,
            size: 30,
          ),
        ],
      ),
    ),
    onTap: ontap);

Widget buildItemForStudent(Map model, BuildContext ctx, ) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: () {
            Navigator.of(ctx)
                .push(MaterialPageRoute(builder: (ctx) => ChangeStudentParametres(model)));
          },
          child: Card(
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: 20,
                      child: Text("${model["name"][0]}"),
                    ),
                  ),
                  Text('${model["name"]}')
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget buildMatiereItem(
        {required String text, required GestureTapCallback ontap}) =>
    InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: ontap,
      child:
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.all(20),
              child: Text(
                "$text",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
    );
