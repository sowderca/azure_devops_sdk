# azure_devops_sdk.api.SuiteTestCaseApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](SuiteTestCaseApi.md#add) | **POST** /{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestCase | 
[**get Test Case**](SuiteTestCaseApi.md#get Test Case) | **GET** /{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestCase/{testCaseIds} | 
[**get Test Case List**](SuiteTestCaseApi.md#get Test Case List) | **GET** /{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestCase | 
[**remove Test Cases From Suite**](SuiteTestCaseApi.md#remove Test Cases From Suite) | **DELETE** /{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestCase/{testCaseIds} | 
[**update**](SuiteTestCaseApi.md#update) | **PATCH** /{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestCase | 


# **add**
> List<TestCase> add(organization, project, planId, suiteId, apiVersion, body)



Add test cases to a suite with specified configurations

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SuiteTestCaseApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan to which test cases are to be added.
var suiteId = 56; // int | ID of the test suite to which test cases are to be added.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = [List&lt;SuiteTestCaseCreateUpdateParameters&gt;()]; // List<SuiteTestCaseCreateUpdateParameters> | SuiteTestCaseCreateUpdateParameters object.

try { 
    var result = api_instance.add(organization, project, planId, suiteId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SuiteTestCaseApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan to which test cases are to be added. | [default to null]
 **suiteId** | **int**| ID of the test suite to which test cases are to be added. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;SuiteTestCaseCreateUpdateParameters&gt;**](SuiteTestCaseCreateUpdateParameters.md)| SuiteTestCaseCreateUpdateParameters object. | 

### Return type

[**List<TestCase>**](TestCase.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Case**
> List<TestCase> get Test Case(organization, project, planId, suiteId, testCaseIds, apiVersion, witFields, returnIdentityRef)



Get Test Cases For a Suite.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SuiteTestCaseApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan for which test cases are requested.
var suiteId = 56; // int | ID of the test suite for which test cases are requested.
var testCaseIds = testCaseIds_example; // String | Test Case Ids to be fetched.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var witFields = witFields_example; // String | Get the list of witFields.
var returnIdentityRef = true; // bool | If set to true, returns all identity fields, like AssignedTo, ActivatedBy etc., as IdentityRef objects. If set to false, these fields are returned as unique names in string format. This is false by default.

try { 
    var result = api_instance.get Test Case(organization, project, planId, suiteId, testCaseIds, apiVersion, witFields, returnIdentityRef);
    print(result);
} catch (e) {
    print("Exception when calling SuiteTestCaseApi->get Test Case: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan for which test cases are requested. | [default to null]
 **suiteId** | **int**| ID of the test suite for which test cases are requested. | [default to null]
 **testCaseIds** | **String**| Test Case Ids to be fetched. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **witFields** | **String**| Get the list of witFields. | [optional] [default to null]
 **returnIdentityRef** | **bool**| If set to true, returns all identity fields, like AssignedTo, ActivatedBy etc., as IdentityRef objects. If set to false, these fields are returned as unique names in string format. This is false by default. | [optional] [default to null]

### Return type

[**List<TestCase>**](TestCase.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Case List**
> List<TestCase> get Test Case List(organization, project, planId, suiteId, apiVersion, testIds, configurationIds, witFields, continuationToken, returnIdentityRef, expand)



Get Test Case List return those test cases which have all the configuration Ids as mentioned in the optional paramter. If configuration Ids is null, it return all the test cases

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SuiteTestCaseApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan for which test cases are requested.
var suiteId = 56; // int | ID of the test suite for which test cases are requested.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var testIds = testIds_example; // String | Test Case Ids to be fetched.
var configurationIds = configurationIds_example; // String | Fetch Test Cases which contains all the configuration Ids specified.
var witFields = witFields_example; // String | Get the list of witFields.
var continuationToken = continuationToken_example; // String | If the list of test cases returned is not complete, a continuation token to query next batch of test cases is included in the response header as \"x-ms-continuationtoken\". Omit this parameter to get the first batch of test cases.
var returnIdentityRef = true; // bool | If set to true, returns all identity fields, like AssignedTo, ActivatedBy etc., as IdentityRef objects. If set to false, these fields are returned as unique names in string format. This is false by default.
var expand = true; // bool | If set to false, will get a smaller payload containing only basic details about the suite test case object

try { 
    var result = api_instance.get Test Case List(organization, project, planId, suiteId, apiVersion, testIds, configurationIds, witFields, continuationToken, returnIdentityRef, expand);
    print(result);
} catch (e) {
    print("Exception when calling SuiteTestCaseApi->get Test Case List: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan for which test cases are requested. | [default to null]
 **suiteId** | **int**| ID of the test suite for which test cases are requested. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **testIds** | **String**| Test Case Ids to be fetched. | [optional] [default to null]
 **configurationIds** | **String**| Fetch Test Cases which contains all the configuration Ids specified. | [optional] [default to null]
 **witFields** | **String**| Get the list of witFields. | [optional] [default to null]
 **continuationToken** | **String**| If the list of test cases returned is not complete, a continuation token to query next batch of test cases is included in the response header as \&quot;x-ms-continuationtoken\&quot;. Omit this parameter to get the first batch of test cases. | [optional] [default to null]
 **returnIdentityRef** | **bool**| If set to true, returns all identity fields, like AssignedTo, ActivatedBy etc., as IdentityRef objects. If set to false, these fields are returned as unique names in string format. This is false by default. | [optional] [default to null]
 **expand** | **bool**| If set to false, will get a smaller payload containing only basic details about the suite test case object | [optional] [default to null]

### Return type

[**List<TestCase>**](TestCase.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Test Cases From Suite**
> remove Test Cases From Suite(organization, project, planId, suiteId, testCaseIds, apiVersion)



Removes test cases from a suite based on the list of test case Ids provided.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SuiteTestCaseApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan from which test cases are to be removed.
var suiteId = 56; // int | ID of the test suite from which test cases are to be removed.
var testCaseIds = testCaseIds_example; // String | Test Case Ids to be removed.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    api_instance.remove Test Cases From Suite(organization, project, planId, suiteId, testCaseIds, apiVersion);
} catch (e) {
    print("Exception when calling SuiteTestCaseApi->remove Test Cases From Suite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan from which test cases are to be removed. | [default to null]
 **suiteId** | **int**| ID of the test suite from which test cases are to be removed. | [default to null]
 **testCaseIds** | **String**| Test Case Ids to be removed. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> List<TestCase> update(organization, project, planId, suiteId, apiVersion, body)



Update the configurations for test cases

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SuiteTestCaseApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan to which test cases are to be updated.
var suiteId = 56; // int | ID of the test suite to which test cases are to be updated.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = [List&lt;SuiteTestCaseCreateUpdateParameters&gt;()]; // List<SuiteTestCaseCreateUpdateParameters> | A SuiteTestCaseCreateUpdateParameters object.

try { 
    var result = api_instance.update(organization, project, planId, suiteId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SuiteTestCaseApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan to which test cases are to be updated. | [default to null]
 **suiteId** | **int**| ID of the test suite to which test cases are to be updated. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;SuiteTestCaseCreateUpdateParameters&gt;**](SuiteTestCaseCreateUpdateParameters.md)| A SuiteTestCaseCreateUpdateParameters object. | 

### Return type

[**List<TestCase>**](TestCase.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

