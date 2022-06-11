import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musix/data/models/musix_entity/musix_entity.dart';
import 'package:musix/data/repository/saavn_repository.dart';
import 'package:musix/domain/song_collection_bloc/song_collection_bloc.dart';
import 'package:musix/presentation/theme/colors.dart';
import 'package:musix/presentation/widgets/scroll_glow_remove.dart';

class SongCollectionScreen extends StatelessWidget {
  const SongCollectionScreen({Key? key, required this.entity}) : super(key: key);

  final MusixEntity entity;

  static const String route = '/song_collection';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider<SongCollectionBloc>(
        create: (context) => SongCollectionBloc(context.read<SaavnRepository>())
          ..add(SongCollectionEvent.load(entity)),
        child: BlocBuilder<SongCollectionBloc, SongCollectionState>(
          builder: (context, state) {
            return state.when(
              initial: () => SizedBox.shrink(),
              loading: () => Center(child: CupertinoActivityIndicator()),
              error: (error) => Center(child: Text(error)),
              data: (data) => ScrollGlowRemove(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .3,
                        width: MediaQuery.of(context).size.height * .3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: CachedNetworkImage(
                            imageUrl: data.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    '${data.title}',
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  '${data.listCount} ${data.listCount == "1" ? "Song" : "Songs"}',
                                  style: TextStyle(
                                    color: AppColors.whiteColor.withOpacity(.5),
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              data.subtitle,
                              style: TextStyle(
                                color: AppColors.whiteColor.withOpacity(.5),
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              data.headerDesc,
                              style: TextStyle(
                                color: AppColors.whiteColor.withOpacity(.5),
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: data.list.length,
                        itemBuilder: (context, index) => ListTile(
                          onTap: () {
                            data.list[index].play(context);
                          },
                          title: Text(
                            data.list[index].title,
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.8,
                            ),
                            maxLines: 1,
                          ),
                          subtitle: Text(
                            data.list[index].subtitle,
                            style: TextStyle(
                              color: AppColors.whiteColor.withOpacity(.4),
                              fontSize: 12.0,
                            ),
                            maxLines: 1,
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.download,
                              color: AppColors.whiteColor.withOpacity(.6),
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: CachedNetworkImageProvider(
                              data.list[index].image,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
