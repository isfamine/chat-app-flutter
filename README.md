## Prerequisites

1. VSCode
2. NodeJS version >= 16
3. Docker
4. VSCode extensions: Dart, Flutter, Docker, Gitlens, Pubspec Assist

## Steps

1. clone the project: `git clone git@github.com:isfamine/chat-app-flutter.git`
2. open the project in vscode: `code chat-app-flutter`
3. Start rethinkdb: `docker run -d -p 8080:8080 -p 28015:28015  --name rethinkdb rethinkdb`
4. Start NodeJS server:

```sh
cd server
npm i
npm start
```

5. Get flutter packages from vscode:
- `ctrl+shift+p`
- `Pub: Get Packages`

6. Create the following tables in `RethinkDB`: `dart helpers/generate.dart`
7. Open `main.dart` and `Debug`
