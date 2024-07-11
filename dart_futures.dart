import 'dart:async';

// main() {
//   print("About to fetch data!");

//   // This Future variable returned by get()
//   // will notify us when the data has been fetched
//   get("http:/dsadsadsa").then((result) {
//     // This will be printed after 3 seconds
//     print(result);
//   });
// }

// Alternate way of working with Futures
void main() async {
  print("About to fetch data!");

  // This Future variable returned by get()
  // will notify us when the data has been fetched
  var result = await get("http:/dsadsadsa");
  print(result);
}

// Returs "Got the data!" after 3 seconds
Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 3), () {
    return "Got the data!";
  });
}
