import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for WidgetMetadata
void main() {
  var instance = WidgetMetadata();

  group('test WidgetMetadata', () {
    // Sizes supported by the Widget.
    // List<WidgetSize> allowedSizes (default value: [])
    test('to test the property `allowedSizes`', () async {
      // TODO
    });

    // Opt-in boolean that indicates if the widget requires the Analytics Service to function. Widgets requiring the analytics service are hidden from the catalog if the Analytics Service is not available.
    // bool analyticsServiceRequired (default value: null)
    test('to test the property `analyticsServiceRequired`', () async {
      // TODO
    });

    // Resource for an icon in the widget catalog.
    // String catalogIconUrl (default value: null)
    test('to test the property `catalogIconUrl`', () async {
      // TODO
    });

    // Opt-in URL string pointing at widget information. Defaults to extension marketplace URL if omitted
    // String catalogInfoUrl (default value: null)
    test('to test the property `catalogInfoUrl`', () async {
      // TODO
    });

    // The id of the underlying contribution defining the supplied Widget custom configuration UI. Null if custom configuration UI is not available.
    // String configurationContributionId (default value: null)
    test('to test the property `configurationContributionId`', () async {
      // TODO
    });

    // The relative id of the underlying contribution defining the supplied Widget custom configuration UI. Null if custom configuration UI is not available.
    // String configurationContributionRelativeId (default value: null)
    test('to test the property `configurationContributionRelativeId`', () async {
      // TODO
    });

    // Indicates if the widget requires configuration before being added to dashboard.
    // bool configurationRequired (default value: null)
    test('to test the property `configurationRequired`', () async {
      // TODO
    });

    // Uri for the widget content to be loaded from .
    // String contentUri (default value: null)
    test('to test the property `contentUri`', () async {
      // TODO
    });

    // The id of the underlying contribution defining the supplied Widget.
    // String contributionId (default value: null)
    test('to test the property `contributionId`', () async {
      // TODO
    });

    // Optional default settings to be copied into widget settings.
    // String defaultSettings (default value: null)
    test('to test the property `defaultSettings`', () async {
      // TODO
    });

    // Summary information describing the widget.
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Widgets can be disabled by the app store.  We'll need to gracefully handle for: - persistence (Allow) - Requests (Tag as disabled, and provide context)
    // bool isEnabled (default value: null)
    test('to test the property `isEnabled`', () async {
      // TODO
    });

    // Opt-out boolean that indicates if the widget supports widget name/title configuration. Widgets ignoring the name should set it to false in the manifest.
    // bool isNameConfigurable (default value: null)
    test('to test the property `isNameConfigurable`', () async {
      // TODO
    });

    // Opt-out boolean indicating if the widget is hidden from the catalog. Commonly, this is used to allow developers to disable creation of a deprecated widget. A widget must have a functional default state, or have a configuration experience, in order to be visible from the catalog.
    // bool isVisibleFromCatalog (default value: null)
    test('to test the property `isVisibleFromCatalog`', () async {
      // TODO
    });

    // LightboxOptions lightboxOptions (default value: null)
    test('to test the property `lightboxOptions`', () async {
      // TODO
    });

    // Resource for a loading placeholder image on dashboard
    // String loadingImageUrl (default value: null)
    test('to test the property `loadingImageUrl`', () async {
      // TODO
    });

    // User facing name of the widget type. Each widget must use a unique value here.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Publisher Name of this kind of widget.
    // String publisherName (default value: null)
    test('to test the property `publisherName`', () async {
      // TODO
    });

    // Data contract required for the widget to function and to work in its container.
    // List<Object> supportedScopes (default value: [])
    test('to test the property `supportedScopes`', () async {
      // TODO
    });

    // Contribution target IDs
    // List<String> targets (default value: [])
    test('to test the property `targets`', () async {
      // TODO
    });

    // Deprecated: locally unique developer-facing id of this kind of widget. ContributionId provides a globally unique identifier for widget types.
    // String typeId (default value: null)
    test('to test the property `typeId`', () async {
      // TODO
    });


  });

}
