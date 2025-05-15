import 'package:flutter/material.dart';

import '../../model/expense_model.dart';
class ExpanseItem extends StatelessWidget {
  final Expanse expanse;
  ExpanseItem(this.expanse, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(expanse.title),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(expanse.amount.toString()),

              Row(
                children: [
                  Icon(catagoryIcon[expanse.category]),
                  Text(expanse.formattedDate),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
