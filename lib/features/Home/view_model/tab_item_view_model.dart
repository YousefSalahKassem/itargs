import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itargs/features/Home/model/tab_model.dart';

class TabItemViewModel extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => TabItemViewModel());

  TabItemViewModel();

  Tab currentTab = Tab.home();

  Tab get getCurrentTab => currentTab;

  void setCurrentTab(int index) {
    currentTab = Tab.findByIndex(index);
    notifyListeners();
  }
}
