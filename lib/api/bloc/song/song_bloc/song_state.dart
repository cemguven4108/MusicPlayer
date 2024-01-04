import 'package:music_player/models/song_model.dart';

abstract class SongState {}

class SongInitial extends SongState {}

class SongLoading extends SongState {}

class SongLoaded extends SongState {
  final SongModel songModel;

  SongLoaded({
    required this.songModel,
  });
}

class SongError extends SongState {}

class SongSuccess extends SongState {}