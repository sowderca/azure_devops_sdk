import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for LabelsApi
void main() {
  var instance = LabelsApi();

  group('tests for LabelsApi', () {
    // Get a single deep label.
    //
    //Future<TfvcLabel> callGet(String organization, String labelId, String project, String apiVersion, { bool requestDataIncludeLinks, int requestDataMaxItemCount, String requestDataItemLabelFilter, String requestDataOwner, String requestDataName, String requestDataLabelScope }) async 
    test('test callGet', () async {
      // TODO
    });

    // Get items under a label.
    //
    //Future<List<TfvcItem>> get Label Items(String organization, String labelId, String apiVersion, { int $top, int $skip }) async 
    test('test get Label Items', () async {
      // TODO
    });

    // Get a collection of shallow label references.
    //
    //Future<List<TfvcLabelRef>> list(String organization, String project, String apiVersion, { bool requestDataIncludeLinks, int requestDataMaxItemCount, String requestDataItemLabelFilter, String requestDataOwner, String requestDataName, String requestDataLabelScope, int $top, int $skip }) async 
    test('test list', () async {
      // TODO
    });

  });
}
