import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_counter_03/my_store.dart';

class CounterModel {
  int counter = 0;
}

class AddMutation extends VxMutation<MyStore> {
  @override
  perform() {
    store!.counterModel.counter++;
  }
}

class SubtractMutation extends VxMutation<MyStore> {
  @override
  perform() {
    store!.counterModel.counter--;
  }
}
