import 'package:expense_tracking/mvvm/model/expense_model.dart';
import 'package:expense_tracking/mvvm/widgets/expanses_list/expanse_item.dart';
import 'package:flutter/material.dart';
class ExpanseList extends StatelessWidget {
  final List<Expanse>expanse;
  const ExpanseList({super.key, required this.expanse});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: expanse.length,
        itemBuilder: (ctx, index){
          
          return ExpanseItem(expanse[index]);
        }


    );
  }
}
