import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for FeedUpdate
void main() {
  var instance = FeedUpdate();

  group('test FeedUpdate', () {
    // If set, the feed will allow upload of packages that exist on the upstream
    // bool allowUpstreamNameConflict (default value: null)
    test('to test the property `allowUpstreamNameConflict`', () async {
      // TODO
    });

    // If set, this feed supports generation of package badges.
    // bool badgesEnabled (default value: null)
    test('to test the property `badgesEnabled`', () async {
      // TODO
    });

    // The view that the feed administrator has indicated is the default experience for readers.
    // String defaultViewId (default value: null)
    test('to test the property `defaultViewId`', () async {
      // TODO
    });

    // A description for the feed.  Descriptions must not exceed 255 characters.
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // If set, feed will hide all deleted/unpublished versions
    // bool hideDeletedPackageVersions (default value: null)
    test('to test the property `hideDeletedPackageVersions`', () async {
      // TODO
    });

    // A GUID that uniquely identifies this feed.
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // A name for the feed. feed names must follow these rules: <list type=\"bullet\"><item><description> Must not exceed 64 characters </description></item><item><description> Must not contain whitespaces </description></item><item><description> Must not start with an underscore or a period </description></item><item><description> Must not end with a period </description></item><item><description> Must not contain any of the following illegal characters: <![CDATA[ @, ~, ;, {, }, \\, +, =, <, >, |, /, \\\\, ?, :, &, $, *, \\\", #, [, ] ]]></description></item></list>
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // OBSOLETE: If set, the feed can proxy packages from an upstream feed
    // bool upstreamEnabled (default value: null)
    test('to test the property `upstreamEnabled`', () async {
      // TODO
    });

    // A list of sources that this feed will fetch packages from.  An empty list indicates that this feed will not search any additional sources for packages.
    // List<UpstreamSource> upstreamSources (default value: [])
    test('to test the property `upstreamSources`', () async {
      // TODO
    });


  });

}
