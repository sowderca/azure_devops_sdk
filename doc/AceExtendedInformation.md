# azure_devops_sdk.model.AceExtendedInformation

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**effectiveAllow** | **int** | This is the combination of all of the explicit and inherited permissions for this identity on this token.  These are the permissions used when determining if a given user has permission to perform an action. | [optional] [default to null]
**effectiveDeny** | **int** | This is the combination of all of the explicit and inherited permissions for this identity on this token.  These are the permissions used when determining if a given user has permission to perform an action. | [optional] [default to null]
**inheritedAllow** | **int** | These are the permissions that are inherited for this identity on this token.  If the token does not inherit permissions this will be 0.  Note that any permissions that have been explicitly set on this token for this identity, or any groups that this identity is a part of, are not included here. | [optional] [default to null]
**inheritedDeny** | **int** | These are the permissions that are inherited for this identity on this token.  If the token does not inherit permissions this will be 0.  Note that any permissions that have been explicitly set on this token for this identity, or any groups that this identity is a part of, are not included here. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


