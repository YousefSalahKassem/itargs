import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itargs/features/Home/model/audio.dart';
import 'package:itargs/features/Home/repository/remote/radio_repository.dart';

abstract class IRadioRepository {
  static final provider = Provider<RadioRepository>((ref) => RadioRepository());

  Future<Radio> getRadio();
}
