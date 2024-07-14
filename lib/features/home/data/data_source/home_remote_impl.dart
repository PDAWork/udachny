import 'package:dfa_media/core/config/end_points.dart';
import 'package:dfa_media/features/home/data/data_source/home_remote.dart';
import 'package:dfa_media/features/home/data/model/banner_model.dart';
import 'package:dfa_media/features/home/data/model/product_model.dart';
import 'package:dfa_media/features/home/data/model/story_model.dart';
import 'package:dio/dio.dart';

final class HomeRemoteImpl implements HomeRemote {
  final Dio _dio;

  HomeRemoteImpl({required Dio dio}) : _dio = dio;

  @override
  Future<List<BannerModel>> getBanner() async {
    try {
      final response = await _dio.get(EndPoints.banner.path);
      return List.from(
        (response.data["banners"] as List<dynamic>)
            .map(
              (e) => BannerModel.fromJson(e),
            )
            .toList(),
      );
    } on DioException catch (error) {
      throw error.response?.data;
    }
  }

  @override
  Future<List<ProductModel>> getProduct() async {
    try {
      final response = await _dio.get(EndPoints.product.path);
      return List.from(
        (response.data["products"] as List<dynamic>)
            .map(
              (e) => ProductModel.fromJson(e),
            )
            .toList(),
      );
    } on DioException catch (error) {
      throw error.response?.data;
    }
  }

  @override
  Future<List<StoryModel>> getStory() async {
    try {
      final response = await _dio.get(EndPoints.story.path);
      return List.from(
        (response.data["story"] as List<dynamic>)
            .map(
              (e) => StoryModel.fromJson(e),
            )
            .toList(),
      );
    } on DioException catch (error) {
      throw error.response?.data;
    }
  }
}
