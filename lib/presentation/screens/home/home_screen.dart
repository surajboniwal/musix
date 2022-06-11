import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musix/data/models/musix_entity/musix_entity.dart';
import 'package:musix/data/repository/saavn_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musix/domain/home_bloc/home_bloc.dart';
import 'package:musix/presentation/screens/screens.dart';
import 'package:musix/presentation/theme/colors.dart';
import 'package:musix/presentation/widgets/scroll_glow_remove.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(context.read<SaavnRepository>())..add(HomeEvent.load()),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.when(
                initial: () => SizedBox.shrink(),
                loading: () => Center(child: CupertinoActivityIndicator()),
                error: (error) => Center(child: Text(error)),
                data: (data) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Hi There,',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                    MusixEntityHomeList(
                      title: 'Trending Now',
                      entities: data.newTrending,
                    ),
                    MusixEntityHomeList(
                      title: 'Top Playlists',
                      entities: data.topPlaylists,
                    ),
                    MusixEntityHomeList(
                      title: 'New Albums',
                      entities: data.newAlbums,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MusixEntityHomeList extends StatelessWidget {
  const MusixEntityHomeList({
    Key? key,
    required this.title,
    required this.entities,
  }) : super(key: key);

  final String title;
  final List<MusixEntity> entities;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              color: AppColors.secondaryColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
        SizedBox(
          height: 170,
          child: ScrollGlowRemove(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              itemCount: entities.length,
              itemBuilder: (context, index) => MusixEntityTile(entity: entities[index]),
            ),
          ),
        ),
      ],
    );
  }
}

class MusixEntityTile extends StatelessWidget {
  const MusixEntityTile({
    Key? key,
    required this.entity,
  }) : super(key: key);

  final MusixEntity entity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (entity.type) {
          case MusixEntityType.playlist:
          case MusixEntityType.chart:
          case MusixEntityType.album:
            Navigator.of(context).pushNamed(SongCollectionScreen.route, arguments: entity);
            break;
          case MusixEntityType.song:
            break;
        }
      },
      child: AspectRatio(
        aspectRatio: 0.85,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: CachedNetworkImage(
                  imageUrl: entity.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 2.0),
              child: Text(
                entity.title,
                maxLines: 1,
                style: TextStyle(
                  color: AppColors.whiteColor,
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                entity.subtitle,
                maxLines: 1,
                style: TextStyle(
                  color: AppColors.whiteColor.withOpacity(.4),
                  fontSize: 12.0,
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
