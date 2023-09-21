import 'package:serverpod/serverpod.dart';
import 'package:trello_server/src/generated/protocol.dart';

class ListboardEndpoint extends Endpoint {
  // gets list in  a board

  Future<List<Listboard>> getListByBoard(Session session,
      {required int boardId}) async {
    List<Listboard> lists = await Listboard.find(
      session,
      where: (l) => l.boardId.equals(boardId),
    );

    for (int i = 0; i < lists.length; i++) {
      List<Card> cards = await Card.find(
        session,
        where: (c) => c.listId.equals(lists[i].id),
      );
      lists[i].cards = cards;
    }

    return lists;
  }

  Future<Listboard> createList(Session session, Listboard list) async {
   await Listboard.insert(session, list);
    return list;
  }
}
