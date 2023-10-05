import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itargs/features/Home/model/audio.dart';

import 'local_radio_repository.dart';

abstract class ILocalRadioRepository {
  static final provider = Provider<LocalRadioRepository>((ref) => LocalRadioRepository());

  Future<void> addRadio(Radio radio);

  Future<String?> getRadio();
}
