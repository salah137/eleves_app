import 'package:bloc/bloc.dart';
import 'package:main/shared/cubit/AppStates.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialState());

  static Database? database;

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
      onCreate: (db, version) {
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
            "CREATE TABLE Elevelangs (id INTEGER PRIMARY KEY, name TEXT, category TEXT, english INTEGER,");
        // payments
        db.execute(
            "CREATE TABLE payment (id INTEGER PRIMARY KEY, eleveName TEXT, matiere TEXT, payedlastmonth INTEGER, nonPayedMonths INTEGER");
      },
      onOpen: (db,){}
    );
    emit(CreateDataState());
  }
  
  void getdata(Database db) async {
    // get data for primaire 
    elevePrimaire = await db.rawQuery(
     "SELECT * FROM Eleveprimaire"
    );    
    // get data for college 
    elevecollege = await db.rawQuery(
    "SELECT * FROM Elevecollege"
    );
    
    
  }
  
}

