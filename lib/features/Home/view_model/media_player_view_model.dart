import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_cache/just_audio_cache.dart';

class MediaPlayerViewModel extends StateNotifier<bool> {
  late final AudioPlayer _player;
  final String url;
  static final provider =
      StateNotifierProvider.family<MediaPlayerViewModel, bool, String>(
    (ref, url) => MediaPlayerViewModel(url),
  );

  MediaPlayerViewModel(this.url) : super(false);

  void init() {
    _player = AudioPlayer();
    _player.dynamicSet(url: url);
    _player.playerStateStream.listen((currentState) {
      state = currentState.playing;
    });
  }

  Future<void> _playAudio() async {
    _player.play();
  }

  Future<void> _pauseAudio() async {
    _player.pause();
  }

  Future<void> toggle() async {
    if (state == true) {
      _pauseAudio();
    } else {
      _playAudio();
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }
}
