
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid=Uuid();
final formatter =DateFormat.yMd();
enum Category{food, travel, leisure, work}

const catagoryIcon={
           Category.food: Icons.lunch_dining,
           Category.travel: Icons.flight_takeoff,
           Category.leisure: Icons.movie,
           Category.work: Icons.work,
};
class Expanse{

  final String Id;
  final String title;
  final double amount;
  final DateTime date ;
  final Category category;
   Expanse({

    required this.title,
    required this.amount,
    required this.date,
     required this.category

}): Id=uuid.v4();


   String get formattedDate {
     return formatter.format(date);
   }

}
class ExpenseBucket {
  final List<Expanse>expenses;
  final Category category ;
  const ExpenseBucket( {required this.category, required this.expenses});

  ExpenseBucket.forCategory(List<Expanse> allExpesnes, this.category, )
      :expenses =  allExpesnes.where((expense)=> expense.category==category ).toList();
    double get totalExpense {

      double sum=0;
      for (final expense in expenses){
        sum+=expense.amount;

      }
      return sum;

    }
}

