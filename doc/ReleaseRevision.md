# azure_devops_sdk.model.ReleaseRevision

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**changedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**changedDate** | [**DateTime**](DateTime.md) | Change date of the revision. | [optional] [default to null]
**changeDetails** | **String** | Change details of the revision. | [optional] [default to null]
**changeType** | **String** | Change details of the revision. Typically ChangeDetails values are Add and Update. | [optional] [default to null]
**comment** | **String** | Comment of the revision. | [optional] [default to null]
**definitionSnapshotRevision** | **int** | Release ID of which this revision belongs. | [optional] [default to null]
**releaseId** | **int** | Gets or sets the release ID of which this revision belongs. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


