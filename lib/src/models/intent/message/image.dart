import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()

/// {@template dialog_image_template}
/// The image response message.
/// {@endtemplate}
class DialogImage extends Equatable {
  /// The public URI to an image file.
  final String? imageUri;

  /// A text description of the image to be used for accessibility, e.g.,
  /// screen readers.
  final String? accessibilityText;

  /// {@macro dialog_image_template}
  DialogImage({
    this.imageUri,
    this.accessibilityText,
  });

  ///
  factory DialogImage.fromJson(Map<String, dynamic> json) =>
      _$DialogImageFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$DialogImageToJson(this);

  @override
  List<Object?> get props => [
        imageUri,
        accessibilityText,
      ];
}
