# azure_devops_sdk.model.GitPullRequestIterationChanges

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**changeEntries** | [**List&lt;GitPullRequestChange&gt;**](GitPullRequestChange.md) | Changes made in the iteration. | [optional] [default to []]
**nextSkip** | **int** | Value to specify as skip to get the next page of changes.  This will be zero if there are no more changes. | [optional] [default to null]
**nextTop** | **int** | Value to specify as top to get the next page of changes.  This will be zero if there are no more changes. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


