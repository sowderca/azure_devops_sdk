# azure_devops_sdk.model.VssNotificationEvent

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actors** | [**List&lt;EventActor&gt;**](EventActor.md) | Optional: A list of actors which are additional identities with corresponding roles that are relevant to the event. | [optional] [default to []]
**artifactUris** | **List&lt;String&gt;** | Optional: A list of artifacts referenced or impacted by this event. | [optional] [default to []]
**data** | [**Object**](.md) | Required: The event payload.  If Data is a string, it must be in Json or XML format.  Otherwise it must have a serialization format attribute. | [optional] [default to null]
**eventType** | **String** | Required: The name of the event.  This event must be registered in the context it is being fired. | [optional] [default to null]
**expiresIn** | **String** | How long before the event expires and will be cleaned up.  The default is to use the system default. | [optional] [default to null]
**itemId** | **String** | The id of the item, artifact, extension, project, etc. | [optional] [default to null]
**processDelay** | **String** | How long to wait before processing this event.  The default is to process immediately. | [optional] [default to null]
**scopes** | [**List&lt;EventScope&gt;**](EventScope.md) | Optional: A list of scopes which are are relevant to the event. | [optional] [default to []]
**sourceEventCreatedTime** | [**DateTime**](DateTime.md) | This is the time the original source event for this VssNotificationEvent was created.  For example, for something like a build completion notification SourceEventCreatedTime should be the time the build finished not the time this event was raised. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


