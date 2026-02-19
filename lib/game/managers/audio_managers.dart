import 'package:flame_audio/flame_audio.dart';

class AudioManager {
  static final AudioManager _instance = AudioManager._internal();
  factory AudioManager() => _instance;
  AudioManager._internal();
  bool _isMusicEnabled = true;
  bool _isSfxEnabled = true;
  double _musicVolume = 0.7;
  double _sfxVolume = 1.0;

  bool get isMusicEnabled => _isMusicEnabled;
  bool get isSfxEnabled => _isSfxEnabled;
  double get musicVolume => _musicVolume;
  double get sfxVolume => _sfxVolume;


  Future<void> initialize() async {
  try {
    
  await FlameAudio.audioCache.loadAll([
    'music/xtremefreddy-game-music-loop-7-145285.mp3',
    'sfx/bunny_cube98-apple-bite-316785.mp3',
    'sfx/explosion.mp3',
    'sfx/jump.mp3',
  ]);

  print('Audio initialized successfully');

  } catch (e) {
    print('Error initializing audio: $e');
  }
  }

}