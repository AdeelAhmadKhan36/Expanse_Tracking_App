import 'package:flutter/material.dart';

import '../../model/expense_model.dart';
class ExpanseItem extends StatelessWidget {
  final Expanse expanse;
  ExpanseItem(this.expanse, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Card(
          color: Colors.indigo,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(expanse.title, style: TextStyle(color: Colors.white),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(expanse.amount.toString(),style: TextStyle(color: Colors.white)),

                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(catagoryIcon[expanse.category],color: Colors.white,),
                          Text(expanse.formattedDate,style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
