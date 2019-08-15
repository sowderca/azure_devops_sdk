import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TaskgroupsApi
void main() {
  var instance = TaskgroupsApi();

  group('tests for TaskgroupsApi', () {
    // Create a task group.
    //
    //Future<TaskGroup> add(String organization, String project, String apiVersion, TaskGroupCreateParameter body) async 
    test('test add', () async {
      // TODO
    });

    // Delete a task group.
    //
    //Future delete(String organization, String project, String taskGroupId, String apiVersion, { String comment }) async 
    test('test delete', () async {
      // TODO
    });

    // List task groups.
    //
    //Future<List<TaskGroup>> list(String organization, String project, String taskGroupId, String apiVersion, { bool expanded, String taskIdFilter, bool deleted, int $top, DateTime continuationToken, String queryOrder }) async 
    test('test list', () async {
      // TODO
    });

    // Update a task group.
    //
    //Future<TaskGroup> update(String organization, String project, String taskGroupId, String apiVersion, TaskGroupUpdateParameter body) async 
    test('test update', () async {
      // TODO
    });

  });
}
