import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for Forks
void main() {
  var instance = Forks();

  group('test Forks', () {
    // Indicates whether a build should use secrets when building forks of the selected repository.
    // bool allowSecrets (default value: null)
    test('to test the property `allowSecrets`', () async {
      // TODO
    });

    // Indicates whether the trigger should queue builds for forks of the selected repository.
    // bool enabled (default value: null)
    test('to test the property `enabled`', () async {
      // TODO
    });


  });

}
