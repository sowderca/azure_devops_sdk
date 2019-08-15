# azure_devops_sdk.api.ProvenanceApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSession**](ProvenanceApi.md#createSession) | **POST** /{organization}/{project}/_apis/provenance/session/{protocol} | 


# **createSession**
> SessionResponse createSession(organization, protocol, project, apiVersion, body)



Creates a session, a wrapper around a feed that can store additional metadata on the packages published to it.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProvenanceApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var protocol = protocol_example; // String | The protocol that the session will target
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = SessionRequest(); // SessionRequest | The feed and metadata for the session

try { 
    var result = api_instance.createSession(organization, protocol, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ProvenanceApi->createSession: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **protocol** | **String**| The protocol that the session will target | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**SessionRequest**](SessionRequest.md)| The feed and metadata for the session | 

### Return type

[**SessionResponse**](SessionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

