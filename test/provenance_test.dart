import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for Provenance
void main() {
  var instance = Provenance();

  group('test Provenance', () {
    // Other provenance data.
    // Map<String, String> data (default value: {})
    test('to test the property `data`', () async {
      // TODO
    });

    // Type of provenance source, for example \"InternalBuild\", \"InternalRelease\"
    // String provenanceSource (default value: null)
    test('to test the property `provenanceSource`', () async {
      // TODO
    });

    // Identity of user that published the package
    // String publisherUserIdentity (default value: null)
    test('to test the property `publisherUserIdentity`', () async {
      // TODO
    });

    // HTTP User-Agent used when pushing the package.
    // String userAgent (default value: null)
    test('to test the property `userAgent`', () async {
      // TODO
    });


  });

}
