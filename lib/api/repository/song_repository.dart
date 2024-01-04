import 'package:music_player/models/song_model.dart';

class SongRepository {
  Future<bool> addSong(SongModel songModel) {
    return Future(() => true);
  }

  Future<bool> updateSong(SongModel songModel) {
    return Future(() => true);
  }

  Future<bool> deleteSong(String id) {
    return Future(() => true);
  }

  Future<SongModel?> getSong(String id) {
    return Future(() => null);
  }

  Future<List<SongModel>> getAllSongs() {
    return Future(() => []);
  }
}