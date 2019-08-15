# azure_devops_sdk.model.NpmPackagesBatchRequest

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Object**](.md) | Do not attempt to use this type to create a new BatchOperationData. This type does not contain sufficient fields to create a new batch operation data. | [optional] [default to null]
**operation** | **String** | Type of operation that needs to be performed on packages. | [optional] [default to null]
**packages** | [**List&lt;MinimalPackageDetails&gt;**](MinimalPackageDetails.md) | The packages onto which the operation will be performed. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


