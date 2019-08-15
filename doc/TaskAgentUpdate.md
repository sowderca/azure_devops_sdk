# azure_devops_sdk.model.TaskAgentUpdate

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentState** | **String** | Current state of this agent update. | [optional] [default to null]
**reason** | [**TaskAgentUpdateReason**](TaskAgentUpdateReason.md) |  | [optional] [default to null]
**requestedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**requestTime** | [**DateTime**](DateTime.md) | Date on which this update was requested. | [optional] [default to null]
**sourceVersion** | [**PackageVersion**](PackageVersion.md) |  | [optional] [default to null]
**targetVersion** | [**PackageVersion**](PackageVersion.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


