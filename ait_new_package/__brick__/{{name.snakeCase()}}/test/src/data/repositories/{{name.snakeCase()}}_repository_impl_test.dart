import 'package:common_dependency/common_dependency.dart';
import 'package:{{name.snakeCase()}}/src/data/datasources/{{name.snakeCase()}}_remote_ds.dart';
import 'package:{{name.snakeCase()}}/src/data/repositories/{{name.snakeCase()}}_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class Mock{{name.pascalCase()}}RemoteDs extends Mock implements {{name.pascalCase()}}RemoteDs {}

void main() {
  late {{name.pascalCase()}}RemoteDs mockRemote;
  late {{name.pascalCase()}}RepositoryImpl sut;

  setUp ((){
    mockRemote = Mock{{name.pascalCase()}}RemoteDs(); 
    sut ={{name.pascalCase()}}RepositoryImpl(mockRemote); 
    });

  group('group name', () {
     test('test name', () {
            
          }); 
    });
}

