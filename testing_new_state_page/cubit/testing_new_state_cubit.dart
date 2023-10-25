import 'package:common_dependency/common_dependency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'testing_new_state_state.dart';
part 'testing_new_state_cubit.freezed.dart';

class TestingNewStateCubit extends Cubit<TestingNewStateState> with SyncEmit {
  TestingNewStateCubit() : super(TestingNewStateState.initial());
}
