import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musix/data/models/api_response/api_response.dart';
import 'package:musix/data/models/home_data/home_data.dart';
import 'package:musix/data/repository/saavn_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SaavnRepository saavnRepository;

  HomeBloc(this.saavnRepository) : super(_Initial()) {
    on<HomeEvent>((event, emit) async {
      if (event is _Load) {
        emit(HomeState.loading());
        final homeData = await saavnRepository.fetchHomeData();

        if (homeData.status == Status.ERROR) {
          emit(HomeState.error(homeData.message));
          return;
        }

        emit(HomeState.data(homeData.data));
      }
    });
  }
}
