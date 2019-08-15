# azure_devops_sdk.model.EnvironmentExecutionPolicy

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**concurrencyCount** | **int** | This policy decides, how many environments would be with Environment Runner. | [optional] [default to null]
**queueDepthCount** | **int** | Queue depth in the EnvironmentQueue table, this table keeps the environment entries till Environment Runner is free [as per it&#39;s policy] to take another environment for running. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


