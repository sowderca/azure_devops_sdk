# azure_devops_sdk.api.CounterSamplesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](CounterSamplesApi.md#callGet) | **POST** /{organization}/_apis/clt/testRuns/{testRunId}/countersamples | 


# **callGet**
> CounterSamplesResult callGet(organization, testRunId, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = CounterSamplesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var testRunId = testRunId_example; // String | The test run identifier
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = VssJsonCollectionWrapper(); // VssJsonCollectionWrapper | 

try { 
    var result = api_instance.callGet(organization, testRunId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling CounterSamplesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **testRunId** | **String**| The test run identifier | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**VssJsonCollectionWrapper**](VssJsonCollectionWrapper.md)|  | 

### Return type

[**CounterSamplesResult**](CounterSamplesResult.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

