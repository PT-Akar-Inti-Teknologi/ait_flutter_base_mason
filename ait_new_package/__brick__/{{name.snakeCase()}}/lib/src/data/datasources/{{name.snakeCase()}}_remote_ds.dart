
import 'package:common_dependency/common_dependency.dart';

abstract interface class {{name.pascalCase()}}RemoteDs  {}

class {{name.pascalCase()}}RemoteDsImpl  implements {{name.pascalCase()}}RemoteDs {
    final DioService _client; 
  {{name.pascalCase()}}RemoteDsImpl (this._client);
  }
