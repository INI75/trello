import 'package:serverpod/serverpod.dart';
import 'package:trello_server/src/generated/member.dart';
import 'package:trello_server/src/generated/protocol.dart';

import '../generated/user.dart';

class MemberEndpoint extends Endpoint {
  Future<Member> addMemeber(Session session, Member member) async {
    await Member.insert(session, member);
    return member;
  }

  Future<List<Member>> getMembersByWorkspace(Session session,
      {required int workspaceId}) async {
    List<Member> members = await Member.find(
      session,
      where: (m) => m.workspaceId.equals(workspaceId),
    );

    return members;
  }

  Future<List<User>> getinformationOfMembers(
      Session session, List<Member> members) async {
    List<User> users = [];
    for (int i = 0; i < members.length; i++) {
      User? user = await User.findById(session, members[i].userId);
      users.add(user!);
    }

    return users;
  }

  Future<Workspace> deleteMember(
      Session session, Member member, Workspace workspace) async {
    await Member.delete(session,
        where: (m) =>
            m.workspaceId.equals(workspace.id) & m.id.equals(member.id));

    List<Member> members = await Member.find(
      session,
      where: (m) => m.workspaceId.equals(workspace.id),
    );

    workspace.members = members;
    return workspace;
  }
}
