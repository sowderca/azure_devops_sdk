# azure_devops_sdk.model.CloneOperationInformation

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cloneStatistics** | [**CloneStatistics**](CloneStatistics.md) |  | [optional] [default to null]
**completionDate** | [**DateTime**](DateTime.md) | If the operation is complete, the DateTime of completion. If operation is not complete, this is DateTime.MaxValue | [optional] [default to null]
**creationDate** | [**DateTime**](DateTime.md) | DateTime when the operation was started | [optional] [default to null]
**destinationObject** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**destinationPlan** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**destinationProject** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**message** | **String** | If the operation has Failed, Message contains the reason for failure. Null otherwise. | [optional] [default to null]
**opId** | **int** | The ID of the operation | [optional] [default to null]
**resultObjectType** | **String** | The type of the object generated as a result of the Clone operation | [optional] [default to null]
**sourceObject** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**sourcePlan** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**sourceProject** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**state** | **String** | Current state of the operation. When State reaches Suceeded or Failed, the operation is complete | [optional] [default to null]
**url** | **String** | Url for getting the clone information | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


