import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ItemsApi
void main() {
  var instance = ItemsApi();

  group('tests for ItemsApi', () {
    // Post for retrieving a creating a batch out of a set of items in a repo / project given a list of paths or a long path
    //
    //Future<List<List<String>>> get Items Batch(String organization, String repositoryId, String project, String apiVersion, GitItemRequestData body) async 
    test('test get Items Batch', () async {
      // TODO
    });

    // Post for retrieving a set of items given a list of paths or a long path. Allows for specifying the recursionLevel and version descriptors for each path.
    //
    //Future<List<List<String>>> get Items Batch_0(String organization, String project, String apiVersion, TfvcItemRequestData body) async 
    test('test get Items Batch_0', () async {
      // TODO
    });

    // Get Item Metadata and/or Content for a collection of items. The download parameter is to indicate whether the content should be available as a download or just sent as a stream in the response. Doesn't apply to zipped content which is always returned as a download.
    //
    //Future<List<GitItem>> list(String organization, String repositoryId, String project, String apiVersion, { String scopePath, String recursionLevel, bool includeContentMetadata, bool latestProcessedChange, bool download, bool includeLinks, String $format, String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType }) async 
    test('test list', () async {
      // TODO
    });

    // Get a list of Tfvc items
    //
    //Future<List<TfvcItem>> list_0(String organization, String project, String apiVersion, { String scopePath, String recursionLevel, bool includeLinks, String versionDescriptorVersion, String versionDescriptorVersionType, String versionDescriptorVersionOption }) async 
    test('test list_0', () async {
      // TODO
    });

  });
}
