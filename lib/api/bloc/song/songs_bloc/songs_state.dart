
import 'package:music_player/models/song_model.dart';

abstract class SongsState {}

class SongsInitial extends SongsState {}

class SongsLoading extends SongsState {}

class SongsLoaded extends SongsState {
  final List<SongModel> songModels;

  SongsLoaded({
    required this.songModels,
  });
}

class SongsError extends SongsState {}

class SongsSuccess extends SongsState {}