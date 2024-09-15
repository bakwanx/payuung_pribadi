import 'package:flutter/cupertino.dart';
import 'package:payuung_pribadi/utils/error/error_exception.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/data/models/address_model.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/data/models/company_model.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/data/models/user_model.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/data/models/wellness_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class MasterLocalDs {
  Future<UserModel> getUser(UserModel userModel);
  Future<List<UserModel>> getUsers();
  Future<bool> register(UserModel userModel);
  Future<bool> insertAddress(AddressModel addressModel);
  Future<AddressModel> getAddress(int userId);
  Future<bool> updateAddress(AddressModel addressModel);
  Future<bool> insertCompany(CompanyModel companyModel);
  Future<CompanyModel> getCompany(int userId);
  Future<bool> updateCompany(CompanyModel companyModel);
  Future<void> insertWellness(List<WellnessModel> wellnessModel);
  Future<List<WellnessModel>> getWellness();
}

class MasterLocalDsImpl implements MasterLocalDs{
  static const _databaseName = 'payuung_db';
  static const _tableUser = 'user_table';
  static const _tableAddress = 'Address_table';
  static const _tableCompany = 'company_table';
  static const _tableWellness = 'wellness_table';
  static const _databaseVersion = 1;
  static const _columnId = 'id';
  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  @override
  Future<UserModel> getUser(UserModel userModel) async {
    final db = await database;
    // retrieve data user
    if(userModel.userId != null){
      final checkUser = await db.query(
          _tableUser,
          where: 'userId = ?',
          whereArgs: [userModel.userId]
      );
      if(checkUser.isEmpty){
        return throw LocalException(message: "Data tidak ditemukan");
      }
      return UserModel.fromJson(checkUser[0]);
    }
    // for login
    final checkUser = await db.query(
        _tableUser,
        where: 'email = ? AND password = ?',
        whereArgs: [userModel.email, userModel.password]
    );
    if(checkUser.isEmpty){
      return throw LocalException(message: "Pengguna belum terdaftar");
    }
    return UserModel.fromJson(checkUser[0]);
  }

  @override
  Future<List<UserModel>> getUsers() async {
    final db = await database;
    final allData = await db.query(_tableUser);
    final result = allData.map((data) => UserModel.fromJson(data)).toList();
    return result;
  }

  @override
  Future<bool> register(UserModel userModel) async {
    final db = await database;
    final checkUser = await db.query(
        _tableUser,
      where: 'email = ?',
        whereArgs: [userModel.email]
    );
    if (checkUser.isNotEmpty) {
      return throw LocalException(message: "Pengguna sudah terdaftar");
    }
    await db.transaction((txn) async {
      await txn.insert(
        _tableUser,
        userModel.toJson(),
      );
    });
    return true;
  }


  @override
  Future<void> insertWellness(List<WellnessModel> wellnessModel) async {
    final db = await database;
    for (WellnessModel item in wellnessModel) {
      db.insert(
        _tableWellness,
        item.toJson()
      );
    }
  }

  @override
  Future<bool> updateAddress(AddressModel addressModel) async {
    final db = await database;
    final checkData = await db.query(
        _tableAddress,
        where: 'userId = ?',
        whereArgs: [addressModel.userId]
    );
    if (checkData.isEmpty) {
      return throw LocalException(message: "Informasi alamat anda tidak ditemukan");
    }
    await db.transaction((txn) async {
      await txn.update(
        _tableAddress,
        addressModel.toJson(),
        where: 'userId',
        whereArgs: [addressModel.userId]
      );
    });
    return true;
  }

  @override
  Future<bool> updateCompany(CompanyModel companyModel) async {
    final db = await database;
    final checkData = await db.query(
        _tableCompany,
        where: 'userId = ?',
        whereArgs: [companyModel.userId]
    );
    if (checkData.isEmpty) {
      return throw LocalException(message: "Informasi perusahaan anda tidak ditemukan");
    }
    await db.transaction((txn) async {
      await txn.update(
          _tableCompany,
          companyModel.toJson(),
          where: 'userId',
          whereArgs: [companyModel.userId]
      );
    });
    return true;
  }

  @override
  Future<bool> insertAddress(AddressModel addressModel) async {
    final db = await database;
    final checkData = await db.query(
        _tableAddress,
        where: 'userId = ?',
        whereArgs: [addressModel.userId]
    );
    if (checkData.isNotEmpty) {
      return throw LocalException(message: "Informasi alamat sudah terisi");
    }
    await db.transaction((txn) async {
      await txn.insert(
        _tableAddress,
        addressModel.toJson(),
      );
    });
    return true;
  }

  @override
  Future<bool> insertCompany(CompanyModel companyModel) async {
    final db = await database;
    final checkData = await db.query(
        _tableCompany,
        where: 'userId = ?',
        whereArgs: [companyModel.userId]
    );
    if (checkData.isNotEmpty) {
      return throw LocalException(message: "Informasi perusahaan sudah terisi");
    }
    await db.transaction((txn) async {
      await txn.insert(
        _tableCompany,
        companyModel.toJson(),
      );
    });
    return true;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath()  + _databaseName;
    return openDatabase(
      dbPath,
      onCreate: (db, _) {
        db.execute('''
          CREATE TABLE $_tableUser(
            userId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            imgPath TEXT NOT NULL,
            fullname TEXT NOT NULL,
            bornDate INTEGER NOT NULL,
            gender TEXT NOT NULL,
            email TEXT NOT NULL,
            password TEXT NOT NULL,
            phoneNumber TEXT NOT NULL,
            education TEXT NOT NULL,
            maritalStatus TEXT NOT NULL
          )
        ''');
        db.execute('''
          CREATE TABLE $_tableAddress(
            $_columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            userId TEXT NOT NULL,
            ktp TEXT NOT NULL,
            nik TEXT NOT NULL,
            address INTEGER NOT NULL,
            province TEXT NOT NULL,
            city TEXT NOT NULL,
            district TEXT NOT NULL,
            urbanVillage TEXT NOT NULL,
            postalCode TEXT NOT NULL
          )
        ''');
        db.execute('''
          CREATE TABLE $_tableCompany(
            $_columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            userId TEXT NOT NULL,
            companyName TEXT NOT NULL,
            companyAddress TEXT NOT NULL,
            occupation TEXT NOT NULL,
            sourceIncome TEXT NOT NULL,
            grossIncomePerYear TEXT NOT NULL,
            bankName TEXT NOT NULL,
            bankBranch TEXT NOT NULL,
            accountNumber TEXT NOT NULL,
            accountOwnerName TEXT NOT NULL
          )
        ''');
        db.execute('''
          CREATE TABLE $_tableWellness(
            $_columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            imgName TEXT NOT NULL,
            title TEXT NOT NULL,
            category TEXT NOT NULL,
            price INTEGER NOT NULL,
            minBuy INTEGER NOT NULL,
            maxBuy INTEGER NOT NULL,
            description TEXT NOT NULL
          )
        ''');
      },
      version: _databaseVersion,
    );
  }

  @override
  Future<AddressModel> getAddress(int userId) async {
    final db = await database;
    final checkData = await db.query(
        _tableAddress,
        where: 'userId = ?',
        whereArgs: [userId]
    );

    if (checkData.isEmpty) {
      return throw LocalException(message: "Informasi alamat kosong");
    }
    return AddressModel.fromJson(checkData[0]);
  }

  @override
  Future<CompanyModel> getCompany(int userId) async {
    final db = await database;
    final checkData = await db.query(
        _tableCompany,
        where: 'userId = ?',
        whereArgs: [userId]
    );
    if (checkData.isEmpty) {
      return throw LocalException(message: "Informasi perusahaan kosong");
    }
    return CompanyModel.fromJson(checkData[0]);
  }

  @override
  Future<List<WellnessModel>> getWellness() async {
    final db = await database;
    final checkData = await db.query(_tableWellness);
    return checkData.map((data) => WellnessModel.fromJson(data)).toList();
  }


}

