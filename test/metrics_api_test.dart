import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for MetricsApi
void main() {
  var instance = MetricsApi();

  group('tests for MetricsApi', () {
    // Gets build metrics for a definition.
    //
    //Future<List<BuildMetric>> get Definition Metrics(String organization, String project, int definitionId, String apiVersion, { DateTime minMetricsTime }) async 
    test('test get Definition Metrics', () async {
      // TODO
    });

    // Gets build metrics for a project.
    //
    //Future<List<BuildMetric>> get Project Metrics(String organization, String project, String metricAggregationType, String apiVersion, { DateTime minMetricsTime }) async 
    test('test get Project Metrics', () async {
      // TODO
    });

  });
}
