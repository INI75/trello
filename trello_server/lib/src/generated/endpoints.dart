/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/activity_endpoint.dart' as _i2;
import '../endpoints/attachment_endpoint.dart' as _i3;
import '../endpoints/board_endpoint.dart' as _i4;
import '../endpoints/card_endpoint.dart' as _i5;
import '../endpoints/checklist_endpoint.dart' as _i6;
import '../endpoints/comment_endpoint.dart' as _i7;
import '../endpoints/example_endpoint.dart' as _i8;
import '../endpoints/listboard_endpoint.dart' as _i9;
import '../endpoints/member_endpoint.dart' as _i10;
import '../endpoints/user_endpoint.dart' as _i11;
import '../endpoints/workspace_endpoint.dart' as _i12;
import 'package:trello_server/src/generated/activity.dart' as _i13;
import 'package:trello_server/src/generated/attachment.dart' as _i14;
import 'package:trello_server/src/generated/board.dart' as _i15;
import 'package:trello_server/src/generated/card.dart' as _i16;
import 'package:trello_server/src/generated/checklist.dart' as _i17;
import 'package:trello_server/src/generated/comment.dart' as _i18;
import 'package:trello_server/src/generated/listboard.dart' as _i19;
import 'package:trello_server/src/generated/member.dart' as _i20;
import 'package:trello_server/src/generated/workspace.dart' as _i21;
import 'package:trello_server/src/generated/user.dart' as _i22;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'activity': _i2.ActivityEndpoint()
        ..initialize(
          server,
          'activity',
          null,
        ),
      'attachment': _i3.AttachmentEndpoint()
        ..initialize(
          server,
          'attachment',
          null,
        ),
      'boardEndpoints': _i4.BoardEndpoints()
        ..initialize(
          server,
          'boardEndpoints',
          null,
        ),
      'card': _i5.CardEndpoint()
        ..initialize(
          server,
          'card',
          null,
        ),
      'checklist': _i6.ChecklistEndpoint()
        ..initialize(
          server,
          'checklist',
          null,
        ),
      'comment': _i7.CommentEndpoint()
        ..initialize(
          server,
          'comment',
          null,
        ),
      'example': _i8.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'listboard': _i9.ListboardEndpoint()
        ..initialize(
          server,
          'listboard',
          null,
        ),
      'member': _i10.MemberEndpoint()
        ..initialize(
          server,
          'member',
          null,
        ),
      'userEndPoint': _i11.UserEndPoint()
        ..initialize(
          server,
          'userEndPoint',
          null,
        ),
      'workspace': _i12.WorkspaceEndpoint()
        ..initialize(
          server,
          'workspace',
          null,
        ),
    };
    connectors['activity'] = _i1.EndpointConnector(
      name: 'activity',
      endpoint: endpoints['activity']!,
      methodConnectors: {
        'createActivity': _i1.MethodConnector(
          name: 'createActivity',
          params: {
            'activity': _i1.ParameterDescription(
              name: 'activity',
              type: _i1.getType<_i13.Activity>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['activity'] as _i2.ActivityEndpoint).createActivity(
            session,
            params['activity'],
          ),
        )
      },
    );
    connectors['attachment'] = _i1.EndpointConnector(
      name: 'attachment',
      endpoint: endpoints['attachment']!,
      methodConnectors: {
        'addAttachment': _i1.MethodConnector(
          name: 'addAttachment',
          params: {
            'attachment': _i1.ParameterDescription(
              name: 'attachment',
              type: _i1.getType<_i14.Attachment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['attachment'] as _i3.AttachmentEndpoint).addAttachment(
            session,
            params['attachment'],
          ),
        )
      },
    );
    connectors['boardEndpoints'] = _i1.EndpointConnector(
      name: 'boardEndpoints',
      endpoint: endpoints['boardEndpoints']!,
      methodConnectors: {
        'createBoard': _i1.MethodConnector(
          name: 'createBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i15.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['boardEndpoints'] as _i4.BoardEndpoints).createBoard(
            session,
            params['board'],
          ),
        ),
        'updateBoard': _i1.MethodConnector(
          name: 'updateBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i15.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['boardEndpoints'] as _i4.BoardEndpoints).updateBoard(
            session,
            params['board'],
          ),
        ),
        'deleteBoard': _i1.MethodConnector(
          name: 'deleteBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i15.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['boardEndpoints'] as _i4.BoardEndpoints).deleteBoard(
            session,
            params['board'],
          ),
        ),
        'getWorkspaceForBoard': _i1.MethodConnector(
          name: 'getWorkspaceForBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i15.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['boardEndpoints'] as _i4.BoardEndpoints)
                  .getWorkspaceForBoard(
            session,
            params['board'],
          ),
        ),
      },
    );
    connectors['card'] = _i1.EndpointConnector(
      name: 'card',
      endpoint: endpoints['card']!,
      methodConnectors: {
        'createCard': _i1.MethodConnector(
          name: 'createCard',
          params: {
            'card': _i1.ParameterDescription(
              name: 'card',
              type: _i1.getType<_i16.Card>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['card'] as _i5.CardEndpoint).createCard(
            session,
            params['card'],
          ),
        ),
        'updateCard': _i1.MethodConnector(
          name: 'updateCard',
          params: {
            'card': _i1.ParameterDescription(
              name: 'card',
              type: _i1.getType<_i16.Card>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['card'] as _i5.CardEndpoint).updateCard(
            session,
            params['card'],
          ),
        ),
      },
    );
    connectors['checklist'] = _i1.EndpointConnector(
      name: 'checklist',
      endpoint: endpoints['checklist']!,
      methodConnectors: {
        'createChecklist': _i1.MethodConnector(
          name: 'createChecklist',
          params: {
            'checklist': _i1.ParameterDescription(
              name: 'checklist',
              type: _i1.getType<_i17.Checklist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['checklist'] as _i6.ChecklistEndpoint).createChecklist(
            session,
            params['checklist'],
          ),
        ),
        'updateCheckList': _i1.MethodConnector(
          name: 'updateCheckList',
          params: {
            'checklist': _i1.ParameterDescription(
              name: 'checklist',
              type: _i1.getType<_i17.Checklist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['checklist'] as _i6.ChecklistEndpoint).updateCheckList(
            session,
            params['checklist'],
          ),
        ),
        'deleteChecklist': _i1.MethodConnector(
          name: 'deleteChecklist',
          params: {
            'checklist': _i1.ParameterDescription(
              name: 'checklist',
              type: _i1.getType<_i17.Checklist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['checklist'] as _i6.ChecklistEndpoint).deleteChecklist(
            session,
            params['checklist'],
          ),
        ),
      },
    );
    connectors['comment'] = _i1.EndpointConnector(
      name: 'comment',
      endpoint: endpoints['comment']!,
      methodConnectors: {
        'createComment': _i1.MethodConnector(
          name: 'createComment',
          params: {
            'comment': _i1.ParameterDescription(
              name: 'comment',
              type: _i1.getType<_i18.Comment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i7.CommentEndpoint).createComment(
            session,
            params['comment'],
          ),
        ),
        'deleteCommment': _i1.MethodConnector(
          name: 'deleteCommment',
          params: {
            'comment': _i1.ParameterDescription(
              name: 'comment',
              type: _i1.getType<_i18.Comment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i7.CommentEndpoint).deleteCommment(
            session,
            params['comment'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i8.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['listboard'] = _i1.EndpointConnector(
      name: 'listboard',
      endpoint: endpoints['listboard']!,
      methodConnectors: {
        'getListByBoard': _i1.MethodConnector(
          name: 'getListByBoard',
          params: {
            'boardId': _i1.ParameterDescription(
              name: 'boardId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['listboard'] as _i9.ListboardEndpoint).getListByBoard(
            session,
            boardId: params['boardId'],
          ),
        ),
        'createList': _i1.MethodConnector(
          name: 'createList',
          params: {
            'list': _i1.ParameterDescription(
              name: 'list',
              type: _i1.getType<_i19.Listboard>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['listboard'] as _i9.ListboardEndpoint).createList(
            session,
            params['list'],
          ),
        ),
      },
    );
    connectors['member'] = _i1.EndpointConnector(
      name: 'member',
      endpoint: endpoints['member']!,
      methodConnectors: {
        'addMemeber': _i1.MethodConnector(
          name: 'addMemeber',
          params: {
            'member': _i1.ParameterDescription(
              name: 'member',
              type: _i1.getType<_i20.Member>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['member'] as _i10.MemberEndpoint).addMemeber(
            session,
            params['member'],
          ),
        ),
        'getMembersByWorkspace': _i1.MethodConnector(
          name: 'getMembersByWorkspace',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['member'] as _i10.MemberEndpoint)
                  .getMembersByWorkspace(
            session,
            workspaceId: params['workspaceId'],
          ),
        ),
        'getinformationOfMembers': _i1.MethodConnector(
          name: 'getinformationOfMembers',
          params: {
            'members': _i1.ParameterDescription(
              name: 'members',
              type: _i1.getType<List<_i20.Member>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['member'] as _i10.MemberEndpoint)
                  .getinformationOfMembers(
            session,
            params['members'],
          ),
        ),
        'deleteMember': _i1.MethodConnector(
          name: 'deleteMember',
          params: {
            'member': _i1.ParameterDescription(
              name: 'member',
              type: _i1.getType<_i20.Member>(),
              nullable: false,
            ),
            'workspace': _i1.ParameterDescription(
              name: 'workspace',
              type: _i1.getType<_i21.Workspace>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['member'] as _i10.MemberEndpoint).deleteMember(
            session,
            params['member'],
            params['workspace'],
          ),
        ),
      },
    );
    connectors['userEndPoint'] = _i1.EndpointConnector(
      name: 'userEndPoint',
      endpoint: endpoints['userEndPoint']!,
      methodConnectors: {
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i22.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i11.UserEndPoint).createUser(
            session,
            params['user'],
          ),
        ),
        'getUserById': _i1.MethodConnector(
          name: 'getUserById',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i11.UserEndPoint).getUserById(
            session,
            userId: params['userId'],
          ),
        ),
      },
    );
    connectors['workspace'] = _i1.EndpointConnector(
      name: 'workspace',
      endpoint: endpoints['workspace']!,
      methodConnectors: {
        'createWorkSpace': _i1.MethodConnector(
          name: 'createWorkSpace',
          params: {
            'workspace': _i1.ParameterDescription(
              name: 'workspace',
              type: _i1.getType<_i21.Workspace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .createWorkSpace(
            session,
            params['workspace'],
          ),
        ),
        'getWorkspaceByUser': _i1.MethodConnector(
          name: 'getWorkspaceByUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .getWorkspaceByUser(
            session,
            userId: params['userId'],
          ),
        ),
        'getworkspaceById': _i1.MethodConnector(
          name: 'getworkspaceById',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .getworkspaceById(
            session,
            workspaceId: params['workspaceId'],
          ),
        ),
        'getBoardsByWorkspace': _i1.MethodConnector(
          name: 'getBoardsByWorkspace',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .getBoardsByWorkspace(
            session,
            workspaceId: params['workspaceId'],
          ),
        ),
        'updateWorkspace': _i1.MethodConnector(
          name: 'updateWorkspace',
          params: {
            'workspace': _i1.ParameterDescription(
              name: 'workspace',
              type: _i1.getType<_i21.Workspace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .updateWorkspace(
            session,
            params['workspace'],
          ),
        ),
        'deleteWorkspace': _i1.MethodConnector(
          name: 'deleteWorkspace',
          params: {
            'workspace': _i1.ParameterDescription(
              name: 'workspace',
              type: _i1.getType<_i21.Workspace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .deleteWorkspace(
            session,
            params['workspace'],
          ),
        ),
      },
    );
  }
}
