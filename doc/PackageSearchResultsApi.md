# azure_devops_sdk.api.PackageSearchResultsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch Package Search Results**](PackageSearchResultsApi.md#fetch Package Search Results) | **POST** /{organization}/_apis/search/packagesearchresults | 


# **fetch Package Search Results**
> PackageSearchResponseContent fetch Package Search Results(organization, apiVersion, body)



Provides a set of results for the search text.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PackageSearchResultsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = PackageSearchRequest(); // PackageSearchRequest | The Package Search Request.

try { 
    var result = api_instance.fetch Package Search Results(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PackageSearchResultsApi->fetch Package Search Results: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**PackageSearchRequest**](PackageSearchRequest.md)| The Package Search Request. | 

### Return type

[**PackageSearchResponseContent**](PackageSearchResponseContent.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

