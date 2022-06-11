import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musix/core/network_manager.dart';
import 'package:musix/data/repository/saavn_repository.dart';
import 'package:musix/domain/song_bloc/song_bloc.dart';
import 'package:musix/musix.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiRepositoryProvider(
      providers: [
        ///
        /// Network manager at top level of the app
        ///
        RepositoryProvider<NetworkManager>(
          create: (context) => NetworkManager(),
        ),

        ///
        /// Network repositories
        ///
        RepositoryProvider<SaavnRepository>(
          create: (context) => SaavnRepository(context.read<NetworkManager>()),
        ),
      ],
      child: BlocProvider(
        create: (context) => SongBloc(),
        child: const MusixApp(),
      ),
    ),
  );
}
