import 'package:project_spotifyclone/core/CommonErrorText.dart';

Future<String> extractNames(String text) async {
  String playlists =
      '<a href=spotify:playlist:37i9dQZF1EIZN5AnupUfOn>JIN</a>, <a href=spotify:playlist:37i9dQZF1EIVV3BdOLxqav>V</a> and <a href=spotify:playlist:37i9dQZF1EIZ3AXntLiLMm>Jung Kook</a>';

  // Extract artist names using regular expressions
  RegExp exp = RegExp(r'<a.*?>(.*?)<\/a>');
  Iterable<RegExpMatch> matches = exp.allMatches(playlists);
  List<String> artistNames = [];
  for (RegExpMatch match in matches) {
    String? artistName = match.group(1);
    artistNames.add(artistName ?? error_text);
  }
  String result = artistNames.join(",");
  return result;
}
