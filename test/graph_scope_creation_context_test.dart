import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GraphScopeCreationContext
void main() {
  var instance = GraphScopeCreationContext();

  group('test GraphScopeCreationContext', () {
    // Set this field to override the default description of this scope's admin group.
    // String adminGroupDescription (default value: null)
    test('to test the property `adminGroupDescription`', () async {
      // TODO
    });

    // All scopes have an Administrator Group that controls access to the contents of the scope. Set this field to use a non-default group name for that administrators group.
    // String adminGroupName (default value: null)
    test('to test the property `adminGroupName`', () async {
      // TODO
    });

    // Set this optional field if this scope is created on behalf of a user other than the user making the request. This should be the Id of the user that is not the requester.
    // String creatorId (default value: null)
    test('to test the property `creatorId`', () async {
      // TODO
    });

    // The scope must be provided with a unique name within the parent scope. This means the created scope can have a parent or child with the same name, but no siblings with the same name.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // The type of scope being created.
    // String scopeType (default value: null)
    test('to test the property `scopeType`', () async {
      // TODO
    });

    // An optional ID that uniquely represents the scope within it's parent scope. If this parameter is not provided, Vsts will generate on automatically.
    // String storageKey (default value: null)
    test('to test the property `storageKey`', () async {
      // TODO
    });


  });

}
