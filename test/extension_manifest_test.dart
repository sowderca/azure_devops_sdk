import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ExtensionManifest
void main() {
  var instance = ExtensionManifest();

  group('test ExtensionManifest', () {
    // Uri used as base for other relative uri's defined in extension
    // String baseUri (default value: null)
    test('to test the property `baseUri`', () async {
      // TODO
    });

    // List of shared constraints defined by this extension
    // List<ContributionConstraint> constraints (default value: [])
    test('to test the property `constraints`', () async {
      // TODO
    });

    // List of contributions made by this extension
    // List<Contribution> contributions (default value: [])
    test('to test the property `contributions`', () async {
      // TODO
    });

    // List of contribution types defined by this extension
    // List<ContributionType> contributionTypes (default value: [])
    test('to test the property `contributionTypes`', () async {
      // TODO
    });

    // List of explicit demands required by this extension
    // List<String> demands (default value: [])
    test('to test the property `demands`', () async {
      // TODO
    });

    // ExtensionEventCallbackCollection eventCallbacks (default value: null)
    test('to test the property `eventCallbacks`', () async {
      // TODO
    });

    // Secondary location that can be used as base for other relative uri's defined in extension
    // String fallbackBaseUri (default value: null)
    test('to test the property `fallbackBaseUri`', () async {
      // TODO
    });

    // Language Culture Name set by the Gallery
    // String language (default value: null)
    test('to test the property `language`', () async {
      // TODO
    });

    // ExtensionLicensing licensing (default value: null)
    test('to test the property `licensing`', () async {
      // TODO
    });

    // Version of the extension manifest format/content
    // double manifestVersion (default value: null)
    test('to test the property `manifestVersion`', () async {
      // TODO
    });

    // Default user claims applied to all contributions (except the ones which have been specified restrictedTo explicitly) to control the visibility of a contribution.
    // List<String> restrictedTo (default value: [])
    test('to test the property `restrictedTo`', () async {
      // TODO
    });

    // List of all oauth scopes required by this extension
    // List<String> scopes (default value: [])
    test('to test the property `scopes`', () async {
      // TODO
    });

    // The ServiceInstanceType(Guid) of the VSTS service that must be available to an account in order for the extension to be installed
    // String serviceInstanceType (default value: null)
    test('to test the property `serviceInstanceType`', () async {
      // TODO
    });


  });

}
