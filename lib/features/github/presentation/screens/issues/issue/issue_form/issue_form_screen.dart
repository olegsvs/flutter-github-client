import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/common.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';

import 'issue_form_bloc.dart';

class GhIssueFormScreen extends StatelessWidget {
  final String owner;
  final String name;

  GhIssueFormScreen(this.owner, this.name);

  var _title = '';
  var _body = '';

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IssueFormBloc, IssueFormState>(
        builder: (context, state) {
      return CommonScaffold(
        title: Text('Submit an issue'),
        body: Column(
          children: <Widget>[
            Padding(
              padding: CommonStyle.padding,
              child: CupertinoTextField(
                style: TextStyle(color: theme.palette.text),
                placeholder: 'Title',
                onChanged: (v) {
                  _title = v;
                  //TODO check
                  /*setState(() {
                    _title = v;
                  });*/
                },
              ),
            ),
            Padding(
              padding: CommonStyle.padding,
              child: CupertinoTextField(
                style: TextStyle(color: theme.palette.text),
                placeholder: 'Body',
                onChanged: (v) {
                  _body = v;
                  //TODO check
                  /*setState(() {
                    _body = v;
                  });*/
                },
                maxLines: 10,
              ),
            ),
            CupertinoButton.filled(
              child: Text('Submit'),
              onPressed: () async {
                final number = await context
                    .read<IssueFormBloc>()
                    .createIssue(owner, name, _title, _body);
                await theme.push(
                  context,
                  '/github/${owner}/${name}/issues/${number}',
                  replace: true,
                );
              },
            ),
          ],
        ),
      );
    });
  }
}

/*class GhIssueFormScreen extends StatelessWidget {
  final String owner;
  final String name;
  GhIssueFormScreen(this.owner, this.name);

  @override
  _GhIssueFormScreenState createState() => _GhIssueFormScreenState();
}

class _GhIssueFormScreenState extends State<GhIssueFormScreen> {
  var _title = '';
  var _body = '';
  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: Text('Submit an issue'),
      body: Column(
        children: <Widget>[
          Padding(
            padding: CommonStyle.padding,
            child: CupertinoTextField(
              style: TextStyle(color: theme.palette.text),
              placeholder: 'Title',
              onChanged: (v) {
                setState(() {
                  _title = v;
                });
              },
            ),
          ),
          Padding(
            padding: CommonStyle.padding,
            child: CupertinoTextField(
              style: TextStyle(color: theme.palette.text),
              placeholder: 'Body',
              onChanged: (v) {
                setState(() {
                  _body = v;
                });
              },
              maxLines: 10,
            ),
          ),
          CupertinoButton.filled(
            child: Text('Submit'),
            onPressed: () async {
              final slug = RepositorySlug(widget.owner, widget.name);
              final res = await context
                  .read<LoginModel>()
                  .ghClient!
                  .issues
                  .create(slug, IssueRequest(title: _title, body: _body));
              await theme.push(
                context,
                '/github/${widget.owner}/${widget.name}/issues/${res.number}',
                replace: true,
              );
            },
          ),
        ],
      ),
    );
  }
}*/
