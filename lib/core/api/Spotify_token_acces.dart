import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_spotifyclone/core/api/api_and_ids.dart';

Future<String> getSpotifyAccessToken() async {
  // Encode the client ID and secret in Base64
  String credentials = base64.encode(utf8.encode('$clientId:$clientSecret'));

  // Spotify token endpoint
  Uri tokenUrl = Uri.parse('https://accounts.spotify.com/api/token');

  // Prepare the POST request body
  var body = { 
    'grant_type': 'client_credentials',
  };

  // Send the POST request to get the access token
  var response = await http.post(
    tokenUrl,
    headers: {
      'Authorization': 'Basic $credentials',
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: body,
  );

  if (response.statusCode == 200) {
    var responseData = json.decode(response.body);
    String accessToken = responseData['access_token'];
    return accessToken;
  } else {
    throw Exception('Failed to obtain access token');
  }
}
