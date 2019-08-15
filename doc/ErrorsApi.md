# azure_devops_sdk.api.ErrorsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ErrorsApi.md#callGet) | **GET** /{organization}/_apis/clt/testRuns/{testRunId}/errors | 


# **callGet**
> LoadTestErrors callGet(organization, testRunId, apiVersion, type, subType, detailed)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ErrorsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var testRunId = testRunId_example; // String | The test run identifier
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var type = type_example; // String | Filter for the particular type of errors.
var subType = subType_example; // String | Filter for a particular subtype of errors. You should not provide error subtype without error type.
var detailed = true; // bool | To include the details of test errors such as messagetext, request, stacktrace, testcasename, scenarioname, and lasterrordate.

try { 
    var result = api_instance.callGet(organization, testRunId, apiVersion, type, subType, detailed);
    print(result);
} catch (e) {
    print("Exception when calling ErrorsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **testRunId** | **String**| The test run identifier | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **type** | **String**| Filter for the particular type of errors. | [optional] [default to null]
 **subType** | **String**| Filter for a particular subtype of errors. You should not provide error subtype without error type. | [optional] [default to null]
 **detailed** | **bool**| To include the details of test errors such as messagetext, request, stacktrace, testcasename, scenarioname, and lasterrordate. | [optional] [default to null]

### Return type

[**LoadTestErrors**](LoadTestErrors.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

