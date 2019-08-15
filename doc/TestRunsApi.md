# azure_devops_sdk.api.TestRunsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](TestRunsApi.md#create) | **POST** /{organization}/_apis/clt/testruns | 
[**get Test Run**](TestRunsApi.md#get Test Run) | **GET** /{organization}/_apis/clt/testruns/{testRunId} | 
[**get Test Runs**](TestRunsApi.md#get Test Runs) | **GET** /{organization}/_apis/clt/testruns | 
[**update**](TestRunsApi.md#update) | **PATCH** /{organization}/_apis/clt/testruns/{testRunId} | 


# **create**
> TestRun create(organization, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = TestRunsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TestRun(); // TestRun | 

try { 
    var result = api_instance.create(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TestRunsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestRun**](TestRun.md)|  | 

### Return type

[**TestRun**](TestRun.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Run**
> TestRun get Test Run(organization, testRunId, apiVersion)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = TestRunsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var testRunId = testRunId_example; // String | Unique ID of the test run
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Test Run(organization, testRunId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TestRunsApi->get Test Run: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **testRunId** | **String**| Unique ID of the test run | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**TestRun**](TestRun.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Runs**
> Object get Test Runs(organization, apiVersion, name, requestedBy, status, runType, fromDate, toDate, detailed, top, runsourceidentifier, retentionState)



Returns test runs based on the filter specified. Returns all runs of the tenant if there is no filter.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = TestRunsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var name = name_example; // String | Name for the test run. Names are not unique. Test runs with same name are assigned sequential rolling numbers.
var requestedBy = requestedBy_example; // String | Filter by the user who requested the test run. Here requestedBy should be the display name of the user.
var status = status_example; // String | Filter by the test run status.
var runType = runType_example; // String | Valid values include: null, one of TestRunType, or \"*\"
var fromDate = fromDate_example; // String | Filter by the test runs that have been modified after the fromDate timestamp.
var toDate = toDate_example; // String | Filter by the test runs that have been modified before the toDate timestamp.
var detailed = true; // bool | Include the detailed test run attributes.
var top = 56; // int | The maximum number of test runs to return.
var runsourceidentifier = runsourceidentifier_example; // String | 
var retentionState = retentionState_example; // String | 

try { 
    var result = api_instance.get Test Runs(organization, apiVersion, name, requestedBy, status, runType, fromDate, toDate, detailed, top, runsourceidentifier, retentionState);
    print(result);
} catch (e) {
    print("Exception when calling TestRunsApi->get Test Runs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **name** | **String**| Name for the test run. Names are not unique. Test runs with same name are assigned sequential rolling numbers. | [optional] [default to null]
 **requestedBy** | **String**| Filter by the user who requested the test run. Here requestedBy should be the display name of the user. | [optional] [default to null]
 **status** | **String**| Filter by the test run status. | [optional] [default to null]
 **runType** | **String**| Valid values include: null, one of TestRunType, or \&quot;*\&quot; | [optional] [default to null]
 **fromDate** | **String**| Filter by the test runs that have been modified after the fromDate timestamp. | [optional] [default to null]
 **toDate** | **String**| Filter by the test runs that have been modified before the toDate timestamp. | [optional] [default to null]
 **detailed** | **bool**| Include the detailed test run attributes. | [optional] [default to null]
 **top** | **int**| The maximum number of test runs to return. | [optional] [default to null]
 **runsourceidentifier** | **String**|  | [optional] [default to null]
 **retentionState** | **String**|  | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> update(organization, testRunId, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = TestRunsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var testRunId = testRunId_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TestRun(); // TestRun | 

try { 
    api_instance.update(organization, testRunId, apiVersion, body);
} catch (e) {
    print("Exception when calling TestRunsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **testRunId** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestRun**](TestRun.md)|  | 

### Return type

void (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

