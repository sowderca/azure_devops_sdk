# azure_devops_sdk.model.CodeResult

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection** | [**Collection**](Collection.md) |  | [optional] [default to null]
**contentId** | **String** | ContentId of the result file. | [optional] [default to null]
**fileName** | **String** | Name of the result file. | [optional] [default to null]
**matches** | [**Map&lt;String, List&lt;Hit&gt;&gt;**](List.md) | Dictionary of field to hit offsets in the result file. Key identifies the area in which hits were found, for ex: file content/file name etc. | [optional] [default to {}]
**path** | **String** | Path at which result file is present. | [optional] [default to null]
**project** | [**Project**](Project.md) |  | [optional] [default to null]
**repository** | [**Repository**](Repository.md) |  | [optional] [default to null]
**versions** | [**List&lt;Version&gt;**](Version.md) | Versions of the result file. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


