import 'package:url_launcher/url_launcher.dart' as launcher;

class UrlUtil {
  static bool isUrl(String url) => isHttp(url) || isHttps(url) || isFtp(url);

  static bool isHttp(String? url) =>
      url != null && url.toLowerCase().contains("http://");

  static bool isHttps(String? url) =>
      url != null && url.toLowerCase().contains("https://");

  static bool isFtp(String? url) =>
      url != null && url.toLowerCase().contains("ftp://");

  /// 拨打号码
  static launchTel(String tel) => launcher.launchUrl(Uri.parse("tel:$tel"));

  static launchUrl(String urlString) =>
      launcher.launchUrl(Uri.parse(urlString));
}
