
import '../../data/model/image_model.dart';
import '../entities/image.dart';

extension ImageMapper on ImageModel {
  Image toDomain() {
    return Image(
      id: id,
      blurHash: blurHash?? "",
      url: url,
    );
  }
}

extension ImageModelMapper on Image{
  ImageModel toData() {
    return ImageModel(
      id: id,
      blurHash: blurHash,
      url: url,
    );
  }
}