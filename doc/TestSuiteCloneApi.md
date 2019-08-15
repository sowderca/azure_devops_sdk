# azure_devops_sdk.api.TestSuiteCloneApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](TestSuiteCloneApi.md#callGet) | **GET** /{organization}/{project}/_apis/testplan/Suites/CloneOperation/{cloneOperationId} | 
[**clone Test Suite**](TestSuiteCloneApi.md#clone Test Suite) | **POST** /{organization}/{project}/_apis/testplan/Suites/CloneOperation | 


# **callGet**
> CloneTestSuiteOperationInformation callGet(organization, project, cloneOperationId, apiVersion)



Get clone information.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuiteCloneApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var cloneOperationId = 56; // int | Operation ID returned when we queue a clone operation
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, cloneOperationId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TestSuiteCloneApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **cloneOperationId** | **int**| Operation ID returned when we queue a clone operation | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

[**CloneTestSuiteOperationInformation**](CloneTestSuiteOperationInformation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clone Test Suite**
> CloneTestSuiteOperationInformation clone Test Suite(organization, project, apiVersion, body, deepClone)



Clone test suite

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuiteCloneApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = CloneTestSuiteParams(); // CloneTestSuiteParams | Suite Clone Request Body detail TestSuiteCloneRequest
var deepClone = true; // bool | Clones all the associated test cases as well

try { 
    var result = api_instance.clone Test Suite(organization, project, apiVersion, body, deepClone);
    print(result);
} catch (e) {
    print("Exception when calling TestSuiteCloneApi->clone Test Suite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**CloneTestSuiteParams**](CloneTestSuiteParams.md)| Suite Clone Request Body detail TestSuiteCloneRequest | 
 **deepClone** | **bool**| Clones all the associated test cases as well | [optional] [default to null]

### Return type

[**CloneTestSuiteOperationInformation**](CloneTestSuiteOperationInformation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

