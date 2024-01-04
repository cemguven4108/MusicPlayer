import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/api/bloc/song/song_bloc/song_bloc.dart';
import 'package:music_player/api/bloc/song/songs_bloc/songs_bloc.dart';
import 'package:music_player/api/bloc/user/user_bloc/user_bloc.dart';
import 'package:music_player/api/repository/song_repository.dart';
import 'package:music_player/api/repository/user_repository.dart';
import 'package:music_player/pages/home/home_page.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SongBloc(
            songRepository: SongRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => SongsBloc(
            songRepository: SongRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => UserBloc(
            userRepository: UserRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: const HomePage(),
      ),
    ),
  );
}
