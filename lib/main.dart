
import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Praktikan',
      theme: ThemeData(
        scaffoldBackgroundColor:
        Colors.tealAccent.shade100,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String nim = '20240801185';

    final int duaDigitTerakhir =
    int.parse(nim.substring(nim.length - 2));

    final int skorAktivitas =
        duaDigitTerakhir + 50;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Praktikan'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ProfileCard(
            nama: 'Meylia Nilamsari',
            nim: nim,
            hobi: 'Hiking',
            skorAktivitas: skorAktivitas,
          ),
        ),
      ),
    );
  }
}
