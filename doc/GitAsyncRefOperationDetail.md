# azure_devops_sdk.model.GitAsyncRefOperationDetail

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conflict** | **bool** | Indicates if there was a conflict generated when trying to cherry pick or revert the changes. | [optional] [default to null]
**currentCommitId** | **String** | The current commit from the list of commits that are being cherry picked or reverted. | [optional] [default to null]
**failureMessage** | **String** | Detailed information about why the cherry pick or revert failed to complete. | [optional] [default to null]
**progress** | **double** | A number between 0 and 1 indicating the percent complete of the operation. | [optional] [default to null]
**status** | **String** | Provides a status code that indicates the reason the cherry pick or revert failed. | [optional] [default to null]
**timedout** | **bool** | Indicates if the operation went beyond the maximum time allowed for a cherry pick or revert operation. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


