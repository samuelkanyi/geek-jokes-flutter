import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geek_jokes_flutter/l10n/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geek_jokes_flutter/model/joke.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

@riverpod
String timeInUtc(TimeInUtcRef ref) {
  return DateTime.now().toUtc().toString();
}

@riverpod
Future<Joke> getJoke(GetJokeRef ref) async {
  final response = await http
      .get(Uri.parse('https://geek-jokes.sameerkumar.website/api?format=json'));
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return Joke.fromJson(json);
}

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final AsyncValue<Joke> joke = ref.watch(getJokeProvider);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Geek Jokes'),
          ),
          body: Center(
            child: joke.when(
              data: (joke) => Text(joke.joke),
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text(error.toString()),
            ),
          ),
        );
      },
    );
  }
}
