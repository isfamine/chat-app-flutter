import 'dart:io';

import 'package:rethinkdb_dart/rethinkdb_dart.dart';

main() async {
  Rethinkdb r = Rethinkdb();
  Connection connection;

  connection = await r.connect(host: '127.0.0.1', port: 28015);

  await r.dbCreate('test').run(connection).catchError((err) => {});
  await r.tableCreate('users').run(connection).catchError((err) => {});
  await r.tableCreate('messages').run(connection).catchError((err) => {});
  await r.tableCreate('receipts').run(connection).catchError((err) => {});
  await r.tableCreate('typing_events').run(connection).catchError((err) => {});

  exit(0);
}
