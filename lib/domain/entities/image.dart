
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';

@freezed
class Image with _$Image {
  const factory Image({
    required String id,
    required String url,
    required String blurHash,
}) = _Image;

}