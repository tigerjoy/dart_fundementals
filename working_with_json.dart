import 'dart:convert';

void main() {
  var rawJson = '{"url": "http://blah.jpg", "id": 1}';

  // This is a Map similar to object in JavaScript or
  // dictionary in Python

  // Dart does not know here at compile time
  // what properties will be present in the json it
  // is decoding and what is the type of each property

  // So a Model class is created to contain the JSON
  // data and give Dart a better idea about the data
  // we are parsing
  var parsedJson = jsonDecode(rawJson);

  print(parsedJson);
  print(parsedJson['url']);
  print(parsedJson['id']);
}
