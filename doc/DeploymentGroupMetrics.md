# azure_devops_sdk.model.DeploymentGroupMetrics

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**columnsHeader** | [**MetricsColumnsHeader**](MetricsColumnsHeader.md) |  | [optional] [default to null]
**deploymentGroup** | [**DeploymentGroupReference**](DeploymentGroupReference.md) |  | [optional] [default to null]
**rows** | [**List&lt;MetricsRow&gt;**](MetricsRow.md) | Values of properties and the metrics. E.g. 1: total count of deployment targets for which &#39;TargetState&#39; is &#39;offline&#39;. E.g. 2: Average time of deployment to the deployment targets for which &#39;LastJobStatus&#39; is &#39;passed&#39; and &#39;TargetState&#39; is &#39;online&#39;. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


