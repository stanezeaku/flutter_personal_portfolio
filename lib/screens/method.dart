import 'package:url_launcher/url_launcher.dart';

class Method {
  launchURL(String link) async {
    var urlLink = link;
    Uri uri = Uri.parse(link);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $urlLink';
    }
  }

  launchCaller() async {
    const url = "tel:00971565548121";
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    Uri uri = Uri.parse("mailto:stanleyezeakuu@gmail.com");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch';
    }
  }
}
