import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for SecurityNamespaceDescription
void main() {
  var instance = SecurityNamespaceDescription();

  group('test SecurityNamespaceDescription', () {
    // The list of actions that this Security Namespace is responsible for securing.
    // List<ActionDefinition> actions (default value: [])
    test('to test the property `actions`', () async {
      // TODO
    });

    // This is the dataspace category that describes where the security information for this SecurityNamespace should be stored.
    // String dataspaceCategory (default value: null)
    test('to test the property `dataspaceCategory`', () async {
      // TODO
    });

    // This localized name for this namespace.
    // String displayName (default value: null)
    test('to test the property `displayName`', () async {
      // TODO
    });

    // If the security tokens this namespace will be operating on need to be split on certain character lengths to determine its elements, that length should be specified here. If not, this value will be -1.
    // int elementLength (default value: null)
    test('to test the property `elementLength`', () async {
      // TODO
    });

    // This is the type of the extension that should be loaded from the plugins directory for extending this security namespace.
    // String extensionType (default value: null)
    test('to test the property `extensionType`', () async {
      // TODO
    });

    // If true, the security namespace is remotable, allowing another service to proxy the namespace.
    // bool isRemotable (default value: null)
    test('to test the property `isRemotable`', () async {
      // TODO
    });

    // This non-localized for this namespace.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // The unique identifier for this namespace.
    // String namespaceId (default value: null)
    test('to test the property `namespaceId`', () async {
      // TODO
    });

    // The permission bits needed by a user in order to read security data on the Security Namespace.
    // int readPermission (default value: null)
    test('to test the property `readPermission`', () async {
      // TODO
    });

    // If the security tokens this namespace will be operating on need to be split on certain characters to determine its elements that character should be specified here. If not, this value will be the null character.
    // String separatorValue (default value: null)
    test('to test the property `separatorValue`', () async {
      // TODO
    });

    // Used to send information about the structure of the security namespace over the web service.
    // int structureValue (default value: null)
    test('to test the property `structureValue`', () async {
      // TODO
    });

    // The bits reserved by system store
    // int systemBitMask (default value: null)
    test('to test the property `systemBitMask`', () async {
      // TODO
    });

    // If true, the security service will expect an ISecurityDataspaceTokenTranslator plugin to exist for this namespace
    // bool useTokenTranslator (default value: null)
    test('to test the property `useTokenTranslator`', () async {
      // TODO
    });

    // The permission bits needed by a user in order to modify security data on the Security Namespace.
    // int writePermission (default value: null)
    test('to test the property `writePermission`', () async {
      // TODO
    });


  });

}
