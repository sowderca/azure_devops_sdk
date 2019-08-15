# azure_devops_sdk.model.JsonPatchOperation

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | The path to copy from for the Move/Copy operation. | [optional] [default to null]
**op** | **String** | The patch operation | [optional] [default to null]
**path** | **String** | The path for the operation. In the case of an array, a zero based index can be used to specify the position in the array (e.g. /biscuits/0/name). The \&quot;-\&quot; character can be used instead of an index to insert at the end of the array (e.g. /biscuits/-). | [optional] [default to null]
**value** | [**Object**](.md) | The value for the operation. This is either a primitive or a JToken. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


