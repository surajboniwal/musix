import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:musix/core/network_manager.dart';
import 'package:musix/data/models/api_response/api_response.dart';
import 'package:musix/data/models/home_data/home_data.dart';
import 'package:musix/data/models/song_collection/song_collection.dart';

class SaavnRepository {
  SaavnRepository(this.networkManager);
  NetworkManager networkManager;

  Future<ApiResponse<HomeData>> fetchHomeData() async {
    try {
      Response response = await networkManager.dio.get(
        '__call=webapi.getLaunchData',
      );

      return ApiResponse.success(HomeData.fromJson(jsonDecode(response.data)));
    } on DioError catch (_) {
      return ApiResponse.error('Api error');
    } catch (err, s) {
      print(s);
      return ApiResponse.error('Something went wrong');
    }
  }

  Future<ApiResponse<SongCollection>> fetchSongCollection(String type, String token) async {
    try {
      Response response = await networkManager.dio.get(
        '__call=webapi.get&token=${token}&type=${type}',
      );

      // log(response.data.toString());

      return ApiResponse.success(SongCollection.fromJson(jsonDecode(response.data)));
    } on DioError catch (_) {
      return ApiResponse.error('Api error');
    } catch (err, s) {
      print(s);
      return ApiResponse.error('Something went wrong');
    }
  }
}
