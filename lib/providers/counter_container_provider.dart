import 'package:flutter/cupertino.dart';

class CounterStateProvider extends ChangeNotifier {
  bool showCounterContainer = false;
  int selectedIndex = -1;
  bool isCounterZero = false;

  void setCounterValue(bool _show) {
    showCounterContainer = _show;
    notifyListeners();
  }

  void setCounterZero(bool _isZero) {
    isCounterZero = _isZero;
    notifyListeners();
  }

  void saveSelectedIndex(int _index) {
    selectedIndex = _index;
    notifyListeners();
  }

  bool getCounterValue() => showCounterContainer;

  int getSelectedIndex() => selectedIndex;

  bool getCounterZero() => isCounterZero;
}
