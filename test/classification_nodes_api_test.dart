import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ClassificationNodesApi
void main() {
  var instance = ClassificationNodesApi();

  group('tests for ClassificationNodesApi', () {
    // Gets the classification node for a given node path.
    //
    //Future<WorkItemClassificationNode> callGet(String organization, String project, String structureGroup, String path, String apiVersion, { int $depth }) async 
    test('test callGet', () async {
      // TODO
    });

    // Create new or update an existing classification node.
    //
    //Future<WorkItemClassificationNode> create Or Update(String organization, String project, String structureGroup, String path, String apiVersion, WorkItemClassificationNode body) async 
    test('test create Or Update', () async {
      // TODO
    });

    // Delete an existing classification node.
    //
    //Future delete(String organization, String project, String structureGroup, String path, String apiVersion, { int $reclassifyId }) async 
    test('test delete', () async {
      // TODO
    });

    // Gets root classification nodes under the project.
    //
    //Future<List<WorkItemClassificationNode>> get Root Nodes(String organization, String project, String apiVersion, { int $depth }) async 
    test('test get Root Nodes', () async {
      // TODO
    });

    // Update an existing classification node.
    //
    //Future<WorkItemClassificationNode> update(String organization, String project, String structureGroup, String path, String apiVersion, WorkItemClassificationNode body) async 
    test('test update', () async {
      // TODO
    });

  });
}
