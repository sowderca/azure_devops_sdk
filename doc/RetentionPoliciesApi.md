# azure_devops_sdk.api.RetentionPoliciesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete Retention Policy**](RetentionPoliciesApi.md#delete Retention Policy) | **DELETE** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/retentionpolicies | 
[**get Retention Policy**](RetentionPoliciesApi.md#get Retention Policy) | **GET** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/retentionpolicies | 
[**set Retention Policy**](RetentionPoliciesApi.md#set Retention Policy) | **PUT** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/retentionpolicies | 


# **delete Retention Policy**
> delete Retention Policy(organization, feedId, project, apiVersion)



Delete the retention policy for a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RetentionPoliciesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete Retention Policy(organization, feedId, project, apiVersion);
} catch (e) {
    print("Exception when calling RetentionPoliciesApi->delete Retention Policy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Retention Policy**
> FeedRetentionPolicy get Retention Policy(organization, feedId, project, apiVersion)



Get the retention policy for a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RetentionPoliciesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Retention Policy(organization, feedId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RetentionPoliciesApi->get Retention Policy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**FeedRetentionPolicy**](FeedRetentionPolicy.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set Retention Policy**
> FeedRetentionPolicy set Retention Policy(organization, feedId, project, apiVersion, body)



Set the retention policy for a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RetentionPoliciesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = FeedRetentionPolicy(); // FeedRetentionPolicy | Feed retention policy.

try { 
    var result = api_instance.set Retention Policy(organization, feedId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RetentionPoliciesApi->set Retention Policy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**FeedRetentionPolicy**](FeedRetentionPolicy.md)| Feed retention policy. | 

### Return type

[**FeedRetentionPolicy**](FeedRetentionPolicy.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

