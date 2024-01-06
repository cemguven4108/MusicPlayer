import 'package:flutter/material.dart';
import 'package:music_player/models/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.songModel,
  });

  final SongModel songModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 25,
      color: Colors.black38,
      child: Text(
        songModel.name,
      ),
    );
  }
}