# azure_devops_sdk.model.TestLogReference

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**buildId** | **int** | BuildId for test log, if context is build | [optional] [default to null]
**filePath** | **String** | FileName for log file | [optional] [default to null]
**releaseEnvId** | **int** | ReleaseEnvId for test log, if context is Release | [optional] [default to null]
**releaseId** | **int** | ReleaseId for test log, if context is Release | [optional] [default to null]
**resultId** | **int** | Resultid for test log, if context is run and log is related to result | [optional] [default to null]
**runId** | **int** | runid for test log, if context is run | [optional] [default to null]
**scope** | **String** | Test Log Reference object | [optional] [default to null]
**subResultId** | **int** | SubResultid for test log, if context is run and log is related to subresult | [optional] [default to null]
**type** | **String** | Log Type | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


