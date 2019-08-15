import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for Plan
void main() {
  var instance = Plan();

  group('test Plan', () {
    // IdentityRef createdByIdentity (default value: null)
    test('to test the property `createdByIdentity`', () async {
      // TODO
    });

    // Date when the plan was created
    // DateTime createdDate (default value: null)
    test('to test the property `createdDate`', () async {
      // TODO
    });

    // Description of the plan
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Id of the plan
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // IdentityRef modifiedByIdentity (default value: null)
    test('to test the property `modifiedByIdentity`', () async {
      // TODO
    });

    // Date when the plan was last modified. Default to CreatedDate when the plan is first created.
    // DateTime modifiedDate (default value: null)
    test('to test the property `modifiedDate`', () async {
      // TODO
    });

    // Name of the plan
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // The PlanPropertyCollection instance associated with the plan. These are dependent on the type of the plan. For example, DeliveryTimelineView, it would be of type DeliveryViewPropertyCollection.
    // Object properties (default value: null)
    test('to test the property `properties`', () async {
      // TODO
    });

    // Revision of the plan. Used to safeguard users from overwriting each other's changes.
    // int revision (default value: null)
    test('to test the property `revision`', () async {
      // TODO
    });

    // Type of the plan
    // String type (default value: null)
    test('to test the property `type`', () async {
      // TODO
    });

    // The resource url to locate the plan via rest api
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });

    // Bit flag indicating set of permissions a user has to the plan.
    // String userPermissions (default value: null)
    test('to test the property `userPermissions`', () async {
      // TODO
    });


  });

}
