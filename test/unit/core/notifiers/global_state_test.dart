import 'package:flutter_test/flutter_test.dart';
import 'package:itargs/core/notifiers/global_state.dart';

void main() {
  group('GlobalStates', () {
    test('Initial state should have correct values', () {
      final globalState = GlobalStates<int>.initial();
      expect(globalState.status, equals(Status.initial));
      expect(globalState.isSuccess, isFalse);
      expect(globalState.isLoading, isFalse);
      expect(globalState.isFailed, isFalse);
      expect(globalState.getData(), isNull);
      expect(globalState.getError(), isNull);
    });

    test('Success state should have correct values', () {
      const data = 42;
      final globalState = GlobalStates<int>.success(data);
      expect(globalState.status, equals(Status.success));
      expect(globalState.isSuccess, isTrue);
      expect(globalState.isLoading, isFalse);
      expect(globalState.isFailed, isFalse);
      expect(globalState.getData(), equals(data));
      expect(globalState.getError(), isNull);
    });

    test('Fail state should have correct values', () {
      const error = 'Some error message';
      final globalState = GlobalStates<int>.fail(error);
      expect(globalState.status, equals(Status.fail));
      expect(globalState.isSuccess, isFalse);
      expect(globalState.isLoading, isFalse);
      expect(globalState.isFailed, isTrue);
      expect(globalState.getData(), isNull);
      expect(globalState.getError(), equals(error));
    });

    test('Loading state should have correct values', () {
      final globalState = GlobalStates<int>.loading();
      expect(globalState.status, equals(Status.loading));
      expect(globalState.isSuccess, isFalse);
      expect(globalState.isLoading, isTrue);
      expect(globalState.isFailed, isFalse);
      expect(globalState.getData(), isNull);
      expect(globalState.getError(), isNull);
    });

    test('when() method should work correctly', () {
      const data = 42;
      const error = 'Some error message';

      final initialResult = GlobalStates<int>.initial().when(
        initial: () => 'Initial',
        data: (data) => 'Data: $data',
        loading: () => 'Loading',
        error: (error) => 'Error: $error',
      );

      final successResult = GlobalStates<int>.success(data).when(
        initial: () => 'Initial',
        data: (data) => 'Data: $data',
        loading: () => 'Loading',
        error: (error) => 'Error: $error',
      );

      final failResult = GlobalStates<int>.fail(error).when(
        initial: () => 'Initial',
        data: (data) => 'Data: $data',
        loading: () => 'Loading',
        error: (error) => 'Error: $error',
      );

      final loadingResult = GlobalStates<int>.loading().when(
        initial: () => 'Initial',
        data: (data) => 'Data: $data',
        loading: () => 'Loading',
        error: (error) => 'Error: $error',
      );

      expect(initialResult, equals('Initial'));
      expect(successResult, equals('Data: $data'));
      expect(failResult, equals('Error: $error'));
      expect(loadingResult, equals('Loading'));
    });
  });

  group('Status', () {
    test('when() method should work correctly', () {
      final initialResult = Status.initial.when(
        initial: () => 'Initial',
        success: () => 'Success',
        fail: () => 'Fail',
        loading: () => 'Loading',
      );

      final successResult = Status.success.when(
        initial: () => 'Initial',
        success: () => 'Success',
        fail: () => 'Fail',
        loading: () => 'Loading',
      );

      final failResult = Status.fail.when(
        initial: () => 'Initial',
        success: () => 'Success',
        fail: () => 'Fail',
        loading: () => 'Loading',
      );

      final loadingResult = Status.loading.when(
        initial: () => 'Initial',
        success: () => 'Success',
        fail: () => 'Fail',
        loading: () => 'Loading',
      );

      expect(initialResult, equals('Initial'));
      expect(successResult, equals('Success'));
      expect(failResult, equals('Fail'));
      expect(loadingResult, equals('Loading'));
    });
  });
}
