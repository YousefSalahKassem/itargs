import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itargs/core/notifiers/global_state.dart';
import 'package:itargs/features/Home/repository/local/i_local_radio_repository.dart';
import 'package:itargs/features/Home/repository/remote/i_radio_repository.dart';

class RadioViewModel extends StateNotifier<GlobalStates<String>> {
  final IRadioRepository iRadioRepository;
  final ILocalRadioRepository iLocalRadioRepository;

  RadioViewModel(
    this.iLocalRadioRepository,
    this.iRadioRepository,
  ) : super(
          GlobalStates.initial(),
        ) {
    _getRadio();
  }

  static final provider =
      StateNotifierProvider<RadioViewModel, GlobalStates<String>>(
    (ref) => RadioViewModel(
      ref.watch(ILocalRadioRepository.provider),
      ref.watch(IRadioRepository.provider),
    ),
  );

  Future<void> _getRadio() async {
    try {
      state = GlobalStates.loading();
      final radio = await _getRadioFromCacheOrFetch();
      state = GlobalStates.success(radio);
    } catch (error) {
      state =
          GlobalStates.fail("Failed to fetch radio data: ${error.toString()}");
    }
  }

  Future<String> _getRadioFromCacheOrFetch() async {
    try {
      final cachedRadio = await iLocalRadioRepository.getRadio();
      if (cachedRadio != null) {
        return cachedRadio;
      }

      final remoteRadio = await iRadioRepository.getRadio();
      await iLocalRadioRepository.addRadio(remoteRadio);
      return remoteRadio.url;
    } catch (error) {
      state =
          GlobalStates.fail("Failed to fetch radio data: ${error.toString()}");
      return error.toString();
    }
  }
}
