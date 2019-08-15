import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for BehaviorsApi
void main() {
  var instance = BehaviorsApi();

  group('tests for BehaviorsApi', () {
    // Returns a behavior of the process.
    //
    //Future<ProcessBehavior> callGet(String organization, String processId, String behaviorRefName, String apiVersion, { String $expand }) async 
    test('test callGet', () async {
      // TODO
    });

    // Creates a single behavior in the given process.
    //
    //Future<ProcessBehavior> create(String organization, String processId, String apiVersion, ProcessBehaviorCreateRequest body) async 
    test('test create', () async {
      // TODO
    });

    // Removes a behavior in the process.
    //
    //Future delete(String organization, String processId, String behaviorRefName, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Returns a list of all behaviors in the process.
    //
    //Future<List<ProcessBehavior>> list(String organization, String processId, String apiVersion, { String $expand }) async 
    test('test list', () async {
      // TODO
    });

    // Returns a list of behaviors for the process.
    //
    //Future<List<AdminBehavior>> list_0(String organization, String processId, String apiVersion) async 
    test('test list_0', () async {
      // TODO
    });

    // Replaces a behavior in the process.
    //
    //Future<ProcessBehavior> update(String organization, String processId, String behaviorRefName, String apiVersion, ProcessBehaviorUpdateRequest body) async 
    test('test update', () async {
      // TODO
    });

  });
}
