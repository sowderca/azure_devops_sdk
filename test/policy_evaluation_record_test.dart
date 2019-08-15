import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for PolicyEvaluationRecord
void main() {
  var instance = PolicyEvaluationRecord();

  group('test PolicyEvaluationRecord', () {
    // ReferenceLinks links (default value: null)
    test('to test the property `links`', () async {
      // TODO
    });

    // A string which uniquely identifies the target of a policy evaluation.
    // String artifactId (default value: null)
    test('to test the property `artifactId`', () async {
      // TODO
    });

    // Time when this policy finished evaluating on this pull request.
    // DateTime completedDate (default value: null)
    test('to test the property `completedDate`', () async {
      // TODO
    });

    // PolicyConfiguration configuration (default value: null)
    test('to test the property `configuration`', () async {
      // TODO
    });

    // JObject context (default value: null)
    test('to test the property `context`', () async {
      // TODO
    });

    // Guid which uniquely identifies this evaluation record (one policy running on one pull request).
    // String evaluationId (default value: null)
    test('to test the property `evaluationId`', () async {
      // TODO
    });

    // Time when this policy was first evaluated on this pull request.
    // DateTime startedDate (default value: null)
    test('to test the property `startedDate`', () async {
      // TODO
    });

    // Status of the policy (Running, Approved, Failed, etc.)
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });


  });

}
