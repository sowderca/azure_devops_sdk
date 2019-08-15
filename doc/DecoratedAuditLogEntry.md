# azure_devops_sdk.model.DecoratedAuditLogEntry

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
**actorDisplayName** | **String** | DisplayName of the user who initiated the action | [optional] [default to null]
**actorImageUrl** | **String** | URL of Actor&#39;s Profile image | [optional] [default to null]
**actorUserId** | **String** | The Actor&#39;s User Id | [optional] [default to null]
**area** | **String** | Area of Azure DevOps the action occurred | [optional] [default to null]
**authenticationMechanism** | **String** | Type of authentication used by the actor | [optional] [default to null]
**category** | **String** | Type of action executed | [optional] [default to null]
**categoryDisplayName** | **String** | DisplayName of the category | [optional] [default to null]
**correlationId** | **String** | This allows related audit entries to be grouped together. Generally this occurs when a single action causes a cascade of audit entries. For example, project creation. | [optional] [default to null]
**data** | [**Map&lt;String, Object&gt;**](Object.md) | External data such as CUIDs, item names, etc. | [optional] [default to {}]
**details** | **String** | Decorated details | [optional] [default to null]
**id** | **String** | EventId - Needs to be unique per service | [optional] [default to null]
**ipAddress** | **String** | IP Address where the event was originated | [optional] [default to null]
**scopeDisplayName** | **String** | DisplayName of the scope | [optional] [default to null]
**scopeId** | **String** | The organization or project Id | [optional] [default to null]
**scopeType** | **String** | The type of the scope, Organization or Project | [optional] [default to null]
**timestamp** | [**DateTime**](DateTime.md) | The time when the event occurred in UTC | [optional] [default to null]
**userAgent** | **String** | The user agent from the request | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


