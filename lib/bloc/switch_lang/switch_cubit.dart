import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:order_ready/core/services/services.dart';
part 'switch_state.dart';

class SwitchCubit extends Cubit<bool> {
  SwitchCubit()
      : super((box.read("stateSwitch") == null)
            ? false
            : box.read("stateSwitch"));

  void toggleSwitch(bool isOn) {
    emit(isOn);
  }
}
