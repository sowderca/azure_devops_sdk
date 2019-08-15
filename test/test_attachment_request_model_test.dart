import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TestAttachmentRequestModel
void main() {
  var instance = TestAttachmentRequestModel();

  group('test TestAttachmentRequestModel', () {
    // Attachment type By Default it will be GeneralAttachment. It can be one of the following type. { GeneralAttachment, AfnStrip, BugFilingData, CodeCoverage, IntermediateCollectorData, RunConfig, TestImpactDetails, TmiTestRunDeploymentFiles, TmiTestRunReverseDeploymentFiles, TmiTestResultDetail, TmiTestRunSummary }
    // String attachmentType (default value: null)
    test('to test the property `attachmentType`', () async {
      // TODO
    });

    // Comment associated with attachment
    // String comment (default value: null)
    test('to test the property `comment`', () async {
      // TODO
    });

    // Attachment filename
    // String fileName (default value: null)
    test('to test the property `fileName`', () async {
      // TODO
    });

    // Base64 encoded file stream
    // String stream (default value: null)
    test('to test the property `stream`', () async {
      // TODO
    });


  });

}
