import 'package:bloc/bloc.dart';
import 'package:music_player/api/bloc/song/songs_bloc/songs_event.dart';
import 'package:music_player/api/bloc/song/songs_bloc/songs_state.dart';
import 'package:music_player/api/repository/song_repository.dart';

class SongsBloc extends Bloc<SongsEvent, SongsState> {
  final SongRepository songRepository;

  SongsBloc({
    required this.songRepository,
  }) : super(SongsInitial()) {
    on<GetAllSongs>(_onGetAll);
  }

  void _onGetAll(
      GetAllSongs event, Emitter<SongsState> emit) async {
    emit(SongsLoading());

    final songModels = await songRepository.getAllSongs();

    emit(SongsLoaded(songModels: songModels));
  }
}