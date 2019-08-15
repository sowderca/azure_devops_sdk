import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for MetricsRow
void main() {
  var instance = MetricsRow();

  group('test MetricsRow', () {
    // The values of the properties mentioned as 'Dimensions' in column header. E.g. 1: For a property 'LastJobStatus' - metrics will be provided for 'passed', 'failed', etc. E.g. 2: For a property 'TargetState' - metrics will be provided for 'online', 'offline' targets.
    // List<String> dimensions (default value: [])
    test('to test the property `dimensions`', () async {
      // TODO
    });

    // Metrics in serialized format. Should be deserialized based on the data type provided in header.
    // List<String> metrics (default value: [])
    test('to test the property `metrics`', () async {
      // TODO
    });


  });

}
