# azure_devops_sdk.model.RetentionPolicy

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifacts** | **List&lt;String&gt;** |  | [optional] [default to []]
**artifactTypesToDelete** | **List&lt;String&gt;** |  | [optional] [default to []]
**branches** | **List&lt;String&gt;** |  | [optional] [default to []]
**daysToKeep** | **int** | The number of days to keep builds. | [optional] [default to null]
**deleteBuildRecord** | **bool** | Indicates whether the build record itself should be deleted. | [optional] [default to null]
**deleteTestResults** | **bool** | Indicates whether to delete test results associated with the build. | [optional] [default to null]
**minimumToKeep** | **int** | The minimum number of builds to keep. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


