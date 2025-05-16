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
  final List<Expanse> _registeredExpenses = [
    Expanse(
      title: 'Flutter App Development',
      amount: 20.23,
      date: DateTime.now(),
      category: Category.work,
    ),

    Expanse(
      title: 'Web Development',
      amount: 40.23,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpanseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return new_Expanse_Screen(onAddExpense: _AddExpense);
      },
    );
  }

  void _AddExpense(Expanse expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeEpense(Expanse expense) {
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Text("No expenses found. Start adding some!"),
    );

    if(_registeredExpenses.isNotEmpty){
      mainContent=ExpanseList
        (expanse: _registeredExpenses,
          onRemoveExpense: _removeEpense,

      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "The Expanse Tracker",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _openAddExpanseOverlay();
            },
            icon: Icon(Icons.add, color: Colors.white),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 20,
              ),
              child: mainContent,
            ),
          ),
        ],
      ),
    );
  }
}
