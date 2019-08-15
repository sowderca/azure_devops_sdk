# azure_devops_sdk.api.CounterInstancesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](CounterInstancesApi.md#list) | **GET** /{organization}/_apis/clt/testRuns/{testRunId}/counterinstances | 


# **list**
> List<TestRunCounterInstance> list(organization, testRunId, groupNames, apiVersion, includeSummary)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = CounterInstancesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var testRunId = testRunId_example; // String | The test run identifier
var groupNames = groupNames_example; // String | Comma separated names of counter groups, such as 'Application', 'Performance' and 'Throughput'
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var includeSummary = true; // bool | 

try { 
    var result = api_instance.list(organization, testRunId, groupNames, apiVersion, includeSummary);
    print(result);
} catch (e) {
    print("Exception when calling CounterInstancesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **testRunId** | **String**| The test run identifier | [default to null]
 **groupNames** | **String**| Comma separated names of counter groups, such as &#39;Application&#39;, &#39;Performance&#39; and &#39;Throughput&#39; | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **includeSummary** | **bool**|  | [optional] [default to null]

### Return type

[**List<TestRunCounterInstance>**](TestRunCounterInstance.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

