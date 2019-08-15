# azure_devops_sdk.api.SessionApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SessionApi.md#create) | **POST** /{organization}/{project}/{team}/_apis/test/session | 
[**list**](SessionApi.md#list) | **GET** /{organization}/{project}/{team}/_apis/test/session | 
[**update**](SessionApi.md#update) | **PATCH** /{organization}/{project}/{team}/_apis/test/session | 


# **create**
> TestSession create(organization, project, team, apiVersion, body)



Create a test session

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SessionApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestSession(); // TestSession | Test session details for creation

try { 
    var result = api_instance.create(organization, project, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SessionApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestSession**](TestSession.md)| Test session details for creation | 

### Return type

[**TestSession**](TestSession.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TestSession> list(organization, project, team, apiVersion, period, allSessions, includeAllProperties, source, includeOnlyCompletedSessions)



Get a list of test sessions

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SessionApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var period = 56; // int | Period in days from now, for which test sessions are fetched.
var allSessions = true; // bool | If false, returns test sessions for current user. Otherwise, it returns test sessions for all users
var includeAllProperties = true; // bool | If true, it returns all properties of the test sessions. Otherwise, it returns the skinny version.
var source = source_example; // String | Source of the test session.
var includeOnlyCompletedSessions = true; // bool | If true, it returns test sessions in completed state. Otherwise, it returns test sessions for all states

try { 
    var result = api_instance.list(organization, project, team, apiVersion, period, allSessions, includeAllProperties, source, includeOnlyCompletedSessions);
    print(result);
} catch (e) {
    print("Exception when calling SessionApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **period** | **int**| Period in days from now, for which test sessions are fetched. | [optional] [default to null]
 **allSessions** | **bool**| If false, returns test sessions for current user. Otherwise, it returns test sessions for all users | [optional] [default to null]
 **includeAllProperties** | **bool**| If true, it returns all properties of the test sessions. Otherwise, it returns the skinny version. | [optional] [default to null]
 **source** | **String**| Source of the test session. | [optional] [default to null]
 **includeOnlyCompletedSessions** | **bool**| If true, it returns test sessions in completed state. Otherwise, it returns test sessions for all states | [optional] [default to null]

### Return type

[**List<TestSession>**](TestSession.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> TestSession update(organization, project, team, apiVersion, body)



Update a test session

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SessionApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestSession(); // TestSession | Test session details for update

try { 
    var result = api_instance.update(organization, project, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SessionApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestSession**](TestSession.md)| Test session details for update | 

### Return type

[**TestSession**](TestSession.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

