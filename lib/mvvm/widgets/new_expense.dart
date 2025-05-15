import 'package:flutter/material.dart';

import '../model/expense_model.dart';
class new_Expanse_Screen extends StatefulWidget {
  const new_Expanse_Screen({super.key});

  @override
  State<new_Expanse_Screen> createState() => _new_Expanse_ScreenState();
}

class _new_Expanse_ScreenState extends State<new_Expanse_Screen> {
  var _enteredTitle= '';
  DateTime? _selectDate;
  TextEditingController titleController= TextEditingController();
  TextEditingController amountController= TextEditingController();
  Category _selectedCategory=Category.leisure;
  // void _saveTitleInput(String inputTitle){
  //         _enteredTitle=inputTitle;
  // }

  void _presentDatePicker()async{
    final now=DateTime.now();
    final firstDate=DateTime(now.year-1, now.month, now.day);

   final pickedDate=await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now,

    );
   setState(() {
     _selectDate=pickedDate;
   });
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            // onChanged: _saveTitleInput,
            maxLength: 50,
            decoration: InputDecoration(

              label:Text("Title"),
            ),

          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: amountController,
                  maxLength: 50,
                  decoration: InputDecoration(
                    label: Text("Amount"),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Row(
                  children: [
                    Text(_selectDate==null?'No Date is Selected':formatter.format(_selectDate!)),
                    IconButton(onPressed:_presentDatePicker, icon: Icon(Icons.calendar_month)),
                  ],
                ),
              ),
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton(

                  items: Category.values.map(

                  (category)=>DropdownMenuItem(
                      value: category,

                      child: Text(category.name.toUpperCase())
                  )
              ).toList(),
                  onChanged: (value){
                        print(value);
                        if(value==null){
                          return;
                        }
                        setState(() {

                          Category.work=value;
                        });

                  }),

              ElevatedButton(onPressed: (){
                print(_enteredTitle);
                Navigator.pop(context);

              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,      // 🔵 Background color
                    foregroundColor: Colors.white,     // ⚪ Text/Icon color
                  ),
                  child: Text("Cancel")),

              ElevatedButton(onPressed: (){
                print(_enteredTitle);

              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,      // 🔵 Background color
                    foregroundColor: Colors.white,     // ⚪ Text/Icon color
                  ),
                  child: Text("Save Expanse")),
            ],
          )
        ],
      ),
    );
  }
}
