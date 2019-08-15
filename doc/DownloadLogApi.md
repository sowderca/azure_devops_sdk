# azure_devops_sdk.api.DownloadLogApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download Log**](DownloadLogApi.md#download Log) | **GET** /{organization}/_apis/audit/downloadlog | 


# **download Log**
> String download Log(organization, format, apiVersion, startTime, endTime)



Downloads audit log entries.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = DownloadLogApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var format = format_example; // String | File format for download. Can be \"json\" or \"csv\".
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var startTime = 2013-10-20T19:20:30+01:00; // DateTime | Start time of download window. Optional
var endTime = 2013-10-20T19:20:30+01:00; // DateTime | End time of download window. Optional

try { 
    var result = api_instance.download Log(organization, format, apiVersion, startTime, endTime);
    print(result);
} catch (e) {
    print("Exception when calling DownloadLogApi->download Log: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **format** | **String**| File format for download. Can be \&quot;json\&quot; or \&quot;csv\&quot;. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **startTime** | **DateTime**| Start time of download window. Optional | [optional] [default to null]
 **endTime** | **DateTime**| End time of download window. Optional | [optional] [default to null]

### Return type

**String**

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

