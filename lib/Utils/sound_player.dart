import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';

const pathToSaveAudio = 'audio_example.aac';

class SoundPlayer {
  FlutterSoundPlayer? _audioPlayer;

  bool get isPlaying => _audioPlayer!.isPlaying;

  Future _play(VoidCallback? whenFinished) async {
    await _audioPlayer!.startPlayer(
      whenFinished: whenFinished,
      fromURI: pathToSaveAudio,
    );
  }

  Future _stop() async {
    await _audioPlayer!.stopPlayer();
  }

  Future twitchPlayer({required VoidCallback? whenFinished}) async {
    if (_audioPlayer!.isStopped) {
      await _play(whenFinished);
    } else {
      await _stop();
    }
  }

  Future init() async {
    _audioPlayer = FlutterSoundPlayer();
    await _audioPlayer!.openAudioSession(
      withUI: true,

      /// Play data from a track specification and display controls on the lock screen or an Apple Watch.
      ///
      /// The Audio Session must have been open with the parameter `withUI`.
    );
  }

  void dispose() {
    _audioPlayer!.closeAudioSession();
    _audioPlayer = null;
  }
}
