# azure_devops_sdk.api.PointsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Point**](PointsApi.md#get Point) | **GET** /{organization}/{project}/_apis/test/Plans/{planId}/Suites/{suiteId}/points/{pointIds} | 
[**get Points By Query**](PointsApi.md#get Points By Query) | **POST** /{organization}/{project}/_apis/test/points | 
[**list**](PointsApi.md#list) | **GET** /{organization}/{project}/_apis/test/Plans/{planId}/Suites/{suiteId}/points | 
[**update**](PointsApi.md#update) | **PATCH** /{organization}/{project}/_apis/test/Plans/{planId}/Suites/{suiteId}/points/{pointIds} | 


# **get Point**
> TestPoint get Point(organization, project, planId, suiteId, pointIds, apiVersion, witFields)



Get a test point.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PointsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan.
var suiteId = 56; // int | ID of the suite that contains the point.
var pointIds = 56; // int | ID of the test point to get.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var witFields = witFields_example; // String | Comma-separated list of work item field names.

try { 
    var result = api_instance.get Point(organization, project, planId, suiteId, pointIds, apiVersion, witFields);
    print(result);
} catch (e) {
    print("Exception when calling PointsApi->get Point: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan. | [default to null]
 **suiteId** | **int**| ID of the suite that contains the point. | [default to null]
 **pointIds** | **int**| ID of the test point to get. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **witFields** | **String**| Comma-separated list of work item field names. | [optional] [default to null]

### Return type

[**TestPoint**](TestPoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Points By Query**
> TestPointsQuery get Points By Query(organization, project, apiVersion, body, $skip, $top)



Get test points using query.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PointsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = TestPointsQuery(); // TestPointsQuery | TestPointsQuery to get test points.
var $skip = 56; // int | Number of test points to skip..
var $top = 56; // int | Number of test points to return.

try { 
    var result = api_instance.get Points By Query(organization, project, apiVersion, body, $skip, $top);
    print(result);
} catch (e) {
    print("Exception when calling PointsApi->get Points By Query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**TestPointsQuery**](TestPointsQuery.md)| TestPointsQuery to get test points. | 
 **$skip** | **int**| Number of test points to skip.. | [optional] [default to null]
 **$top** | **int**| Number of test points to return. | [optional] [default to null]

### Return type

[**TestPointsQuery**](TestPointsQuery.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TestPoint> list(organization, project, planId, suiteId, apiVersion, witFields, configurationId, testCaseId, testPointIds, includePointDetails, $skip, $top)



Get a list of test points.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PointsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan.
var suiteId = 56; // int | ID of the suite that contains the points.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var witFields = witFields_example; // String | Comma-separated list of work item field names.
var configurationId = configurationId_example; // String | Get test points for specific configuration.
var testCaseId = testCaseId_example; // String | Get test points for a specific test case, valid when configurationId is not set.
var testPointIds = testPointIds_example; // String | Get test points for comma-separated list of test point IDs, valid only when configurationId and testCaseId are not set.
var includePointDetails = true; // bool | Include all properties for the test point.
var $skip = 56; // int | Number of test points to skip..
var $top = 56; // int | Number of test points to return.

try { 
    var result = api_instance.list(organization, project, planId, suiteId, apiVersion, witFields, configurationId, testCaseId, testPointIds, includePointDetails, $skip, $top);
    print(result);
} catch (e) {
    print("Exception when calling PointsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan. | [default to null]
 **suiteId** | **int**| ID of the suite that contains the points. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **witFields** | **String**| Comma-separated list of work item field names. | [optional] [default to null]
 **configurationId** | **String**| Get test points for specific configuration. | [optional] [default to null]
 **testCaseId** | **String**| Get test points for a specific test case, valid when configurationId is not set. | [optional] [default to null]
 **testPointIds** | **String**| Get test points for comma-separated list of test point IDs, valid only when configurationId and testCaseId are not set. | [optional] [default to null]
 **includePointDetails** | **bool**| Include all properties for the test point. | [optional] [default to null]
 **$skip** | **int**| Number of test points to skip.. | [optional] [default to null]
 **$top** | **int**| Number of test points to return. | [optional] [default to null]

### Return type

[**List<TestPoint>**](TestPoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> List<TestPoint> update(organization, project, planId, suiteId, pointIds, apiVersion, body)



Update test points.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PointsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan.
var suiteId = 56; // int | ID of the suite that contains the points.
var pointIds = pointIds_example; // String | ID of the test point to get. Use a comma-separated list of IDs to update multiple test points.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = PointUpdateModel(); // PointUpdateModel | Data to update.

try { 
    var result = api_instance.update(organization, project, planId, suiteId, pointIds, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PointsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan. | [default to null]
 **suiteId** | **int**| ID of the suite that contains the points. | [default to null]
 **pointIds** | **String**| ID of the test point to get. Use a comma-separated list of IDs to update multiple test points. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**PointUpdateModel**](PointUpdateModel.md)| Data to update. | 

### Return type

[**List<TestPoint>**](TestPoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

