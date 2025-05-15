import 'package:expense_tracking/mvvm/model/expense_model.dart';
import 'package:flutter/material.dart';

import '../widgets/expanses_list/expanse_list.dart' show ExpanseList;
import '../widgets/new_expense.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {


  final List<Expanse> _registeredExpenses=[
    Expanse(
        title: 'Flutter App Development',
        amount: 20.23,
        date: DateTime.now(),
        category: Category.work),

    Expanse(
    title: 'Web Development',
    amount: 40.23,
    date: DateTime.now(),
    category: Category.leisure
  ),

  ];

  void _openAddExpanseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx){
      return new_Expanse_Screen();

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Expanse Tracker", style: TextStyle(
          color: Colors.white,
        ),),
        actions: [
          IconButton(onPressed: (){

            _openAddExpanseOverlay();
          }, icon: Icon(Icons.add, color: Colors.white,))
        ],
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Column(
        children: [
          Expanded(child: ExpanseList(expanse: _registeredExpenses,))
        ],
      ),
    );
  }
}
