```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data - this may throw an error if the JSON structure is unexpected
      final String name = jsonData['name'];
      print('Name: $name');
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle errors
    print('Error: $e');
    // This catch block may mask unexpected errors like jsonDecode errors
    rethrow;
  }
}
```