import 'package:serverpod/serverpod.dart';
import 'package:trello_server/src/generated/attachment.dart';

class AttachmentEndpoint extends Endpoint {
  Future<Attachment> addAttachment(
      Session session, Attachment attachment) async {
    await Attachment.insert(session, attachment);
    return attachment;

  }
  
}
