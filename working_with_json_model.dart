import 'dart:convert';

void main() {
  var rawJson = '{"url": "http://blah.jpg", "id": 1}';

  var parsedJson = jsonDecode(rawJson);
  // We still have to laboouriosly pass in each individual
  // property to create this object
  // var imageModel = ImageModel(id: parsedJson["id"], url: parsedJson["url"]);
  var imageModel = ImageModel.fromJson(parsedJson: parsedJson);

  print(imageModel.id);
  print(imageModel.url);
}

class ImageModel {
  // Same as the properties of the JSON
  late int id;
  late String url;

  // Unnamed Constructor
  ImageModel({required this.id, required this.url});

  // Named Constructor
  ImageModel.fromJson({required parsedJson}) {
    id = parsedJson["id"];
    url = parsedJson["url"];
  }
}
