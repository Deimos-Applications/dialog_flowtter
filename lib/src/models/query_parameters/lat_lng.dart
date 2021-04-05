import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lat_lng.g.dart';

@JsonSerializable()

/// {@template lat_lng_template}
/// An object representing a latitude/longitude pair.
///
/// This is expressed as a pair of doubles representing degrees latitude and
/// degrees longitude.
///
/// Unless specified otherwise, this must conform to the
/// [WGS84 standard](http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf).
/// Values must be within normalized ranges.
/// {@endtemplate}
class LatLng extends Equatable {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  final double? latitude;

  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  final double? longitude;

  /// {@macro lat_lng_template}
  LatLng({
    this.latitude,
    this.longitude,
  });

  ///
  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$LatLngToJson(this);

  @override
  List<Object?> get props => [
        latitude,
        longitude,
      ];
}
