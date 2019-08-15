# azure_devops_sdk.model.MetricsColumnsHeader

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dimensions** | [**List&lt;MetricsColumnMetaData&gt;**](MetricsColumnMetaData.md) | Properties of deployment group for which metrics are provided. E.g. 1: LastJobStatus E.g. 2: TargetState | [optional] [default to []]
**metrics** | [**List&lt;MetricsColumnMetaData&gt;**](MetricsColumnMetaData.md) | The types of metrics. E.g. 1: total count of deployment targets. E.g. 2: Average time of deployment to the deployment targets. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


