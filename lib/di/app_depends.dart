import 'package:dfa_media/core/config/config.dart';
import 'package:dfa_media/features/home/data/data_source/home_remote.dart';
import 'package:dfa_media/features/home/data/data_source/home_remote_impl.dart';
import 'package:dfa_media/features/home/data/repository/home_repository_impl.dart';
import 'package:dfa_media/features/home/domain/repository/home_repository.dart';
import 'package:dfa_media/features/home/domain/use_case/get_banner.dart';
import 'package:dfa_media/features/home/domain/use_case/get_product.dart';
import 'package:dfa_media/features/home/domain/use_case/get_story.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

typedef OnError = void Function(
  String name,
  Object error,
  StackTrace? stackTrace,
);

typedef OnProgress = void Function(
  String name,
  String progress,
);

final class AppDepends {
  late final Dio dio;

  late final HomeRemote homeRemote;
  late final HomeRepository homeRepository;
  late final GetBanner getBanner;
  late final GetProduct getProduct;
  late final GetStory getStory;

  Future<void> init({
    required OnError onError,
    required OnProgress onProgress,
  }) async {
    try {
      await dotenv.load(
        fileName: ".env",
      );
      onProgress("Env", "Success");
    } on Object catch (error, stackTrace) {
      onError('error', error, stackTrace);
    }

    try {
      if (kDebugMode) {
        dio = Dio(
          BaseOptions(
            baseUrl: Config.baseUrl,
          ),
        );
      } else {
        // TODO
      }
      onProgress("Dio", "Success");
    } on Object catch (error, stackTrace) {
      onError('error', error, stackTrace);
    }


    // Remote Home
    try {
      homeRemote = HomeRemoteImpl(dio: dio);
      onProgress("homeRemote", "Success");
    } on Object catch (error, stackTrace) {
      onError('error', error, stackTrace);
    }

    // Repository Home
    try {
      homeRepository = HomeRepositoryImpl(homeRemote: homeRemote);
      onProgress("homeRepository", "Success");
    } on Object catch (error, stackTrace) {
      onError('error', error, stackTrace);
    }

    // UseCase Home
    try {
      getBanner = GetBanner(homeRepository: homeRepository);
      getProduct = GetProduct(homeRepository: homeRepository);
      getStory = GetStory(homeRepository: homeRepository);
      onProgress("GetBanner", "Success");
      onProgress("GetProduct", "Success");
      onProgress("GetStory", "Success");
    } on Object catch (error, stackTrace) {
      onError('error', error, stackTrace);
    }
  }
}
