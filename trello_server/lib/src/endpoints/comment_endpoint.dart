import 'package:serverpod/serverpod.dart';
import 'package:trello_server/src/generated/comment.dart';

class CommentEndpoint extends Endpoint {
  Future<Comment> createComment(Session session, Comment comment) async {
    await Comment.insert(session, comment);

    return comment;
  }

  Future<bool> deleteCommment(Session session, Comment comment) async {
    return await Comment.deleteRow(session, comment);
  }
}
