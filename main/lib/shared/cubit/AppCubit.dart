import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:main/screens/EleveScreen.dart';
import 'package:main/screens/PaymentScreen.dart';
import 'package:main/shared/cubit/AppStates.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialState());

  static Database? database;

  int currenIndex = 0;
  List<Widget> screens = [
    PaymentScreen(),
    ElevesScreen(),
  ];

  // Lists
  static List<Map> elevePrimaire = [];
  static List<Map> elevecollege = [];
  static List<Map> elevelycees = [];
  static List<Map> elevelangs = [];
  static List<Map> elevesCalcul = [];
  static List<Map> payement = [];

  static List<String> elevePrimaireNames = [];
  static List<String>  elevecollegeNames = [];
  static List<String>   elevelyceesNames = [];
  static List<String>    elevelangsNames = [];
  static List<String>  elevesCalculNames = [];

  void createDataBase() async {
    database = await openDatabase(
      "mydata.db",
      version: 1,
      onCreate: (
        db,
        version,
      ) {
        // primaire
        db.execute(
            "CREATE TABLE Eleveprimaire (id INTEGER PRIMARY KEY, name TEXT, math INTEGER, french INTEGER, arabic INTEGER, level INTEGER )");
        // college
        db.execute(
            "CREATE TABLE Elevecollege (id INTEGER PRIMARY KEY, name TEXT, math INTEGER, french INTEGER, physic INTEGER, svt INTEGER, level INTEGER)");

        // lycee
        db.execute(
            "CREATE TABLE Elevelycee (id INTEGER PRIMARY KEY, name TEXT, math INTEGER, french INTEGER, physic INTEGER, svt INTEGER, level INTEGER)");

        // langs
        db.execute(
            "CREATE TABLE Elevelangs (id INTEGER PRIMARY KEY, name TEXT, category INTEGER, english INTEGER, french INTEGER)");
        db.execute(
            "CREATE TABLE EleveCalulate (id INTEGER PRIMARY KEY, name TEXT, category INTEGER)");
        // payments
        db.execute(
            "CREATE TABLE payment (id INTEGER PRIMARY KEY, eleveName TEXT, matiere TEXT,hepaythisMonth INTEGER, payedlastmonth INTEGER, nonPayedMonths INTEGER)");
      },
      onOpen: (
        db,
      ) async {
        getdata(db);
      },
    );
    emit(CreateDataState());
  }

  void getdata(Database db) async {
    // get data for primaire
    elevePrimaire = await db.rawQuery(
      "SELECT * FROM Eleveprimaire",
    );
    // get data for college
    elevecollege = await db.rawQuery(
      "SELECT * FROM Elevecollege",
    );
    // get data for lyce
    elevelycees = await db.rawQuery(
      "SELECT * FROM Elevelycee",
    );
    // get data for langs
    elevelangs = await db.rawQuery(
      "SELECT * FROM Elevelangs",
    );
    elevesCalcul = await db.rawQuery(
      "SELECT * FROM EleveCalulate"
    );
    // get data for payments
    payement = await db.rawQuery(
      "SELECT * FROM payment",
    );

    for (int i = 0; i <elevePrimaire.length; i++){
                       elevePrimaireNames.add(elevePrimaire[i]["name"]);
    }

    for (int i = 0; i <elevelycees.length; i++){
      elevelyceesNames.add(elevelycees[i]["name"]);
    }

    for (int i = 0; i <elevecollege.length; i++){
      elevecollegeNames.add(elevecollege[i]["name"]);
    }

    for (int i = 0; i <elevelangs.length; i++){
      elevelangsNames.add(elevelangs[i]["name"]);
    }

    for (int i = 0; i <elevesCalcul.length; i++){
      elevesCalculNames.add(elevesCalcul[i]["name"]);
    }

    emit(GetDataState());
  }

  void changeindex(int index) {
    currenIndex = index;
    emit(ChangeIndexState());
  }

  void addPriMairEleve(
      String name, bool math, bool french, bool arabic, int level) async {
    int mathisTrue = math ? 1 : 0;
    int frenchisTrue = french ? 1 : 0;
    int arabicisTrue = arabic ? 1 : 0;
    await database!.transaction(
      (txn) async {
        await txn.rawInsert(
          "INSERT INTO Eleveprimaire(name,math,french,arabic,level) VALUES(?,?,?,?,?)",
          [name, mathisTrue, frenchisTrue, arabicisTrue, level],
        );
        print("data primaire is inserted");
        if (math)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "math", 0, 1, 0],
          );
        if (french)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "francer", 0, 1, 0],
          );
        if (arabic)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "arabe", 1, 0, 0],
          );
      },
    );
    emit(InsertDataPrimaryState());
    getdata(database!);
  }

  void addCollegeStudent(
      String name, bool french, bool math, bool pc, bool svt, int level) async {
    int mathisTrue = math ? 1 : 0;
    int frenchisTrue = french ? 1 : 0;
    int pcisTrue = pc ? 1 : 0;
    int svtisTrue = svt ? 1 : 0;

    await database!.transaction(
      (txn) async {
        txn.rawInsert(
          "INSERT INTO Elevecollege(name,math,french,physic,svt,level) VALUES(?,?,?,?,?,?)",
          [name, mathisTrue, frenchisTrue, pcisTrue, svtisTrue, level],
        );
        if (math)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "math", 0, 1, 0],
          );
        if (french)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "francer", 0, 1, 0],
          );
        if (pc)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "pysics", 0, 1, 0],
          );
        if (svt)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "svt", 0, 1, 0],
          );
      },
    );
    emit(InsertDataCollegeState());
    getdata(database!);
  }

  void addLyceeStudent(
      String name, bool french, bool math, bool pc, bool svt, int level) async {
    int mathisTrue = math ? 1 : 0;
    int frenchisTrue = french ? 1 : 0;
    int pcisTrue = pc ? 1 : 0;
    int svtisTrue = svt ? 1 : 0;

    await database!.transaction(
      (txn) async {
        txn.rawInsert(
          "INSERT INTO Elevelycee(name,math,french,physic,svt, level) VALUES(?,?,?,?,?,?)",
          [name, mathisTrue, frenchisTrue, pcisTrue, svtisTrue, level],
        );
        if (math)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "math", 0, 1, 0],
          );
        if (french)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "francer", 0, 1, 0],
          );
        if (pc)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "pysics", 0, 1, 0],
          );
        if (svt)
          await txn.rawInsert(
            "INSERT INTO payment (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
            [name, "svt", 0, 1, 0],
          );
      },
    );
    emit(InsertDataLycceState());
    getdata(database!);
  }

  void addLangsState(String name, isBig, bool english, bool french) async {
    int isFrench = french ? 1 : 0;
    int isEnglish = english ? 1 : 0;

    int category = isBig;
    database!.transaction(
      (txn) async {
        txn.rawInsert(
          "INSERT INTO Elevelangs(name,category,english,french) VALUES(?,?,?,?)",
          [name, category, isEnglish, isFrench],
        );
        if (french)
          txn.rawInsert(
              "INSERT INTO payment  (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
              [name, "french", 0, 1, 0]);
        if (english)
          txn.rawInsert(
              "INSERT INTO payment  (eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)",
              [name, "english", 0, 1, 0]);
      },
    );
    emit(
      InsertDataLangsState(),
    );
    getdata(database!);
  }

  void updateData(Map model) async {
    if (payement.contains(model)) {
      database!.rawUpdate(
        "UPDATE payment SET eleveName = ?,matiere = ? hepaythisMonth = ?,payedlastmonth = ?,nonPayedMonths = ? WHERE id = ?",
        [
          model["eleveName"],
          model["matiere"],
          model["hepaythisMonth"],
          model["payedlastmonth"],
          model["nonPayedMonths"],
          model["id"],
        ],
      );
    } else if (elevePrimaire.contains(model)) {
      database!.rawUpdate(
        "UPDATE ElevePrimaire SET name =?, math = ?, french = ?, arabic = ? WHERE id = ?",
        [
          model["name"],
          model["math"],
          model["french"],
          model["arabic"],
          model["id"],
        ],
      );
    } else if (elevecollege.contains(model)) {
      database!.rawUpdate(
          "UPDATE Elevecollege SET name =?, math = ?, french = ?, svt =?, physic = ? WHERE id =?",
          [
            model["name"],
            model["math"],
            model["french"],
            model["svt"],
            model["physic"],
            model["id"]
          ]);
    } else if (elevelycees.contains(model)) {
      database!.rawUpdate(
          "UPDATE Elevelycee SET name =?, math = ?, french = ?, svt =?, physic = ? WHERE id =?",
          [
            model["name"],
            model["math"],
            model["french"],
            model["svt"],
            model["physic"],
            model["id"]
          ]);
    } else if (elevelangs.contains(model)) {
      database!.rawUpdate(
          "UPDATE Elevelangs SET name =?, category = ?, french = ?, english = ?,  WHERE id =?",
          [
            model["name"],
            model["category"],
            model["french"],
            model["english"],
            model["id"]
          ]);
    }
    emit(UpdateData());
    getdata(database!);
  }

  void chekPayments() async {
    if (DateTime.now().day == 1) {
      for (int i = 0; i < payement.length; i++) {
        if (payement[i]["hepaythisMonth"] == 0) {
          payement[i]["payedlastmonth"] = 0;
          payement[i]["nonPayedMonths"] += 1;
        }
        payement[i]["hepaythisMonth"] == 0;
        updateData(payement[i]);
      }
    }
    emit(ChekPayments());
  }

  void addCalulateMentaal(String name, int level) async {
    database!.transaction(
      (txn) async {
        txn.rawInsert(
          "INSERT INTO EleveCalulate(name,category) VALUES(?,?)",
          [name, level],
        );
        txn.rawInsert(
          'INSERT INTO payment(eleveName,matiere,hepaythisMonth,payedlastmonth,nonPayedMonths) VALUES(?,?,?,?,?)',
          [name, "calculeteMentaal", 0, 1, 0],
        );
      },
    );
    emit(
      AddCalulateMentaal(),
    );
    getdata(database!);
  }
  void deleteData(model) async {
        if(elevePrimaireNames.contains(model["name"]))
        database!.rawDelete(
            'DELETE FROM Eleveprimaire WHERE id = ?',
             [model["id"]]
        );
        if(elevecollegeNames.contains(model["name"]))
          database!.rawDelete(
              'DELETE FROM Elevecollege WHERE id = ?',
              [model["id"]]
          );
        if(elevelyceesNames.contains(model["name"]))
          database!.rawDelete(
              'DELETE FROM Elevelycee WHERE id = ?',
              [model["id"]]
          );
        if(elevelangsNames.contains(model["name"]))
          database!.rawDelete(
              'DELETE FROM Elevelangs WHERE id = ?',
              [model["id"]]
          );
        if(elevelangsNames.contains(model["name"]))
          database!.rawDelete(
              'DELETE FROM EleveCalulate WHERE id = ?',
              [model["id"]]
          );

  }
}
