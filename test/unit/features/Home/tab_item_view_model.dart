import 'package:flutter_test/flutter_test.dart';
import 'package:itargs/features/Home/model/tab_model.dart';
import 'package:itargs/features/Home/view_model/tab_item_view_model.dart';
import 'package:mockito/mockito.dart';

class MockTabItemViewModel extends Mock implements TabItemViewModel {}

void main() {
  late TabItemViewModel tabItemViewModel;

  setUp(() {
    tabItemViewModel = TabItemViewModel();
  });

  test('Initial tab is home', () {
    expect(tabItemViewModel.getCurrentTab.title, Tab.home().title);
  });

  test('Set current tab updates the tab', () {
    tabItemViewModel.setCurrentTab(1);
    expect(tabItemViewModel.getCurrentTab.title, Tab.findByIndex(1).title);
  });

}
