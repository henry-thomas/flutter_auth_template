import 'package:http/http.dart' as http;

class API {
  static void login() async {
    var request =
        http.Request('POST', Uri.parse('http://localhost:9081/data/login'));
    request.bodyFields = {
      'email': 'henrythomastzn@live.com',
      'password': '1234'
    };

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
