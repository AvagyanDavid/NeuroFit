// import 'package:cognitivyskills/db/query.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:sqflite/sqflite.dart';
//
// class ResultsUser extends StatefulWidget{
//   ResultsUser();
//
//   @override
//   State<ResultsUser> createState() => _ResultUserState();
//   }
//
// class _ResultUserState extends State<ResultsUser> {
//
//   List<Map> list = [];
//   List<Row> newList = [];
//
//   onSelect(list) async {
//     Database db = await DBHelper().db;
//     list = await db.query('Statistic');
//     for (int i = 0; i < list.length; i++){
//       newList.add(
//           Row(
//               children: [
//                 Text(list[i]["attempt"]),
//                 Text(list[i]["time"])
//               ]
//           )
//       );
//     }
//   }
//
//   void initState() {
//     onSelect(list);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(children: newList,);
//   }}