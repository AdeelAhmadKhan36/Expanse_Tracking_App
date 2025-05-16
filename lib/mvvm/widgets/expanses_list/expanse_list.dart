import 'package:expense_tracking/mvvm/model/expense_model.dart';
import 'package:expense_tracking/mvvm/widgets/expanses_list/expanse_item.dart';
import 'package:flutter/material.dart';
class ExpanseList extends StatelessWidget {
  final List<Expanse>expanse;
  final void Function (Expanse expanse) onRemoveExpense;

   ExpanseList({super.key, required this.expanse, required this.onRemoveExpense});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: expanse.length,
        itemBuilder: (ctx, index){
          
          return Dismissible(
            onDismissed: (direction){
                onRemoveExpense(expanse[index]);

            },
              key: ValueKey(expanse[index]),
              child: ExpanseItem(expanse[index]));
        }


    );
  }
}
