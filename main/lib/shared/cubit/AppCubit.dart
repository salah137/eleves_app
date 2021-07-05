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
  static List<Map> payement = [];

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
            "CREATE TABLE Eleveprimaire (id INTEGER PRIMARY KEY, name TEXT, math INTEGER, french INTEGER, arabic INTEGER)");
        // college
        db.execute(
            "CREATE TABLE Elevecollege (id INTEGER PRIMARY KEY, name TEXT, math INTEGER, french INTEGER, physic INTEGER, svt INTEGER)");

        // lycee
        db.execute(
            "CREATE TABLE Elevelycee (id INTEGER PRIMARY KEY, name TEXT, math INTEGER, french INTEGER, physic INTEGER, svt INTEGER)");

        // langs
        db.execute(
            "CREATE TABLE Elevelangs (id INTEGER PRIMARY KEY, name TEXT, category TEXT, english INTEGER)");
        // payments
        db.execute(
            "CREATE TABLE payment (id INTEGER PRIMARY KEY, eleveName TEXT, matiere TEXT, payedlastmonth INTEGER, nonPayedMonths INTEGER)");
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
    // get data for payments
    payement = await db.rawQuery(
      "SELECT * FROM payment",
    );
    emit(GetDataState());
  }

  void changeindex(int index) {
    currenIndex = index;
    emit(ChangeindexState());
  }

  void addPriMairEleve(String name, bool math, bool french, bool arabic) async {
    int mathisTrue = math ? 1 : 0;
    int frenchisTrue = french ? 1 : 0;
    int arabicisTrue = arabic ? 1 : 0;
    database!.transaction(
      (txn) async {
        await txn.rawInsert(
          "INSERT INTO Eleveprimaire(name,math,french,arabic) VALUES(?,?,?,?)",
          [name, mathisTrue, frenchisTrue, arabicisTrue],
        );
        print("data primaire is inserted");
      },
    );
  }
}
