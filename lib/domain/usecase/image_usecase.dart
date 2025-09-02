import 'package:mini_task/domain/entities/image_entity.dart';

import 'package:mini_task/domain/repository/image_repository.dart';

class ImageUsecase {
  final ImageRepository imageRepository;

  ImageUsecase({required this.imageRepository});
  Future<List<ImageEntity>> getImage() async {
    return await imageRepository.getImage();
  }
}
