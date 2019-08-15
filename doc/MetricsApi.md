# azure_devops_sdk.api.MetricsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Definition Metrics**](MetricsApi.md#get Definition Metrics) | **GET** /{organization}/{project}/_apis/build/definitions/{definitionId}/metrics | 
[**get Project Metrics**](MetricsApi.md#get Project Metrics) | **GET** /{organization}/{project}/_apis/build/metrics/{metricAggregationType} | 


# **get Definition Metrics**
> List<BuildMetric> get Definition Metrics(organization, project, definitionId, apiVersion, minMetricsTime)



Gets build metrics for a definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MetricsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var minMetricsTime = 2013-10-20T19:20:30+01:00; // DateTime | The date from which to calculate metrics.

try { 
    var result = api_instance.get Definition Metrics(organization, project, definitionId, apiVersion, minMetricsTime);
    print(result);
} catch (e) {
    print("Exception when calling MetricsApi->get Definition Metrics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **minMetricsTime** | **DateTime**| The date from which to calculate metrics. | [optional] [default to null]

### Return type

[**List<BuildMetric>**](BuildMetric.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Project Metrics**
> List<BuildMetric> get Project Metrics(organization, project, metricAggregationType, apiVersion, minMetricsTime)



Gets build metrics for a project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = MetricsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var metricAggregationType = metricAggregationType_example; // String | The aggregation type to use (hourly, daily).
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var minMetricsTime = 2013-10-20T19:20:30+01:00; // DateTime | The date from which to calculate metrics.

try { 
    var result = api_instance.get Project Metrics(organization, project, metricAggregationType, apiVersion, minMetricsTime);
    print(result);
} catch (e) {
    print("Exception when calling MetricsApi->get Project Metrics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **metricAggregationType** | **String**| The aggregation type to use (hourly, daily). | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **minMetricsTime** | **DateTime**| The date from which to calculate metrics. | [optional] [default to null]

### Return type

[**List<BuildMetric>**](BuildMetric.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

