import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for Phase
void main() {
  var instance = Phase();

  group('test Phase', () {
    // The condition that must be true for this phase to execute.
    // String condition (default value: null)
    test('to test the property `condition`', () async {
      // TODO
    });

    // List<Dependency> dependencies (default value: [])
    test('to test the property `dependencies`', () async {
      // TODO
    });

    // The job authorization scope for builds queued against this definition.
    // String jobAuthorizationScope (default value: null)
    test('to test the property `jobAuthorizationScope`', () async {
      // TODO
    });

    // The cancellation timeout, in minutes, for builds queued against this definition.
    // int jobCancelTimeoutInMinutes (default value: null)
    test('to test the property `jobCancelTimeoutInMinutes`', () async {
      // TODO
    });

    // The job execution timeout, in minutes, for builds queued against this definition.
    // int jobTimeoutInMinutes (default value: null)
    test('to test the property `jobTimeoutInMinutes`', () async {
      // TODO
    });

    // The name of the phase.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // The unique ref name of the phase.
    // String refName (default value: null)
    test('to test the property `refName`', () async {
      // TODO
    });

    // List<BuildDefinitionStep> steps (default value: [])
    test('to test the property `steps`', () async {
      // TODO
    });

    // PhaseTarget target (default value: null)
    test('to test the property `target`', () async {
      // TODO
    });

    // Map<String, BuildDefinitionVariable> variables (default value: {})
    test('to test the property `variables`', () async {
      // TODO
    });


  });

}
