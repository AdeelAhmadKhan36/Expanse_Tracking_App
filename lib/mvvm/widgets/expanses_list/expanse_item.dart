import 'package:flutter/material.dart';

import '../../config/app_themes/my_fonts.dart';
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

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(expanse.title,

                  style: Theme.of(context).textTheme.bodyLarge, // Uses yellow!



                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(expanse.amount.toString(),style:AppTextStyles.small),

                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(catagoryIcon[expanse.category],color: Colors.white,),
                          Text(expanse.formattedDate,style:AppTextStyles.small),
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
