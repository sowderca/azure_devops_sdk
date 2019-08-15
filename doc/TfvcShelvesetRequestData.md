# azure_devops_sdk.model.TfvcShelvesetRequestData

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**includeDetails** | **bool** | Whether to include policyOverride and notes Only applies when requesting a single deep shelveset | [optional] [default to null]
**includeLinks** | **bool** | Whether to include the _links field on the shallow references. Does not apply when requesting a single deep shelveset object. Links will always be included in the deep shelveset. | [optional] [default to null]
**includeWorkItems** | **bool** | Whether to include workItems | [optional] [default to null]
**maxChangeCount** | **int** | Max number of changes to include | [optional] [default to null]
**maxCommentLength** | **int** | Max length of comment | [optional] [default to null]
**name** | **String** | Shelveset&#39;s name | [optional] [default to null]
**owner** | **String** | Owner&#39;s ID. Could be a name or a guid. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


