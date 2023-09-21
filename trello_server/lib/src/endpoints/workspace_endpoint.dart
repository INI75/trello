import 'package:serverpod/serverpod.dart';
import 'package:trello_server/src/generated/protocol.dart';

class WorkspaceEndpoint extends Endpoint {
// create a workspace

  Future<Workspace> createWorkSpace(
      Session session, Workspace workspace) async {
    await Workspace.insert(session, workspace);
    return workspace;
  }

// get workspace by user
  Future<List<Workspace>> getWorkspaceByUser(Session session,
      {required int userId}) async {
    List<Workspace> workspaces =
        await Workspace.find(session, where: (w) => w.userId.equals(userId));

    for (int i = 0; i < workspaces.length; i++) {
      List<Member> memebers = await Member.find(
        session,
        where: (m) => m.workspaceId.equals(workspaces[i].id),
      );

      workspaces[i].members = memebers;
    }

    return workspaces;
  }

// get workspace by id

  Future<Workspace?> getworkspaceById(Session session,
      {required int workspaceId}) async {
    Workspace? workspace = await Workspace.findById(session, workspaceId);
    return workspace;
  }

  ///    boards associated with workspace
  Future<List<Board>> getBoardsByWorkspace(Session session,
      {required int workspaceId}) async {
    List<Board> boards = await Board.find(
      session,
      where: (b) => b.workspaceId.equals(workspaceId),
    );

    return boards;
  }

  // update work space
  Future<bool> updateWorkspace(Session session, Workspace workspace) async {
    return await session.db.update(workspace);
  }

  // delete work space
  Future<bool> deleteWorkspace(Session session, Workspace workspace) async {
    return await Workspace.deleteRow(session, workspace);
  }
}
