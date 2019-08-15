# azure_devops_sdk.model.AuditLogEntry

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actionId** | **String** | The action if for the event, i.e Git.CreateRepo, Project.RenameProject | [optional] [default to null]
**activityId** | **String** | ActivityId | [optional] [default to null]
**actorCUID** | **String** | The Actor&#39;s CUID | [optional] [default to null]
**actorUserId** | **String** | The Actor&#39;s User Id | [optional] [default to null]
**authenticationMechanism** | **String** | Type of authentication used by the author | [optional] [default to null]
**correlationId** | **String** | This allows us to group things together, like one user action that caused a cascade of event entries (project creation). | [optional] [default to null]
**data** | [**Map&lt;String, Object&gt;**](Object.md) | External data such as CUIDs, item names, etc. | [optional] [default to {}]
**id** | **String** | EventId, should be unique | [optional] [default to null]
**ipAddress** | **String** | IP Address where the event was originated | [optional] [default to null]
**scopeId** | **String** | The org, collection or project Id | [optional] [default to null]
**scopeType** | **String** | The type of the scope, Enterprise, Organization or Project | [optional] [default to null]
**timestamp** | [**DateTime**](DateTime.md) | The time when the event occurred in UTC | [optional] [default to null]
**userAgent** | **String** | The user agent from the request | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


