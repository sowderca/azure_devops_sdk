# azure_devops_sdk.model.ProcessInfo

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customizationType** | **String** | Indicates the type of customization on this process. System Process is default process. Inherited Process is modified process that was System process before. | [optional] [default to null]
**description** | **String** | Description of the process. | [optional] [default to null]
**isDefault** | **bool** | Is the process default. | [optional] [default to null]
**isEnabled** | **bool** | Is the process enabled. | [optional] [default to null]
**name** | **String** | Name of the process. | [optional] [default to null]
**parentProcessTypeId** | **String** | ID of the parent process. | [optional] [default to null]
**projects** | [**List&lt;ProjectReference&gt;**](ProjectReference.md) | Projects in this process to which the user is subscribed to. | [optional] [default to []]
**referenceName** | **String** | Reference name of the process. | [optional] [default to null]
**typeId** | **String** | The ID of the process. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


