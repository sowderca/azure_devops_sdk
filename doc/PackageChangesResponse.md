# azure_devops_sdk.model.PackageChangesResponse

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**count** | **int** | Number of changes in this batch. | [optional] [default to null]
**nextPackageContinuationToken** | **int** | Token that should be used in future calls for this feed to retrieve new changes. | [optional] [default to null]
**packageChanges** | [**List&lt;PackageChange&gt;**](PackageChange.md) | List of changes. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


