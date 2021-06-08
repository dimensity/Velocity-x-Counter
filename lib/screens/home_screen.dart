import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_counter_03/models/counter_model.dart';
import 'package:velocityx_counter_03/my_store.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('****** Build Method Called *********');
    return VxBuilder<MyStore>(
      mutations: {AddMutation, SubtractMutation},
      builder: (context, store, status) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                counterText('Button Press: ${store.counterModel.counter}'),
                addButton(),
                subtractButton(),
              ],
            ),
          ),
        );
      },
    );
  }

//#######################################
//**********  Custom Widgets ***********/


// Counter Text
  Widget counterText(String value) {
    return Text(value);
  }

// Add Button
  Widget addButton() {
    return ElevatedButton(
      child: Text('Add'),
      onPressed: () {
        AddMutation();
      },
    );
  }

// Subtract Button
  Widget subtractButton() {
    return ElevatedButton(
      child: Text('Subtract'),
      onPressed: () {
        SubtractMutation();
      },
    );
  }
}
