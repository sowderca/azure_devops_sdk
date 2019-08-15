import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitQueryCommitsCriteria
void main() {
  var instance = GitQueryCommitsCriteria();

  group('test GitQueryCommitsCriteria', () {
    // Number of entries to skip
    // int $skip (default value: null)
    test('to test the property `$skip`', () async {
      // TODO
    });

    // Maximum number of entries to retrieve
    // int $top (default value: null)
    test('to test the property `$top`', () async {
      // TODO
    });

    // Alias or display name of the author
    // String author (default value: null)
    test('to test the property `author`', () async {
      // TODO
    });

    // GitVersionDescriptor compareVersion (default value: null)
    test('to test the property `compareVersion`', () async {
      // TODO
    });

    // Only applies when an itemPath is specified. This determines whether to exclude delete entries of the specified path.
    // bool excludeDeletes (default value: null)
    test('to test the property `excludeDeletes`', () async {
      // TODO
    });

    // If provided, a lower bound for filtering commits alphabetically
    // String fromCommitId (default value: null)
    test('to test the property `fromCommitId`', () async {
      // TODO
    });

    // If provided, only include history entries created after this date (string)
    // String fromDate (default value: null)
    test('to test the property `fromDate`', () async {
      // TODO
    });

    // What Git history mode should be used. This only applies to the search criteria when Ids = null and an itemPath is specified.
    // String historyMode (default value: null)
    test('to test the property `historyMode`', () async {
      // TODO
    });

    // If provided, specifies the exact commit ids of the commits to fetch. May not be combined with other parameters.
    // List<String> ids (default value: [])
    test('to test the property `ids`', () async {
      // TODO
    });

    // Whether to include the _links field on the shallow references
    // bool includeLinks (default value: null)
    test('to test the property `includeLinks`', () async {
      // TODO
    });

    // Whether to include the push information
    // bool includePushData (default value: null)
    test('to test the property `includePushData`', () async {
      // TODO
    });

    // Whether to include the image Url for committers and authors
    // bool includeUserImageUrl (default value: null)
    test('to test the property `includeUserImageUrl`', () async {
      // TODO
    });

    // Whether to include linked work items
    // bool includeWorkItems (default value: null)
    test('to test the property `includeWorkItems`', () async {
      // TODO
    });

    // Path of item to search under
    // String itemPath (default value: null)
    test('to test the property `itemPath`', () async {
      // TODO
    });

    // GitVersionDescriptor itemVersion (default value: null)
    test('to test the property `itemVersion`', () async {
      // TODO
    });

    // If provided, an upper bound for filtering commits alphabetically
    // String toCommitId (default value: null)
    test('to test the property `toCommitId`', () async {
      // TODO
    });

    // If provided, only include history entries created before this date (string)
    // String toDate (default value: null)
    test('to test the property `toDate`', () async {
      // TODO
    });

    // Alias or display name of the committer
    // String user (default value: null)
    test('to test the property `user`', () async {
      // TODO
    });


  });

}
