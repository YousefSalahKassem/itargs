import 'package:itargs/features/Home/model/audio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'i_local_radio_repository.dart';

class LocalRadioRepository extends ILocalRadioRepository {
  LocalRadioRepository();

  @override
  Future<void> addRadio(Radio radio) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('radio_data', radio.url);
  }

  @override
  Future<String?> getRadio() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('radio_data');
  }
}
