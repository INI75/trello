import 'package:serverpod/serverpod.dart';
import 'package:trello_server/src/generated/activity.dart';

class ActivityEndpoint extends Endpoint {
  Future<bool> createActivity(Session session, Activity activity) async {
    await Activity.insert(session, activity);
    return true;
  }




  
}
