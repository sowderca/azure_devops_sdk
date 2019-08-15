import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for AuditLogEntry
void main() {
  var instance = AuditLogEntry();

  group('test AuditLogEntry', () {
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

    // The Actor's User Id
    // String actorUserId (default value: null)
    test('to test the property `actorUserId`', () async {
      // TODO
    });

    // Type of authentication used by the author
    // String authenticationMechanism (default value: null)
    test('to test the property `authenticationMechanism`', () async {
      // TODO
    });

    // This allows us to group things together, like one user action that caused a cascade of event entries (project creation).
    // String correlationId (default value: null)
    test('to test the property `correlationId`', () async {
      // TODO
    });

    // External data such as CUIDs, item names, etc.
    // Map<String, Object> data (default value: {})
    test('to test the property `data`', () async {
      // TODO
    });

    // EventId, should be unique
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // IP Address where the event was originated
    // String ipAddress (default value: null)
    test('to test the property `ipAddress`', () async {
      // TODO
    });

    // The org, collection or project Id
    // String scopeId (default value: null)
    test('to test the property `scopeId`', () async {
      // TODO
    });

    // The type of the scope, Enterprise, Organization or Project
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
