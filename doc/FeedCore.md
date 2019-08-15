# azure_devops_sdk.model.FeedCore

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**capabilities** | **String** | Supported capabilities of a feed. | [optional] [default to null]
**fullyQualifiedId** | **String** | This will either be the feed GUID or the feed GUID and view GUID depending on how the feed was accessed. | [optional] [default to null]
**fullyQualifiedName** | **String** | Full name of the view, in feed@view format. | [optional] [default to null]
**id** | **String** | A GUID that uniquely identifies this feed. | [optional] [default to null]
**isReadOnly** | **bool** | If set, all packages in the feed are immutable.  It is important to note that feed views are immutable; therefore, this flag will always be set for views. | [optional] [default to null]
**name** | **String** | A name for the feed. feed names must follow these rules: &lt;list type&#x3D;\&quot;bullet\&quot;&gt;&lt;item&gt;&lt;description&gt; Must not exceed 64 characters &lt;/description&gt;&lt;/item&gt;&lt;item&gt;&lt;description&gt; Must not contain whitespaces &lt;/description&gt;&lt;/item&gt;&lt;item&gt;&lt;description&gt; Must not start with an underscore or a period &lt;/description&gt;&lt;/item&gt;&lt;item&gt;&lt;description&gt; Must not end with a period &lt;/description&gt;&lt;/item&gt;&lt;item&gt;&lt;description&gt; Must not contain any of the following illegal characters: &lt;![CDATA[ @, ~, ;, {, }, \\, +, &#x3D;, &lt;, &gt;, |, /, \\\\, ?, :, &amp;, $, *, \\\&quot;, #, [, ] ]]&gt;&lt;/description&gt;&lt;/item&gt;&lt;/list&gt; | [optional] [default to null]
**project** | [**ProjectReference**](ProjectReference.md) |  | [optional] [default to null]
**upstreamEnabled** | **bool** | OBSOLETE: This should always be true.  Setting to false will override all sources in UpstreamSources. | [optional] [default to null]
**upstreamSources** | [**List&lt;UpstreamSource&gt;**](UpstreamSource.md) | A list of sources that this feed will fetch packages from.  An empty list indicates that this feed will not search any additional sources for packages. | [optional] [default to []]
**view** | [**FeedView**](FeedView.md) |  | [optional] [default to null]
**viewId** | **String** | View Id. | [optional] [default to null]
**viewName** | **String** | View name. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


