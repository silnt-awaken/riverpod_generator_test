// Importing necessary packages and files

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod_generator_test/chat_page_controller.dart';
import 'package:riverpod_generator_test/chat_page_state.dart';
import 'package:riverpod_generator_test/home_page_controller.dart';
import 'package:riverpod_generator_test/home_page_state.dart';
import 'package:riverpod_generator_test/models.dart';
import 'package:riverpod_generator_test/providers.dart';
import 'package:riverpod_generator_test/repositories.dart';
import 'package:riverpod_generator_test/sample.dart';
import 'package:riverpod_generator_test/whatever_controller.dart';

class Listener<T> extends Mock {
  void call(T? previous, T next);
}

void main() {
  group('providers test samples', () {
    setUp(() {
      registerFallbackValue(
          const AsyncData<ChatPageState>(ChatPageState(chat: '')));
      registerFallbackValue(MockUserRepository());
      registerFallbackValue(Future<String?>(() => null));
      registerFallbackValue(const AsyncData<int>(0));
    });

    test('set up real home page controller', () async {
      final container = ProviderContainer();
      final awaitedName = await container
          .read(homePageControllerProvider('').notifier)
          .getUser();
      expect(awaitedName, '');

      // generator code coverage below

      final newBehaviorProvider = homePageControllerProvider('test');
      homePageControllerProvider.getProviderOverride(newBehaviorProvider);
      expect(
          homePageControllerProvider.getProviderOverride(newBehaviorProvider),
          newBehaviorProvider);

      final dependencies = homePageControllerProvider.dependencies;
      expect(dependencies, null);

      final allTransitiveDependencies =
          homePageControllerProvider.allTransitiveDependencies;
      expect(allTransitiveDependencies, null);

      final name = homePageControllerProvider.name;
      expect(name, 'homePageControllerProvider');

      final provider1 = HomePageControllerProvider('code');
      final provider2 = HomePageControllerProvider('code');
      final provider3 = HomePageControllerProvider('different_code');

      expect(provider1, equals(provider2));

      expect(provider1.hashCode, equals(provider2.hashCode));

      expect(provider1, isNot(equals(provider3)));

      expect(provider1.hashCode, isNot(equals(provider3.hashCode)));
    });

    test('Test the real chat page controller', () async {
      final container = ProviderContainer();

      expectLater(
          container.read(chatPageControllerProvider().notifier).build(),
          emitsInOrder([
            const ChatPageState(chat: 'Chat 0'),
            const ChatPageState(chat: 'Chat 1'),
          ]));

      // generator code coverage below

      final newBehaviorProvider = chatPageControllerProvider(code: 'test');
      chatPageControllerProvider.getProviderOverride(newBehaviorProvider);
      expect(
          chatPageControllerProvider.getProviderOverride(newBehaviorProvider),
          newBehaviorProvider);

      final dependencies = chatPageControllerProvider.dependencies;
      expect(dependencies, null);

      final allTransitiveDependencies =
          chatPageControllerProvider.allTransitiveDependencies;
      expect(allTransitiveDependencies, null);

      final name = chatPageControllerProvider.name;
      expect(name, 'chatPageControllerProvider');

      final provider1 = ChatPageControllerProvider(code: '1');
      final provider2 = ChatPageControllerProvider(code: '1');
      final provider3 = ChatPageControllerProvider(code: '2');

      expect(provider1, equals(provider2));

      expect(provider1.hashCode, equals(provider2.hashCode));

      expect(provider1, isNot(equals(provider3)));

      expect(provider1.hashCode, isNot(equals(provider3.hashCode)));
    }, timeout: const Timeout(Duration(seconds: 5)));

    test('test the models and state', () {
      const chatState = ChatPageState(chat: 'Chat 0');
      final modifiedChatState = chatState.copyWith(chat: null);
      expect(modifiedChatState.chat, equals(chatState.chat));
      final homeState = HomePageState(user: user);
      final modifiedHomeState = homeState.copyWith(user: () => null);
      expect(modifiedHomeState.user, isNot(homeState.user));

      final userJson =
          User.fromJson({'id': '1', 'name': 'John Doe', 'email': 'aa@.com'});

      expect(userJson, isA<User>());

      for (var element in homeState.props) {
        expect(element, isNotNull);
      }
    });

    test('override the name provider', () async {
      final container = ProviderContainer(
          overrides: [nameProvider(null).overrideWith((ref) => 'Jane Doe')]);

      expect(container.read(nameProvider(null)).value, 'Jane Doe');

      final name = await container.read(nameProvider(null).future);
      expect(name, isNotNull);
    });

    test('listen to a mocked listener based on provider changes', () async {
      final container = ProviderContainer();

      final listener = Listener<Future<String?>>();

      container.listen(nameProvider(null).future, listener,
          fireImmediately: true);

      verify(() => listener(any(that: null), any(that: isA<Future<String?>>())))
          .called(1);
    });

    test(
        'listen to a mocked chat page controller based on provider changes from the stream',
        () async {
      final container = ProviderContainer();

      final listener = Listener<AsyncValue<int>>();

      container.listen(mockWhateverControllerProvider(), listener,
          fireImmediately: true);

      await Future.delayed(const Duration(seconds: 4));

      final stateVal =
          container.read(mockWhateverControllerProvider().notifier).state;

      expect(stateVal, isA<AsyncData<int>>());

      verifyInOrder([
        () => listener(any(that: null), any(that: isA<AsyncLoading<int>>())),
        () => listener(any(that: isA<AsyncLoading<int>>()),
            any(that: isA<AsyncData<int>>())),
        () => listener(
            any(that: isA<AsyncData<int>>()), any(that: isA<AsyncData<int>>())),
        () => listener(
            any(that: isA<AsyncData<int>>()), any(that: isA<AsyncData<int>>())),
      ]);
    }, timeout: const Timeout(Duration(seconds: 5)));
  });
}

class MockUserRepository extends Mock implements UserRepository {}
