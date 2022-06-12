import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musix/core/navigation.dart';
import 'package:musix/presentation/screens/screens.dart';
import 'package:musix/presentation/theme/colors.dart';
import 'package:musix/presentation/theme/themes.dart';

import 'domain/song_bloc/song_bloc.dart';

class MusixApp extends StatelessWidget {
  const MusixApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musix',
      theme: AppThemes.appTheme(context),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MusixNavigation.generateRoute,
      initialRoute: NavigationScreen.route,
      builder: (context, child) {
        return Stack(
          children: [
            child!,
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BottomMusicPlayer(),
                Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0) +
                      const EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 22, 22, 22),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.library_music)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class BottomMusicPlayer extends StatelessWidget {
  const BottomMusicPlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongBloc, SongState>(
      builder: (context, state) {
        return state.maybeWhen(
          song: (song) => Material(
            color: Colors.transparent,
            child: Container(
              height: 56.0,
              margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: context.read<SongBloc>().color,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: CachedNetworkImage(
                          imageUrl: song.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.0),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          song.subtitle,
                          style: TextStyle(
                            color: Colors.white.withOpacity(.4),
                            fontSize: 12.0,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8.0),
                ],
              ),
            ),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
