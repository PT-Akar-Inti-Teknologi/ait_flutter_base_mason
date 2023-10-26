import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../datasources/{{name.snakeCase()}}_remote_ds.dart';

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}RemoteDs _remote;
  {{name.pascalCase()}}RepositoryImpl (this._remote);
}
