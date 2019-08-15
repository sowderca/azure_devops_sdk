# azure_devops_sdk.api.TestPointApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Points**](TestPointApi.md#get Points) | **GET** /{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestPoint/{pointIds} | 
[**get Points List**](TestPointApi.md#get Points List) | **GET** /{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestPoint | 
[**update**](TestPointApi.md#update) | **PATCH** /{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestPoint | 


# **get Points**
> List<TestPoint> get Points(organization, project, planId, suiteId, pointIds, apiVersion, returnIdentityRef)



Get a list of points based on point Ids provided.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestPointApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan for which test points are requested.
var suiteId = 56; // int | ID of the test suite for which test points are requested.
var pointIds = pointIds_example; // String | ID of test points to be fetched.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var returnIdentityRef = true; // bool | If set to true, returns the AssignedTo field in TestCaseReference as IdentityRef object.

try { 
    var result = api_instance.get Points(organization, project, planId, suiteId, pointIds, apiVersion, returnIdentityRef);
    print(result);
} catch (e) {
    print("Exception when calling TestPointApi->get Points: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan for which test points are requested. | [default to null]
 **suiteId** | **int**| ID of the test suite for which test points are requested. | [default to null]
 **pointIds** | **String**| ID of test points to be fetched. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **returnIdentityRef** | **bool**| If set to true, returns the AssignedTo field in TestCaseReference as IdentityRef object. | [optional] [default to null]

### Return type

[**List<TestPoint>**](TestPoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Points List**
> List<TestPoint> get Points List(organization, project, planId, suiteId, apiVersion, testPointIds, testCaseId, continuationToken, returnIdentityRef, includePointDetails)



Get all the points inside a suite based on some filters

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestPointApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan for which test points are requested.
var suiteId = 56; // int | ID of the test suite for which test points are requested
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var testPointIds = testPointIds_example; // String | ID of test points to fetch.
var testCaseId = testCaseId_example; // String | Get Test Points for specific test case Ids.
var continuationToken = continuationToken_example; // String | If the list of test point returned is not complete, a continuation token to query next batch of test points is included in the response header as \"x-ms-continuationtoken\". Omit this parameter to get the first batch of test points.
var returnIdentityRef = true; // bool | If set to true, returns the AssignedTo field in TestCaseReference as IdentityRef object.
var includePointDetails = true; // bool | If set to false, returns only necessary information

try { 
    var result = api_instance.get Points List(organization, project, planId, suiteId, apiVersion, testPointIds, testCaseId, continuationToken, returnIdentityRef, includePointDetails);
    print(result);
} catch (e) {
    print("Exception when calling TestPointApi->get Points List: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan for which test points are requested. | [default to null]
 **suiteId** | **int**| ID of the test suite for which test points are requested | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **testPointIds** | **String**| ID of test points to fetch. | [optional] [default to null]
 **testCaseId** | **String**| Get Test Points for specific test case Ids. | [optional] [default to null]
 **continuationToken** | **String**| If the list of test point returned is not complete, a continuation token to query next batch of test points is included in the response header as \&quot;x-ms-continuationtoken\&quot;. Omit this parameter to get the first batch of test points. | [optional] [default to null]
 **returnIdentityRef** | **bool**| If set to true, returns the AssignedTo field in TestCaseReference as IdentityRef object. | [optional] [default to null]
 **includePointDetails** | **bool**| If set to false, returns only necessary information | [optional] [default to null]

### Return type

[**List<TestPoint>**](TestPoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> List<TestPoint> update(organization, project, planId, suiteId, apiVersion, body)



Update Test Points. This is used to Reset test point to active, update the outcome of a test point or update the tester of a test point

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestPointApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan for which test points are requested.
var suiteId = 56; // int | ID of the test suite for which test points are requested.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = [List&lt;TestPointUpdateParams&gt;()]; // List<TestPointUpdateParams> | A TestPointUpdateParams Object.

try { 
    var result = api_instance.update(organization, project, planId, suiteId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TestPointApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan for which test points are requested. | [default to null]
 **suiteId** | **int**| ID of the test suite for which test points are requested. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;TestPointUpdateParams&gt;**](TestPointUpdateParams.md)| A TestPointUpdateParams Object. | 

### Return type

[**List<TestPoint>**](TestPoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

