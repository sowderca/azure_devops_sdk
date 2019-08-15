# azure_devops_sdk.model.FeedRetentionPolicy

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ageLimitInDays** | **int** | This attribute is deprecated and is not honoured by retention | [optional] [default to null]
**countLimit** | **int** | Maximum versions to preserve per package and package type. | [optional] [default to null]
**daysToKeepRecentlyDownloadedPackages** | **int** | Number of days to preserve a package version after its latest download. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


