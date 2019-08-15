# azure_devops_sdk.api.VariablesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](VariablesApi.md#callGet) | **GET** /{organization}/{project}/_apis/testplan/variables/{testVariableId} | 
[**create**](VariablesApi.md#create) | **POST** /{organization}/{project}/_apis/testplan/variables | 
[**delete**](VariablesApi.md#delete) | **DELETE** /{organization}/{project}/_apis/testplan/variables/{testVariableId} | 
[**list**](VariablesApi.md#list) | **GET** /{organization}/{project}/_apis/testplan/variables | 
[**update**](VariablesApi.md#update) | **PATCH** /{organization}/{project}/_apis/testplan/variables/{testVariableId} | 


# **callGet**
> TestVariable callGet(organization, project, testVariableId, apiVersion)



Get a test variable by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = VariablesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var testVariableId = 56; // int | ID of the test variable to get.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, testVariableId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **testVariableId** | **int**| ID of the test variable to get. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**TestVariable**](TestVariable.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> TestVariable create(organization, project, apiVersion, body)



Create a test variable.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = VariablesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestVariableCreateUpdateParameters(); // TestVariableCreateUpdateParameters | TestVariableCreateUpdateParameters

try { 
    var result = api_instance.create(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestVariableCreateUpdateParameters**](TestVariableCreateUpdateParameters.md)| TestVariableCreateUpdateParameters | 

### Return type

[**TestVariable**](TestVariable.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, testVariableId, apiVersion)



Delete a test variable by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = VariablesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var testVariableId = 56; // int | ID of the test variable to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, testVariableId, apiVersion);
} catch (e) {
    print("Exception when calling VariablesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **testVariableId** | **int**| ID of the test variable to delete. | [default to null]
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
> List<TestVariable> list(organization, project, apiVersion, continuationToken)



Get a list of test variables.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = VariablesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var continuationToken = continuationToken_example; // String | If the list of variables returned is not complete, a continuation token to query next batch of variables is included in the response header as \"x-ms-continuationtoken\". Omit this parameter to get the first batch of test variables.

try { 
    var result = api_instance.list(organization, project, apiVersion, continuationToken);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **continuationToken** | **String**| If the list of variables returned is not complete, a continuation token to query next batch of variables is included in the response header as \&quot;x-ms-continuationtoken\&quot;. Omit this parameter to get the first batch of test variables. | [optional] [default to null]

### Return type

[**List<TestVariable>**](TestVariable.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> TestVariable update(organization, project, testVariableId, apiVersion, body)



Update a test variable by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = VariablesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var testVariableId = 56; // int | ID of the test variable to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestVariableCreateUpdateParameters(); // TestVariableCreateUpdateParameters | TestVariableCreateUpdateParameters

try { 
    var result = api_instance.update(organization, project, testVariableId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **testVariableId** | **int**| ID of the test variable to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestVariableCreateUpdateParameters**](TestVariableCreateUpdateParameters.md)| TestVariableCreateUpdateParameters | 

### Return type

[**TestVariable**](TestVariable.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

