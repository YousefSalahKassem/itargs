import 'package:flutter_test/flutter_test.dart';
import 'package:itargs/core/helpers/defs.dart';

JsonMap<String> createJsonMap() {
  return {'key1': 'value1', 'key2': 'value2'};
}

void main() {
  group('JsonMap', () {
    test('createJsonMap should return a JsonMap', () {
      final jsonMap = createJsonMap();

      expect(jsonMap, isA<JsonMap<String>>());

      expect(jsonMap, containsPair('key1', 'value1'));
      expect(jsonMap, containsPair('key2', 'value2'));
    });

    test('JsonMap can be used in a function parameter', () {
      void processJsonMap(JsonMap<String> jsonMap) {
        expect(jsonMap, containsPair('key1', 'value1'));
        expect(jsonMap, containsPair('key2', 'value2'));
      }

      final jsonMap = createJsonMap();
      processJsonMap(jsonMap);
    });


    test('JsonMap can be empty', () {
      final emptyJsonMap = <String, String>{};

      expect(emptyJsonMap, isA<JsonMap<String>>());
      expect(emptyJsonMap.isEmpty, isTrue);
    });
  });
}
