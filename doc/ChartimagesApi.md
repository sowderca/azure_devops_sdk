# azure_devops_sdk.api.ChartimagesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Board Chart Image**](ChartimagesApi.md#get Board Chart Image) | **GET** /{organization}/{project}/{team}/_apis/work/boards/{board}/chartimages/{name} | 
[**get Iteration Chart Image**](ChartimagesApi.md#get Iteration Chart Image) | **GET** /{organization}/{project}/{team}/_apis/work/iterations/{iterationId}/chartimages/{name} | 
[**get Iterations Chart Image**](ChartimagesApi.md#get Iterations Chart Image) | **GET** /{organization}/{project}/{team}/_apis/work/iterations/chartimages/{name} | 


# **get Board Chart Image**
> String get Board Chart Image(organization, project, team, board, name, apiVersion, width, height, showDetails, title)



Get a board chart image.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChartimagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var board = board_example; // String | Identifier for board, either board's backlog level name (e.g. \"Issues\") or Id.
var name = name_example; // String | The chart name. e.g. CumulativeFlow.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var width = 56; // int | The width of the chart in pixels. Must be greater than 0.
var height = 56; // int | The height of the chart in pixels. Must be greater than 0.
var showDetails = true; // bool | Whether or not the chart should include detailed information (e.g. axis labels, titles, trend lines, etc.).
var title = title_example; // String | The title of the chart. Can only be dislayed if ShowLabels is true.

try { 
    var result = api_instance.get Board Chart Image(organization, project, team, board, name, apiVersion, width, height, showDetails, title);
    print(result);
} catch (e) {
    print("Exception when calling ChartimagesApi->get Board Chart Image: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **board** | **String**| Identifier for board, either board&#39;s backlog level name (e.g. \&quot;Issues\&quot;) or Id. | [default to null]
 **name** | **String**| The chart name. e.g. CumulativeFlow. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **width** | **int**| The width of the chart in pixels. Must be greater than 0. | [optional] [default to null]
 **height** | **int**| The height of the chart in pixels. Must be greater than 0. | [optional] [default to null]
 **showDetails** | **bool**| Whether or not the chart should include detailed information (e.g. axis labels, titles, trend lines, etc.). | [optional] [default to null]
 **title** | **String**| The title of the chart. Can only be dislayed if ShowLabels is true. | [optional] [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Iteration Chart Image**
> String get Iteration Chart Image(organization, project, team, iterationId, name, apiVersion, width, height, showDetails, title)



Get an iteration chart image.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChartimagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var iterationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the iteration.
var name = name_example; // String | The chart name. e.g. Burndown.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var width = 56; // int | The width of the chart in pixels. Must be greater than 0.
var height = 56; // int | The height of the chart in pixels. Must be greater than 0.
var showDetails = true; // bool | Whether or not the chart should include detailed information (e.g. axis labels, titles, trend lines, etc.)
var title = title_example; // String | The title of the chart. Can only be dislayed if ShowLabels is true.

try { 
    var result = api_instance.get Iteration Chart Image(organization, project, team, iterationId, name, apiVersion, width, height, showDetails, title);
    print(result);
} catch (e) {
    print("Exception when calling ChartimagesApi->get Iteration Chart Image: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **iterationId** | [**String**](.md)| ID of the iteration. | [default to null]
 **name** | **String**| The chart name. e.g. Burndown. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **width** | **int**| The width of the chart in pixels. Must be greater than 0. | [optional] [default to null]
 **height** | **int**| The height of the chart in pixels. Must be greater than 0. | [optional] [default to null]
 **showDetails** | **bool**| Whether or not the chart should include detailed information (e.g. axis labels, titles, trend lines, etc.) | [optional] [default to null]
 **title** | **String**| The title of the chart. Can only be dislayed if ShowLabels is true. | [optional] [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Iterations Chart Image**
> String get Iterations Chart Image(organization, project, team, name, apiVersion, iterationsNumber, width, height, showDetails, title)



Get an iterations chart image.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChartimagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var name = name_example; // String | The chart name. e.g. Velocity.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var iterationsNumber = 56; // int | Number of iterations the chart is for.
var width = 56; // int | The width of the chart in pixels. Must be greater than 0.
var height = 56; // int | The height of the chart in pixels. Must be greater than 0.
var showDetails = true; // bool | Whether or not the chart should include detailed information (e.g. axis labels, titles, trend lines, etc.)
var title = title_example; // String | The title of the chart. Can only be dislayed if ShowLabels is true.

try { 
    var result = api_instance.get Iterations Chart Image(organization, project, team, name, apiVersion, iterationsNumber, width, height, showDetails, title);
    print(result);
} catch (e) {
    print("Exception when calling ChartimagesApi->get Iterations Chart Image: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **name** | **String**| The chart name. e.g. Velocity. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **iterationsNumber** | **int**| Number of iterations the chart is for. | [optional] [default to null]
 **width** | **int**| The width of the chart in pixels. Must be greater than 0. | [optional] [default to null]
 **height** | **int**| The height of the chart in pixels. Must be greater than 0. | [optional] [default to null]
 **showDetails** | **bool**| Whether or not the chart should include detailed information (e.g. axis labels, titles, trend lines, etc.) | [optional] [default to null]
 **title** | **String**| The title of the chart. Can only be dislayed if ShowLabels is true. | [optional] [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

