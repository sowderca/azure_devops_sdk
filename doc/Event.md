# azure_devops_sdk.model.Event

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdDate** | [**DateTime**](DateTime.md) | Gets or sets the UTC-based date and time that this event was created. | [optional] [default to null]
**detailedMessage** | [**FormattedEventMessage**](FormattedEventMessage.md) |  | [optional] [default to null]
**eventType** | **String** | Gets or sets the type of this event. | [optional] [default to null]
**id** | **String** | Gets or sets the unique identifier of this event. | [optional] [default to null]
**message** | [**FormattedEventMessage**](FormattedEventMessage.md) |  | [optional] [default to null]
**publisherId** | **String** | Gets or sets the identifier of the publisher that raised this event. | [optional] [default to null]
**resource** | [**Object**](.md) | Gets or sets the data associated with this event. | [optional] [default to null]
**resourceContainers** | [**Map&lt;String, ResourceContainer&gt;**](ResourceContainer.md) | Gets or sets the resource containers. | [optional] [default to {}]
**resourceVersion** | **String** | Gets or sets the version of the data associated with this event. | [optional] [default to null]
**sessionToken** | [**SessionToken**](SessionToken.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


