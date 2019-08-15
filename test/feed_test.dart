import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for Feed
void main() {
  var instance = Feed();

  group('test Feed', () {
    // Supported capabilities of a feed.
    // String capabilities (default value: null)
    test('to test the property `capabilities`', () async {
      // TODO
    });

    // This will either be the feed GUID or the feed GUID and view GUID depending on how the feed was accessed.
    // String fullyQualifiedId (default value: null)
    test('to test the property `fullyQualifiedId`', () async {
      // TODO
    });

    // Full name of the view, in feed@view format.
    // String fullyQualifiedName (default value: null)
    test('to test the property `fullyQualifiedName`', () async {
      // TODO
    });

    // A GUID that uniquely identifies this feed.
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // If set, all packages in the feed are immutable.  It is important to note that feed views are immutable; therefore, this flag will always be set for views.
    // bool isReadOnly (default value: null)
    test('to test the property `isReadOnly`', () async {
      // TODO
    });

    // A name for the feed. feed names must follow these rules: <list type=\"bullet\"><item><description> Must not exceed 64 characters </description></item><item><description> Must not contain whitespaces </description></item><item><description> Must not start with an underscore or a period </description></item><item><description> Must not end with a period </description></item><item><description> Must not contain any of the following illegal characters: <![CDATA[ @, ~, ;, {, }, \\, +, =, <, >, |, /, \\\\, ?, :, &, $, *, \\\", #, [, ] ]]></description></item></list>
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // ProjectReference project (default value: null)
    test('to test the property `project`', () async {
      // TODO
    });

    // OBSOLETE: This should always be true.  Setting to false will override all sources in UpstreamSources.
    // bool upstreamEnabled (default value: null)
    test('to test the property `upstreamEnabled`', () async {
      // TODO
    });

    // A list of sources that this feed will fetch packages from.  An empty list indicates that this feed will not search any additional sources for packages.
    // List<UpstreamSource> upstreamSources (default value: [])
    test('to test the property `upstreamSources`', () async {
      // TODO
    });

    // FeedView view (default value: null)
    test('to test the property `view`', () async {
      // TODO
    });

    // View Id.
    // String viewId (default value: null)
    test('to test the property `viewId`', () async {
      // TODO
    });

    // View name.
    // String viewName (default value: null)
    test('to test the property `viewName`', () async {
      // TODO
    });


  });

}
