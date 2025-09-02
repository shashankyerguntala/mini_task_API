import 'package:mini_task/domain/entities/image_entity.dart';

abstract class ImageRepository {
  Future<List<ImageEntity>> getImage();
}
