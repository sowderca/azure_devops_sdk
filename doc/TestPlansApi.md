# azure_devops_sdk.api.TestPlansApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](TestPlansApi.md#callGet) | **GET** /{organization}/{project}/_apis/testplan/plans/{planId} | 
[**create**](TestPlansApi.md#create) | **POST** /{organization}/{project}/_apis/testplan/plans | 
[**delete**](TestPlansApi.md#delete) | **DELETE** /{organization}/{project}/_apis/testplan/plans/{planId} | 
[**list**](TestPlansApi.md#list) | **GET** /{organization}/{project}/_apis/testplan/plans | 
[**update**](TestPlansApi.md#update) | **PATCH** /{organization}/{project}/_apis/testplan/plans/{planId} | 


# **callGet**
> TestPlan callGet(organization, project, planId, apiVersion)



Get a test plan by Id.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestPlansApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan to get.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, planId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TestPlansApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan to get. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**TestPlan**](TestPlan.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> TestPlan create(organization, project, apiVersion, body)



Create a test plan.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestPlansApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestPlanCreateParams(); // TestPlanCreateParams | A testPlanCreateParams object.TestPlanCreateParams

try { 
    var result = api_instance.create(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TestPlansApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestPlanCreateParams**](TestPlanCreateParams.md)| A testPlanCreateParams object.TestPlanCreateParams | 

### Return type

[**TestPlan**](TestPlan.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, planId, apiVersion)



Delete a test plan.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestPlansApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan to be deleted.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, planId, apiVersion);
} catch (e) {
    print("Exception when calling TestPlansApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan to be deleted. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TestPlan> list(organization, project, apiVersion, owner, continuationToken, includePlanDetails, filterActivePlans)



Get a list of test plans

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestPlansApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var owner = owner_example; // String | Filter for test plan by owner ID or name
var continuationToken = continuationToken_example; // String | If the list of plans returned is not complete, a continuation token to query next batch of plans is included in the response header as \"x-ms-continuationtoken\". Omit this parameter to get the first batch of test plans.
var includePlanDetails = true; // bool | Get all properties of the test plan
var filterActivePlans = true; // bool | Get just the active plans

try { 
    var result = api_instance.list(organization, project, apiVersion, owner, continuationToken, includePlanDetails, filterActivePlans);
    print(result);
} catch (e) {
    print("Exception when calling TestPlansApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **owner** | **String**| Filter for test plan by owner ID or name | [optional] [default to null]
 **continuationToken** | **String**| If the list of plans returned is not complete, a continuation token to query next batch of plans is included in the response header as \&quot;x-ms-continuationtoken\&quot;. Omit this parameter to get the first batch of test plans. | [optional] [default to null]
 **includePlanDetails** | **bool**| Get all properties of the test plan | [optional] [default to null]
 **filterActivePlans** | **bool**| Get just the active plans | [optional] [default to null]

### Return type

[**List<TestPlan>**](TestPlan.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> TestPlan update(organization, project, planId, apiVersion, body)



Update a test plan.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestPlansApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan to be updated.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestPlanUpdateParams(); // TestPlanUpdateParams | A testPlanUpdateParams object.TestPlanUpdateParams

try { 
    var result = api_instance.update(organization, project, planId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TestPlansApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan to be updated. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestPlanUpdateParams**](TestPlanUpdateParams.md)| A testPlanUpdateParams object.TestPlanUpdateParams | 

### Return type

[**TestPlan**](TestPlan.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

