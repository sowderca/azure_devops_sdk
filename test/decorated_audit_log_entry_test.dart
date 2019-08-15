import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for DecoratedAuditLogEntry
void main() {
  var instance = DecoratedAuditLogEntry();

  group('test DecoratedAuditLogEntry', () {
    // The action if for the event, i.e Git.CreateRepo, Project.RenameProject
    // String actionId (default value: null)
    test('to test the property `actionId`', () async {
      // TODO
    });

    // ActivityId
    // String activityId (default value: null)
    test('to test the property `activityId`', () async {
      // TODO
    });

    // The Actor's CUID
    // String actorCUID (default value: null)
    test('to test the property `actorCUID`', () async {
      // TODO
    });

    // DisplayName of the user who initiated the action
    // String actorDisplayName (default value: null)
    test('to test the property `actorDisplayName`', () async {
      // TODO
    });

    // URL of Actor's Profile image
    // String actorImageUrl (default value: null)
    test('to test the property `actorImageUrl`', () async {
      // TODO
    });

    // The Actor's User Id
    // String actorUserId (default value: null)
    test('to test the property `actorUserId`', () async {
      // TODO
    });

    // Area of Azure DevOps the action occurred
    // String area (default value: null)
    test('to test the property `area`', () async {
      // TODO
    });

    // Type of authentication used by the actor
    // String authenticationMechanism (default value: null)
    test('to test the property `authenticationMechanism`', () async {
      // TODO
    });

    // Type of action executed
    // String category (default value: null)
    test('to test the property `category`', () async {
      // TODO
    });

    // DisplayName of the category
    // String categoryDisplayName (default value: null)
    test('to test the property `categoryDisplayName`', () async {
      // TODO
    });

    // This allows related audit entries to be grouped together. Generally this occurs when a single action causes a cascade of audit entries. For example, project creation.
    // String correlationId (default value: null)
    test('to test the property `correlationId`', () async {
      // TODO
    });

    // External data such as CUIDs, item names, etc.
    // Map<String, Object> data (default value: {})
    test('to test the property `data`', () async {
      // TODO
    });

    // Decorated details
    // String details (default value: null)
    test('to test the property `details`', () async {
      // TODO
    });

    // EventId - Needs to be unique per service
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // IP Address where the event was originated
    // String ipAddress (default value: null)
    test('to test the property `ipAddress`', () async {
      // TODO
    });

    // DisplayName of the scope
    // String scopeDisplayName (default value: null)
    test('to test the property `scopeDisplayName`', () async {
      // TODO
    });

    // The organization or project Id
    // String scopeId (default value: null)
    test('to test the property `scopeId`', () async {
      // TODO
    });

    // The type of the scope, Organization or Project
    // String scopeType (default value: null)
    test('to test the property `scopeType`', () async {
      // TODO
    });

    // The time when the event occurred in UTC
    // DateTime timestamp (default value: null)
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // The user agent from the request
    // String userAgent (default value: null)
    test('to test the property `userAgent`', () async {
      // TODO
    });


  });

}
