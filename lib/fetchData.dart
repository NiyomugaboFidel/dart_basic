import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  await fetchData();
}

Future<void> fetchData() async {

  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');

  final response = await http.get(url);
  if (response.statusCode == 200) {
    Map<String, dynamic>  data = convert.jsonDecode(response.body);
    print(data['title']);
    print(data['body']);
    print(data['userId']);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
