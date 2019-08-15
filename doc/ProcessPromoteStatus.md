# azure_devops_sdk.model.ProcessPromoteStatus

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**complete** | **int** | Number of projects for which promote is complete. | [optional] [default to null]
**id** | **String** | ID of the promote operation. | [optional] [default to null]
**message** | **String** | The error message associated with the promote operation. The string will be empty if there are no errors. | [optional] [default to null]
**pending** | **int** | Number of projects for which promote is pending. | [optional] [default to null]
**remainingRetries** | **int** | The remaining retries. | [optional] [default to null]
**successful** | **bool** | True if promote finished all the projects successfully. False if still in progress or any project promote failed. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


