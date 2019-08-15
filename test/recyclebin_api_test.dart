import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RecyclebinApi
void main() {
  var instance = RecyclebinApi();

  group('tests for RecyclebinApi', () {
    // Gets a deleted work item from Recycle Bin.
    //
    //Future<WorkItemDelete> callGet(String organization, int id, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Destroys the specified work item permanently from the Recycle Bin. This action can not be undone.
    //
    //Future destroy Work Item(String organization, int id, String project, String apiVersion) async 
    test('test destroy Work Item', () async {
      // TODO
    });

    // Gets a list of the IDs and the URLs of the deleted the work items in the Recycle Bin.
    //
    //Future<List<WorkItemDeleteShallowReference>> get Deleted Work Item Shallow References(String organization, String project, String apiVersion) async 
    test('test get Deleted Work Item Shallow References', () async {
      // TODO
    });

    // Restores the deleted work item from Recycle Bin.
    //
    //Future<WorkItemDelete> restore Work Item(String organization, int id, String project, String apiVersion, WorkItemDeleteUpdate body) async 
    test('test restore Work Item', () async {
      // TODO
    });

  });
}
