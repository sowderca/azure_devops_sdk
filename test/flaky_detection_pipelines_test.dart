import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for FlakyDetectionPipelines
void main() {
  var instance = FlakyDetectionPipelines();

  group('test FlakyDetectionPipelines', () {
    // AllowedPipelines - List All Pipelines allowed for detection.
    // List<int> allowedPipelines (default value: [])
    test('to test the property `allowedPipelines`', () async {
      // TODO
    });

    // IsAllPipelinesAllowed if users configure all system's pipelines.
    // bool isAllPipelinesAllowed (default value: null)
    test('to test the property `isAllPipelinesAllowed`', () async {
      // TODO
    });


  });

}
