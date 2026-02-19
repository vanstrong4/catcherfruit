import 'package:catcherfruit/game/managers/audio_managers.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';

class FruitCatcherGame extends FlameGame {
  @override
  Color backgroundColor() => const Color.fromARGB(255, 247, 225, 152);
  final ValueNotifier<int> scoreNotifier = ValueNotifier<int>(0);
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    AudioManager().playBackgroundMusic();
  }
}
