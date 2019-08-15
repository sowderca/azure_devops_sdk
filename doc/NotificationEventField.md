# azure_devops_sdk.model.NotificationEventField

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fieldType** | [**NotificationEventFieldType**](NotificationEventFieldType.md) |  | [optional] [default to null]
**id** | **String** | Gets or sets the unique identifier of this field. | [optional] [default to null]
**name** | **String** | Gets or sets the name of this field. | [optional] [default to null]
**path** | **String** | Gets or sets the path to the field in the event object. This path can be either Json Path or XPath, depending on if the event will be serialized into Json or XML | [optional] [default to null]
**supportedScopes** | **List&lt;String&gt;** | Gets or sets the scopes that this field supports. If not specified then the event type scopes apply. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


