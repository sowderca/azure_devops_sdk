import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for FeedRetentionPolicy
void main() {
  var instance = FeedRetentionPolicy();

  group('test FeedRetentionPolicy', () {
    // This attribute is deprecated and is not honoured by retention
    // int ageLimitInDays (default value: null)
    test('to test the property `ageLimitInDays`', () async {
      // TODO
    });

    // Maximum versions to preserve per package and package type.
    // int countLimit (default value: null)
    test('to test the property `countLimit`', () async {
      // TODO
    });

    // Number of days to preserve a package version after its latest download.
    // int daysToKeepRecentlyDownloadedPackages (default value: null)
    test('to test the property `daysToKeepRecentlyDownloadedPackages`', () async {
      // TODO
    });


  });

}
