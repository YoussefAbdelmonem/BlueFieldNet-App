import 'package:bluefieldnet/modules/post_a_job/widgets/job_visibility_widget/widgets/country_code.dart';
import 'package:easy_localization/easy_localization.dart';

/// Country element. This is the element that contains all the information
class CountryCode {
  /// the name of the country
  String? name;

  /// the flag of the country
  final String? flagUri;

  /// the country code (IT,AF..)
  final String? code;

  /// the dial code (+39,+93..)
  final String? dialCode;

  CountryCode({
    this.name,
    this.flagUri,
    this.code,
    this.dialCode,
  });

  // @Deprecated('Use `fromCountryCode` instead.')
  // factory CountryCode.fromCode(String isoCode) {
  //   return CountryCode.fromCountryCode(isoCode);
  // }

  // factory CountryCode.fromCountryCode(String countryCode) {
  //   final Map<String, String>? jsonCode = codes.firstWhereOrNull(
  //     (code) => code['code'] == countryCode,
  //   );
  //   return CountryCode.fromJson(jsonCode!);
  // }

  // factory CountryCode.fromDialCode(String dialCode) {
  //   final Map<String, String>? jsonCode = codes.firstWhereOrNull(
  //     (code) => code['dial_code'] == dialCode,
  //   );
  //   return CountryCode.fromJson(jsonCode!);
  // }

  CountryCode localize() {
    return this..name = code?.tr();
  }

  factory CountryCode.fromJson(Map<String, dynamic> json) {
    return CountryCode(
      name: json['name'].toString(),
      code: json['code'].toString(),
      dialCode: json['dial_code'],
      flagUri: 'assets/flags/${json['code'].toLowerCase()}.png',
    );
  }

  @override
  String toString() => "$dialCode";

  String toLongString() => "$dialCode ${toCountryStringOnly()}";

  String toCountryStringOnly() {
    return '$_cleanName';
  }

  String? get _cleanName {
    return name?.replaceAll(RegExp(r'[[\]]'), '').split(',').first;
  }
}

List<Map<String, String>> jsonList = codes;
