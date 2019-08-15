# azure_devops_sdk.api.CountersApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](CountersApi.md#list) | **GET** /{organization}/_apis/clt/apm/counters | 


# **list**
> List<ApplicationCounters> list(organization, apiVersion, applicationId, plugintype)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = CountersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var applicationId = applicationId_example; // String | Filter by APM application identifier.
var plugintype = plugintype_example; // String | Currently ApplicationInsights is the only available plugin type.

try { 
    var result = api_instance.list(organization, apiVersion, applicationId, plugintype);
    print(result);
} catch (e) {
    print("Exception when calling CountersApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **applicationId** | **String**| Filter by APM application identifier. | [optional] [default to null]
 **plugintype** | **String**| Currently ApplicationInsights is the only available plugin type. | [optional] [default to null]

### Return type

[**List<ApplicationCounters>**](ApplicationCounters.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

