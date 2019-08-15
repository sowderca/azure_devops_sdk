# azure_devops_sdk.api.ExecutionhistoryApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ExecutionhistoryApi.md#list) | **GET** /{organization}/{project}/_apis/serviceendpoint/{endpointId}/executionhistory | 


# **list**
> List<ServiceEndpointExecutionRecord> list(organization, project, endpointId, apiVersion, top, continuationToken)



Get service endpoint execution records.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ExecutionhistoryApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var endpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the service endpoint.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var top = 56; // int | Number of service endpoint execution records to get.
var continuationToken = 789; // int | A continuation token, returned by a previous call to this method, that can be used to return the next set of records

try { 
    var result = api_instance.list(organization, project, endpointId, apiVersion, top, continuationToken);
    print(result);
} catch (e) {
    print("Exception when calling ExecutionhistoryApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **endpointId** | [**String**](.md)| Id of the service endpoint. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **top** | **int**| Number of service endpoint execution records to get. | [optional] [default to null]
 **continuationToken** | **int**| A continuation token, returned by a previous call to this method, that can be used to return the next set of records | [optional] [default to null]

### Return type

[**List<ServiceEndpointExecutionRecord>**](ServiceEndpointExecutionRecord.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

