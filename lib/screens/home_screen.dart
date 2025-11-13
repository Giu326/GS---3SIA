import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 237, 243), // branco/lilás claro
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 120, 89, 139),
        elevation: 2,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.self_improvement,
                size: 60, color: Color.fromARGB(255, 252, 251, 252)),
            const Spacer(),
            const Text(
              'MoodTrack',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
                letterSpacing: 1.2,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Como você está se sentindo hoje?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 120, 89, 139),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _MoodIcon(icon: Icons.sentiment_very_dissatisfied, color: Colors.redAccent, label: 'Triste'),
                _MoodIcon(icon: Icons.sentiment_neutral, color: Colors.amber, label: 'Neutro'),
                _MoodIcon(icon: Icons.sentiment_satisfied_alt, color: Colors.lightGreen, label: 'Feliz'),
              ],
            ),

            const SizedBox(height: 50),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 120, 89, 139),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              label: const Text('Diário de humor',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, '/chart');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 120, 88, 139),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              label: const Text('Ações para melhorar o humor',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, '/tips');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _MoodIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const _MoodIcon({
    required this.icon,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color, size: 32),
        ),
        const SizedBox(height: 8),
        Text(label,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87)),
      ],
    );
  }
}
