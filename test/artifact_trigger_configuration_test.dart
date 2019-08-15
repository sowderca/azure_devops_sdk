import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ArtifactTriggerConfiguration
void main() {
  var instance = ArtifactTriggerConfiguration();

  group('test ArtifactTriggerConfiguration', () {
    // Gets or sets the whether trigger is supported or not.
    // bool isTriggerSupported (default value: null)
    test('to test the property `isTriggerSupported`', () async {
      // TODO
    });

    // Gets or sets the whether trigger is supported only on hosted environment.
    // bool isTriggerSupportedOnlyInHosted (default value: null)
    test('to test the property `isTriggerSupportedOnlyInHosted`', () async {
      // TODO
    });

    // Gets or sets the whether webhook is supported at server level.
    // bool isWebhookSupportedAtServerLevel (default value: null)
    test('to test the property `isWebhookSupportedAtServerLevel`', () async {
      // TODO
    });

    // Gets or sets the payload hash header name for the artifact trigger configuration.
    // String payloadHashHeaderName (default value: null)
    test('to test the property `payloadHashHeaderName`', () async {
      // TODO
    });

    // Gets or sets the resources for artifact trigger configuration.
    // Map<String, String> resources (default value: {})
    test('to test the property `resources`', () async {
      // TODO
    });

    // Gets or sets the webhook payload mapping for artifact trigger configuration.
    // Map<String, String> webhookPayloadMapping (default value: {})
    test('to test the property `webhookPayloadMapping`', () async {
      // TODO
    });


  });

}
