# azure_devops_sdk.model.MetricsRow

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dimensions** | **List&lt;String&gt;** | The values of the properties mentioned as &#39;Dimensions&#39; in column header. E.g. 1: For a property &#39;LastJobStatus&#39; - metrics will be provided for &#39;passed&#39;, &#39;failed&#39;, etc. E.g. 2: For a property &#39;TargetState&#39; - metrics will be provided for &#39;online&#39;, &#39;offline&#39; targets. | [optional] [default to []]
**metrics** | **List&lt;String&gt;** | Metrics in serialized format. Should be deserialized based on the data type provided in header. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


