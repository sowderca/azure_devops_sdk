import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ShelvesetsApi
void main() {
  var instance = ShelvesetsApi();

  group('tests for ShelvesetsApi', () {
    // Get a single deep shelveset.
    //
    //Future<TfvcShelveset> callGet(String organization, String shelvesetId, String apiVersion, { bool requestDataIncludeLinks, bool requestDataIncludeWorkItems, bool requestDataIncludeDetails, int requestDataMaxChangeCount, int requestDataMaxCommentLength, String requestDataOwner, String requestDataName }) async 
    test('test callGet', () async {
      // TODO
    });

    // Get changes included in a shelveset.
    //
    //Future<List<TfvcChange>> get Shelveset Changes(String organization, String shelvesetId, String apiVersion, { int $top, int $skip }) async 
    test('test get Shelveset Changes', () async {
      // TODO
    });

    // Get work items associated with a shelveset.
    //
    //Future<List<AssociatedWorkItem>> get Shelveset Work Items(String organization, String shelvesetId, String apiVersion) async 
    test('test get Shelveset Work Items', () async {
      // TODO
    });

  });
}
