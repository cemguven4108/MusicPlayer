import 'package:music_player/models/song_model.dart';

abstract class SongEvent {}

class AddSong extends SongEvent {
  final SongModel songModel;

  AddSong({
    required this.songModel,
  });
}

class UpdateSong extends SongEvent {
  final SongModel songModel;

  UpdateSong({
    required this.songModel,
  });
}

class DeleteSong extends SongEvent {
  final String id;

  DeleteSong({
    required this.id,
  });
}

class GetSong extends SongEvent {
  final String id;

  GetSong({
    required this.id,
  });
}