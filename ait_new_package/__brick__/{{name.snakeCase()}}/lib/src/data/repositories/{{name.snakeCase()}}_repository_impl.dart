import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}RemoteDsImpl _remote;
  {{name.pascalCase()}}RepositoryImpl (this._remote);
}
