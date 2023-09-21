import 'package:serverpod/serverpod.dart';
import 'package:trello_server/src/generated/checklist.dart';

class ChecklistEndpoint extends Endpoint {
  Future<Checklist> createChecklist(
      Session session, Checklist checklist) async {
    await Checklist.insert(session, checklist);
    return checklist;
  }

  Future<bool> updateCheckList(Session session, Checklist checklist) async {
    return await session.db.update(checklist);
  }

  Future<bool> deleteChecklist(Session session, Checklist checklist) async {
    return await Checklist.deleteRow(session, checklist);
    
  }
}
