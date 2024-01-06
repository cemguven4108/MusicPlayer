import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/api/bloc/song/songs_bloc/songs_bloc.dart';
import 'package:music_player/api/bloc/song/songs_bloc/songs_event.dart';
import 'package:music_player/api/bloc/song/songs_bloc/songs_state.dart';
import 'package:music_player/pages/home/songs_view/song_card.dart';

class SongList extends StatelessWidget {
  const SongList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongsBloc, SongsState>(
      builder: (context, state) {
        if (state is SongsInitial) {
          context.read<SongsBloc>().add(GetAllSongs());
        }

        if (state is SongsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is SongsError) {
          return const Center(
            child: Text("Error!"),
          );
        }

        if (state is SongsLoaded) {
          final songs = state.songModels;

          return ListView.builder(
            itemCount: songs.length,
            itemBuilder: (context, index) {
              return SongCard(
                songModel: songs[index],
              );
            },
          );
        }

        return const Center(
          child: Text("No Data!"),
        );
      },
    );
  }
}
