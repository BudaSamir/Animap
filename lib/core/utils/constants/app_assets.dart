import 'package:flutter_svg/flutter_svg.dart';

const iconsPath = "assets/icons";
const imagesPath = "assets/images";

class AppAssets {
  static const String appLogo = '$iconsPath/app_icon.svg';
  static const String getStarted = '$imagesPath/get_started_image.svg';
  static const String noNetwork = '$imagesPath/core/no_network.jpg';

  /// Auth
  static const String hidePassword = '$iconsPath/hide_password.svg';
  static const String showPassword = '$iconsPath/show_password.svg';
  static const String valid = '$iconsPath/valid.svg';
  static const String error = '$iconsPath/error.svg';
  static const String communityMember = '$imagesPath/community_member.svg';
  static const String shelter = '$imagesPath/shelter.svg';
  static const String vet = '$imagesPath/VET.svg';
  static const String accountInformation =
      '$imagesPath/account_information.svg';

  /// Social Media
  static const String facebook = '$iconsPath/facebook.svg';
  static const String google = '$iconsPath/google.svg';
  static const String x = '$iconsPath/x.svg';

  static svgPrecacheImage() {
    const cacheSvgImages = [AppAssets.getStarted];
    for (String element in cacheSvgImages) {
      var loader = SvgAssetLoader(element);
      svg.cache
          .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }
  }
}
