import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for Artifact
void main() {
  var instance = Artifact();

  group('test Artifact', () {
    // Gets or sets alias.
    // String alias (default value: null)
    test('to test the property `alias`', () async {
      // TODO
    });

    // Gets or sets definition reference. e.g. {\"project\":{\"id\":\"fed755ea-49c5-4399-acea-fd5b5aa90a6c\",\"name\":\"myProject\"},\"definition\":{\"id\":\"1\",\"name\":\"mybuildDefinition\"},\"connection\":{\"id\":\"1\",\"name\":\"myConnection\"}}.
    // Map<String, ArtifactSourceReference> definitionReference (default value: {})
    test('to test the property `definitionReference`', () async {
      // TODO
    });

    // Indicates whether artifact is primary or not.
    // bool isPrimary (default value: null)
    test('to test the property `isPrimary`', () async {
      // TODO
    });

    // Indicates whether artifact is retained by release or not.
    // bool isRetained (default value: null)
    test('to test the property `isRetained`', () async {
      // TODO
    });

    // Gets or sets type. It can have value as 'Build', 'Jenkins', 'GitHub', 'Nuget', 'Team Build (external)', 'ExternalTFSBuild', 'Git', 'TFVC', 'ExternalTfsXamlBuild'.
    // String type (default value: null)
    test('to test the property `type`', () async {
      // TODO
    });


  });

}
