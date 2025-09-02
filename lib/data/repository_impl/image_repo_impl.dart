import 'package:mini_task/data/data_sources/remote_data_sources/image_data_sources.dart';

import 'package:mini_task/domain/entities/image_entity.dart';

import 'package:mini_task/domain/repository/image_repository.dart';

class ImageRepoImpl extends ImageRepository {
  final ImageDataSources imageDataSources;

  ImageRepoImpl({required this.imageDataSources});

  @override
  Future<List<ImageEntity>> getImage() {
    return imageDataSources.getImages();
  }
}
