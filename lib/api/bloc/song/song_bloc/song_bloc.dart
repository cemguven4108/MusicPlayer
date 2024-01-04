import 'package:bloc/bloc.dart';
import 'package:music_player/api/bloc/song/song_bloc/song_event.dart';
import 'package:music_player/api/bloc/song/song_bloc/song_state.dart';
import 'package:music_player/api/repository/song_repository.dart';

class SongBloc extends Bloc<SongEvent, SongState> {
  final SongRepository songRepository;

  SongBloc({required this.songRepository})
      : super(SongInitial()) {
    on<AddSong>(_onAdd);
    on<UpdateSong>(_onUpdate);
    on<DeleteSong>(_onDelete);
    on<GetSong>(_onGet);
  }

  void _onAdd(AddSong event, Emitter<SongState> emit) async {
    emit(SongLoading());

    final response = await songRepository.addSong(
      event.songModel,
    );

    if (response) {
      emit(SongSuccess());
    } else {
      emit(SongError());
    }
  }

  void _onUpdate(UpdateSong event, Emitter<SongState> emit) async {
    emit(SongLoading());

    final response = await songRepository.updateSong(
      event.songModel,
    );

    if (response) {
      emit(SongSuccess());
    } else {
      emit(SongError());
    }
  }

  void _onDelete(DeleteSong event, Emitter<SongState> emit) async {
    emit(SongLoading());

    final response = await songRepository.deleteSong(
      event.id,
    );

    if (response) {
      emit(SongSuccess());
    } else {
      emit(SongError());
    }
  }

  void _onGet(GetSong event, Emitter<SongState> emit) async {
    emit(SongLoading());

    final songModel = await songRepository.getSong(
      event.id,
    );

    if (songModel != null) {
      emit(SongLoaded(songModel: songModel));
    } else {
      emit(SongError());
    }
  }
}