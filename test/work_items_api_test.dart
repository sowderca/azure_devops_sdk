import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WorkItemsApi
void main() {
  var instance = WorkItemsApi();

  group('tests for WorkItemsApi', () {
    // Creates a single work item.
    //
    //Future<WorkItem> create(String organization, String project, String type, String apiVersion, JsonPatchDocument body, { bool validateOnly, bool bypassRules, bool suppressNotifications, String $expand }) async 
    test('test create', () async {
      // TODO
    });

    // Deletes the specified work item and sends it to the Recycle Bin, so that it can be restored back, if required. Optionally, if the destroy parameter has been set to true, it destroys the work item permanently. WARNING: If the destroy parameter is set to true, work items deleted by this command will NOT go to recycle-bin and there is no way to restore/recover them after deletion. It is recommended NOT to use this parameter. If you do, please use this parameter with extreme caution.
    //
    //Future<WorkItemDelete> delete(String organization, int id, String project, String apiVersion, { bool destroy }) async 
    test('test delete', () async {
      // TODO
    });

    // Returns a single work item.
    //
    //Future<WorkItem> get Work Item(String organization, int id, String project, String apiVersion, { String fields, DateTime asOf, String $expand }) async 
    test('test get Work Item', () async {
      // TODO
    });

    // Returns a single work item from a template.
    //
    //Future<WorkItem> get Work Item Template(String organization, String project, String type, String apiVersion, { String fields, DateTime asOf, String $expand }) async 
    test('test get Work Item Template', () async {
      // TODO
    });

    // Gets work items for a list of work item ids (Maximum 200)
    //
    //Future<List<WorkItem>> get Work Items Batch(String organization, String project, String apiVersion, WorkItemBatchGetRequest body) async 
    test('test get Work Items Batch', () async {
      // TODO
    });

    // Returns a list of work items (Maximum 200)
    //
    //Future<List<WorkItem>> list(String organization, String ids, String project, String apiVersion, { String fields, DateTime asOf, String $expand, String errorPolicy }) async 
    test('test list', () async {
      // TODO
    });

    // Updates a single work item.
    //
    //Future<WorkItem> update(String organization, int id, String project, String apiVersion, JsonPatchDocument body, { bool validateOnly, bool bypassRules, bool suppressNotifications, String $expand }) async 
    test('test update', () async {
      // TODO
    });

  });
}
