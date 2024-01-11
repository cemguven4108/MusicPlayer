import 'package:flutter/material.dart';
import 'package:music_player/models/song_model.dart';
import 'package:music_player/pages/home/songs_view/song_card.dart';

class SongList extends StatelessWidget {
  const SongList({
    super.key,
    required this.songModels,
  });

  final List<SongModel> songModels;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songModels.length,
      itemBuilder: (context, index) {
        return SongCard(
          songModel: songModels[index],
        );
      },
    );
  }
}
