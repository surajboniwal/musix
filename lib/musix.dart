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
            BlocBuilder<SongBloc, SongState>(
              builder: (context, state) {
                return state.maybeWhen(
                  song: (song) => Align(
                    alignment: Alignment.bottomCenter,
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        height: 56.0,
                        margin: const EdgeInsets.only(bottom: 12.0) +
                            const EdgeInsets.symmetric(horizontal: 8.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.black,
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
                  ),
                  orElse: () => SizedBox.shrink(),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
